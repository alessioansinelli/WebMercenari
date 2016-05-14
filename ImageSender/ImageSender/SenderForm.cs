using System;
using System.Windows.Forms;
using System.IO;
using ImageSender.MercenariUpdater;

namespace ImageSender
{

	

	public partial class Form1 : Form
	{


        private string LblProgText = "{0} di {1} immagini caricate";

		public Form1()
		{
			InitializeComponent();
		}

		private void button1_Click(object sender, EventArgs e)
		{
			if (selectFolder.ShowDialog() == DialogResult.OK)
			{
				txtFolderImmagini.Text = selectFolder.SelectedPath;

                /* fill imagelist to charge */                
                string[] fileList = Directory.GetFiles(selectFolder.SelectedPath, "*.jpg");

                if (fileList.Length > 0)
                {
                    dgvFileList.Rows.Clear();
                    dgvFileList.Columns.Add("Image", "Immagine");

                    foreach (string s in fileList)
                    {
                        dgvFileList.Rows.Add(s.Substring(s.LastIndexOf("\\", StringComparison.Ordinal)));
                    }

                }


			}
		}

		private void button2_Click(object sender, EventArgs e)
		{
			var dirImmagini = txtFolderImmagini.Text;
			int idGallery;



			var titolo = txtTitolo.Text;
			var descrizione = txtDescription.Text;
			int.TryParse(txtID.Text, out idGallery);

			// check if folder immagini correctly filled
			if ((dirImmagini != string.Empty) && ((titolo != string.Empty) && (descrizione != string.Empty)) || (idGallery > 0))
			{
				if (Directory.Exists(dirImmagini))
				{
					// Load all Image files from folder
					string[] fileList = Directory.GetFiles(dirImmagini, "*.jpg");

					if (fileList.Length > 0)
					{

						BeService srv = new BeService();

						int iCount = 0;
						int iTotal = fileList.Length;
						progressBar1.Maximum = fileList.Length;

						foreach (string s in fileList)
						{
							FileInfo fi = new FileInfo(s);
							string fname = fi.Name;
							byte[] oImage = File.ReadAllBytes(s);

							//srv.SaveImage(fname, oImage);
							srv.SaveImage(fname, oImage, idGallery, "alessio", "molotov81");

							progressBar1.Increment(1);
                            iCount++;
                            lblProgression.Text = string.Format(LblProgText, iCount, iTotal);

							Application.DoEvents();

						}
					}
				}
			}
			else
			{
				MessageBox.Show("Attenzione, tutti i campi sono obbligatori!");
			}
		}

		private void button3_Click(object sender, EventArgs e)
		{
			BeService srv = new BeService();
			Oggetto[] oPgList = srv.PhotoGalleryList("alessio", "molotov81");

			if (oPgList.Length > 0)
			{

				dgvPhotogallery.Columns.Add("ID", "ID");
				dgvPhotogallery.Columns.Add("Titolo", "Titolo");

				foreach (Oggetto o in oPgList)
				{
					dgvPhotogallery.Rows.Add(o.ID, o.Titolo);
				}
			}
		}

		private void dgvPhotogallery_CellContentClick(object sender, DataGridViewCellEventArgs e)
		{
			//if (e.RowIndex > 0)
			//{
				string selInt = dgvPhotogallery.Rows[e.RowIndex].Cells["ID"].Value.ToString();
				txtID.Text = selInt;
			//}
		}

        private void LoadSender(object sender, EventArgs e)
        {
            lblProgression.Text = "";
        }
	}
}
