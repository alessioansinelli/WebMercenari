﻿using System;
using System.Collections.Generic;
using System.Web;
using Business;
using System.Drawing;
using Mercenari.Data;
using System.Data;
using System.IO;
using ImageResizer;

namespace Gestione
{

	/// <summary>
	/// Summary description for Immagini
	/// </summary>
	public class Immagini
{

	private DataLayer DAL = new DataLayer();
	private IDbCommand dbC;

	public Immagini()
	{
	}


	public int GetNewID()
	{

		// recupero l'ID dell'immagine, per salvare il file.

		dbC = DAL.CreateCommand();


		dbC.CommandText = (sqlGetLastId);
		int IdImmagine = int.Parse(DAL.ExecuteScalar(dbC).ToString()) + 1;

		return IdImmagine;
	}

		/* Delete photo reference */
	public bool Delete(int idfoto, int parentObjectID)
	{
		bool bret = false;

				Oggetti.OggettoFoto oFoto = this.Get(idfoto, parentObjectID);

				/* delete from tImage */
		dbC = DAL.CreateCommand();
		dbC.CommandText = (sqlDeleteSingleObject);
		dbC.Parameters.Add(DAL.CreatePar("@tImageID", idfoto));

		bret = (DAL.Execute(dbC) > 0);

				/* Delete from tRelatedItem */
				dbC = DAL.CreateCommand();
				dbC.CommandText = (sqlDeleteFromRelated);
				dbC.Parameters.Add(DAL.CreatePar("@tImageID", idfoto));
				dbC.Parameters.Add(DAL.CreatePar("@tObjectParentId", parentObjectID));

				bret = DAL.Execute(dbC) > 0;
		
		// UPDATE NEW ORDER
		dbC = DAL.CreateCommand();
				dbC.CommandText = "update tRelatedItem set tRelatedItemOrder=tRelatedItemOrder-1 where tRelatedItemOrder > @NumOrder AND tObjectId=@tImageParentID and tObjectRelatedType = 1";
				//dbC.CommandText = ("UPDATE tImage SET tImageNumOrder = tImageNumOrder-1 " +
				//        " WHERE tImageNumOrder > @NumOrder AND tObjectID=@tImageParentID;");
		dbC.Parameters.Add(DAL.CreatePar("@NumOrder", oFoto.NumOrder));
				dbC.Parameters.Add(DAL.CreatePar("@tImageParentID", parentObjectID));

				// check if present related item for other object don't delete it from filesystem	
				// DELETE IMAGE FROM FILE SYSTEM
				this.DeleteFromFileSystem(oFoto);

		DAL.Execute(dbC);

		return bret;
	}

	private void DeleteFromFileSystem(Oggetti.OggettoFoto oFoto)
	{
		string PathFolder = HttpContext.Current.Server.MapPath(Business.ConstWrapper.CartellaFoto + oFoto.Percorso);
		if (System.IO.Directory.Exists(PathFolder))
		{
			if (System.IO.Directory.GetDirectories(PathFolder).Length > 0)
			{
				foreach (string sFile in System.IO.Directory.GetFiles(PathFolder))
				{
					System.IO.File.Delete(sFile);
				}
			}
			else
			{
				System.IO.Directory.Delete(PathFolder, true);
			}
		}
	}

	public bool Add(Oggetti.OggettoFoto oFoto)
	{

		dbC = DAL.CreateCommand();
		dbC.CommandText = (sqlInsertImage);
				dbC.CommandType = CommandType.StoredProcedure;

		//tImageID, tImageTitolo, tImageSottoTitolo, tImagePercorso, tImageEstensione, tImageDataInserimento, tObjectID, tImageNumOrder
		dbC.Parameters.Add(DAL.CreatePar("@tImageID", oFoto.ID));
		dbC.Parameters.Add(DAL.CreatePar("@tImageTitolo", oFoto.Titolo));
		dbC.Parameters.Add(DAL.CreatePar("@tImageSottoTitolo", oFoto.SottoTitolo));
		dbC.Parameters.Add(DAL.CreatePar("@tImagePercorso", oFoto.Percorso));
		dbC.Parameters.Add(DAL.CreatePar("@tImageEstensione", oFoto.Estensione));
		dbC.Parameters.Add(DAL.CreatePar("@tImageDataInserimento", oFoto.DataInserimento));
		dbC.Parameters.Add(DAL.CreatePar("@tObjectID", oFoto.ParentObjectID));
		dbC.Parameters.Add(DAL.CreatePar("@tImageNumOrder", oFoto.NumOrder));

		DAL.Execute(dbC);

		dbC = DAL.CreateCommand();
		dbC.CommandText = "update tRelatedItem set tRelatedItemOrder=tRelatedItemOrder+1 where tObjectRelatedId <> " + oFoto.ID.ToString() + " AND tObjectId="+ (int)oFoto.ParentObjectID +" and tObjectRelatedType = 2";

		// dbC.CommandText = ("update tImage SET tImageNumOrder = tImageNumOrder + 1 " +
		// " WHERE tImageID <> " + oFoto.ID.ToString() + " and tObjectID=" + (int)oFoto.ParentObjectID);

		DAL.Execute(dbC);


		return true;
	}

	public int SalvaImmaginePost(byte[] oImgSpedita,string FileName, Oggetti.OggettoFoto oFoto, int ID, out string percorso, out string estensione)
	{
		try
		{
			int iRetVal = 0;
			estensione = FileName.Substring(FileName.LastIndexOf("."), FileName.Length - FileName.LastIndexOf("."));

			// path foto
			string pathdef = "";
			string pathfoto = ID.ToString();
			if (pathfoto.Length % 2 != 0)
			{
				pathfoto = "0" + pathfoto;
			}

			for (int i = 0; i < pathfoto.Length / 2; i++)
			{
				pathdef = pathdef + pathfoto.Substring(i * 2, 2) + "/";
			}

			percorso = pathdef;

			if (oImgSpedita != null)
			{
				// procedo con il ridimensionamento del file e il salvataggio sul db e sul server.

				// controllo la dimensione dell'immagine
				if (oImgSpedita.Length > 0)
				{
					// controllo il contentype
					// SALVO L'IMMAGINE SUL'DISCO E SUL DATABASE
					string NomeFile = string.Empty;

										// Carico lo stream di byte


					// creo l'immagine
					System.Drawing.Image oImage = System.Drawing.Image.FromStream(new MemoryStream(oImgSpedita));

					double imgWidth = oImage.Width;
					double imgHeight = oImage.Height;

					// proporzione tra larghezza e altezza
					double ProporzioneImg = (double)imgWidth / (double)imgHeight;


					// da sostituire con chiave nel web.config
					string PercorsoFile = HttpContext.Current.Server.MapPath(ConstWrapper.CartellaFoto) + pathdef;
					//NomeFile = IdFile + "_w1" + EstensioneFile;

					List<string[]> oListDimensioni = new List<string[]>();

					for (var iRow = 1; iRow < 13; iRow++)
					{
						double width = 0;
						double height;

						if (ProporzioneImg > 1)
						{
							/* Larghezza maggiore altezza */
							width = (iRow * 80) - 20;
							height = Math.Ceiling(width / ProporzioneImg);
						}
						else
						{
							width = (iRow * 80) - 20;
							height = Math.Ceiling(width / ProporzioneImg);
						}

						if (!Directory.Exists(PercorsoFile))
						{
							Directory.CreateDirectory(PercorsoFile);
						}

						//Let the image builder add the correct extension based on the output file type
						ImageBuilder.Current.Build(oImage, PercorsoFile + "\\" + "w" + iRow, new ResizeSettings(string.Format("width={0}&height={1}&format={2}", width, height, estensione)), false, true);
					}

						// salvo l'immagine ricevuta con le dimensioni originali
						var fs = File.Create(PercorsoFile + "\\orig" + estensione.ToLower(), oImgSpedita.Length);
						fs.Write(oImgSpedita, 0, oImgSpedita.Length);

					iRetVal = 1;

				}
			}
			return iRetVal;
		}
		catch (Exception Ex)
		{
			// errore! devo dare il messaggio
			throw new Exception("Errore durante il salvataggio dell\'immagine sul server::" + Ex.Message);
		}
	}

	public bool SalvaSuFileSystem(string Cartella, string NomeFile, System.Drawing.Image oImage, int Width, int Height)
	{
		try
		{

			Bitmap bitmap = new Bitmap(oImage);

			Bitmap newBitmap;
			// create the output bitmap
			if (bitmap.Width > Width)
			{
				newBitmap = new Bitmap((int)Width, (int)Height);
			}
			else
			{
				newBitmap = bitmap;
			}

			// create a Graphics object to draw into it
			Graphics g = Graphics.FromImage(newBitmap);
			g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;

			// draw it with the new size
			g.DrawImage(bitmap, 0, 0, (int)Width, (int)Height);


			if (!System.IO.Directory.Exists(Cartella))
			{
				System.IO.Directory.CreateDirectory(Cartella);
			}
			// save the bitmap using the JPG encoder or png or gif
			newBitmap.Save(Cartella + NomeFile, System.Drawing.Imaging.ImageFormat.Jpeg);

			return true;
		}
		catch
		{
			return false;
		}
	}

	public List<Oggetti.OggettoFoto> GetAll(int ParentObjectID, int count)
	{
		List<Oggetti.OggettoFoto> retList = new List<Oggetti.OggettoFoto>();

		dbC = DAL.CreateCommand();

		if (count > 0)
		{
			dbC.CommandText = (sqlGetCountByParentId.Replace("{count}", count.ToString()));
		}
		else
		{
			dbC.CommandText = (sqlGetAllByParentId);
		}

		dbC.Parameters.Add(DAL.CreatePar("@tObjectID", ParentObjectID));
		using (IDataReader oDr = DAL.GetDataReader(dbC))
		{

			if (oDr != null)
			{
				while (oDr.Read())
				{
					Oggetti.OggettoFoto oFoto = new Oggetti.OggettoFoto();
					oFoto.FromDataReader(oDr);

					retList.Add(oFoto);

				}
				oDr.Close();
			}
		}

		return retList;
	}

	public bool UpdateNumOrder(int ID, string Direction, int ParentID)
	{
		bool bRet = false;

				Oggetti.OggettoFoto oFoto = this.Get(ID, ParentID);

		int CurrentNumOrder = oFoto.NumOrder;
		int MaxNewOrder = GetLastNumOrder(oFoto.ParentObjectID);

		dbC = DAL.CreateCommand();

				//dbC.CommandText = ("UPDATE tRelatedItem set tRelatedItemOrder=@NewNumOrder where tObjectRelatedId=@Id and tObjectId="+oFoto.ParentObjectID);

				dbC.CommandText = ("UPDATE tRelatedItem set tRelatedItemOrder=@NewNumOrder where tObjectRelatedId=@Id and tObjectId=" + oFoto.ParentObjectID);

		if ((Direction == "UP") && (CurrentNumOrder != 1))
		{

			dbC.Parameters.Add(DAL.CreatePar("@NewNumOrder", CurrentNumOrder - 1));
			dbC.Parameters.Add(DAL.CreatePar("@Id", oFoto.ID));

			DAL.Execute(dbC);

			dbC = DAL.CreateCommand();
						//dbC.CommandText = "UPDATE tRelatedItem set tRelatedItemOrder=" + CurrentNumOrder + " where tObjectRelatedId <> " + oFoto.ID + " and tRelatedItemOrder=" + (CurrentNumOrder - 1) + " and tObjectID=" + Convert.ToInt32(oFoto.ParentObjectID);
						dbC.CommandText = "UPDATE tRelatedItem set tRelatedItemOrder=" + CurrentNumOrder + " where tObjectRelatedId <> " + oFoto.ID + " and tRelatedItemOrder=" + (CurrentNumOrder - 1) + " and tObjectID=" + Convert.ToInt32(oFoto.ParentObjectID);


			DAL.Execute(dbC);
		}
		else if ((Direction == "DOWN") && (CurrentNumOrder != MaxNewOrder - 1))
		{

			dbC.Parameters.Add(DAL.CreatePar("@NewNumOrder", CurrentNumOrder + 1));
			dbC.Parameters.Add(DAL.CreatePar("@Id", oFoto.ID));

			DAL.Execute(dbC);

			dbC = DAL.CreateCommand();
			dbC.CommandText = ("UPDATE tRelatedItem set tRelatedItemOrder=" + CurrentNumOrder + " where tObjectRelatedId <> " + oFoto.ID + " and tRelatedItemOrder=" + (CurrentNumOrder + 1) + " and tObjectID=" + Convert.ToInt32(oFoto.ParentObjectID));			
			//dbC.CommandText = ("UPDATE tRelatedItem set tRelatedItemOrder=" + CurrentNumOrder + " where tObjectRelatedId <> " + oFoto.ID + " and tRelatedItemOrder=" + (CurrentNumOrder + 1) + " and tObjectID=" + Convert.ToInt32(oFoto.ParentObjectID));

			DAL.Execute(dbC);

		}

		return bRet;
	}

	private Oggetti.OggettoFoto Get(int ID, int ParentID)
	{
		Oggetti.OggettoFoto oFoto = new Oggetti.OggettoFoto();

		dbC = DAL.CreateCommand();

		dbC.CommandText = (sqlGetFromId);
		dbC.Parameters.Add(DAL.CreatePar("@tImageID", ID));
				dbC.Parameters.Add(DAL.CreatePar("@tObjectID", ParentID));

		using (IDataReader oDr = DAL.GetDataReader(dbC))
		{

			if (oDr != null)
			{
				while (oDr.Read())
				{
					oFoto.FromDataReader(oDr);
				}
				oDr.Close();
			}
		}

		return oFoto;
	}

	private int GetLastNumOrder(int tParentObjectID)
	{
		int iRet = 0;

		dbC = DAL.CreateCommand();
		dbC.CommandText = (sqlGetLastNumOrder);

		dbC.Parameters.Add(DAL.CreatePar("@tObjectID", tParentObjectID));

		try
		{
			iRet = (int.Parse(DAL.ExecuteScalar(dbC).ToString())) + 1;
		}
		catch
		{
			iRet = 1;
		}

		return iRet;
	}

	public const string sqlGetLastId = "SELECT Max(tImageID) AS MaxDitImageID FROM tImage";

		public const string sqlInsertImage = "insertImage"; 
				/*
				 *	
						"INSERT INTO tImage (tImageID, tImageTitolo, tImageSottoTitolo, tImagePercorso, tImageEstensione, tImageDataInserimento, tObjectID, tImageNumOrder)" +
						" VALUES " +
						" ( @tImageID, @tImageTitolo, @tImageSottoTitolo, @tImagePercorso, @tImageEstensione, @tImageDataInserimento, @tObjectID, @tImageNumOrder ) ";
				 * 
				 */

		private const string sqlGetAllByParentId = "SELECT [tImageID] " + 
	  ",[tImageTitolo] " +
	  ",[tImageSottoTitolo] " +
	  ",[tImagePercorso] " +
	  ",[tImageEstensione] " +
	  ",[tImageDataInserimento] " +
	  ",r.tObjectId " +
	  ",r.tRelatedItemOrder as tImageNumOrder " +
			"FROM [tImage] i  " +
			"INNER JOIN tRelatedItem r " +
			"ON r.tObjectRelatedId = i.tImageID where r.tObjectId = @tObjectID order by r.tRelatedItemOrder";

		private const string sqlGetCountByParentId = "SELECT TOP {count} [tImageID]" + 
			",[tImageTitolo] " +
			",[tImageSottoTitolo] " +
			",[tImagePercorso] " +
			",[tImageEstensione] " +
			",[tImageDataInserimento] " +
			",r.tObjectId " +
			",r.tRelatedItemOrder as tImageNumOrder " +
			"FROM [tImage] i  " +
			"INNER JOIN tRelatedItem r " +
			"ON r.tObjectRelatedId = i.tImageID where r.tObjectId = @tObjectID order by r.tRelatedItemOrder";

	private const string sqlGetFromId = "SELECT [tImageID] " +
	  ",[tImageTitolo] " +
	  ",[tImageSottoTitolo] " +
	  ",[tImagePercorso] " +
	  ",[tImageEstensione] " +
	  ",[tImageDataInserimento] " +
	  ",r.tObjectId " +
	  ",r.tRelatedItemOrder as tImageNumOrder " +
			"FROM [tImage] i  " +
			"INNER JOIN tRelatedItem r " +
			"ON r.tObjectRelatedId = i.tImageID " +
			"WHERE i.tImageID = @tImageID " +
			"AND i.tObjectID = @tObjectID";

		private const string sqlGetLastNumOrder = "select top 1 tRelatedItemOrder from tRelatedItem r where r.tObjectId = @tObjectID and tObjectRelatedType = 2 order by r.tRelatedItemOrder desc";

	private const string sqlDeleteSingleObject = "DELETE FROM tImage where tImageID=@tImageID";

		private const string sqlDeleteFromRelated = "delete from tRelatedItem where tObjectRelatedId=@tImageID and tObjectId=@tObjectParentId";

}

}
