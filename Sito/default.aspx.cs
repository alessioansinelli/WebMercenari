using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _default : System.Web.UI.Page
{

	public string TitoloHomePage = "";
	public string SottoTitoloHomePage = "";
	public string TestoHomePage = "";
	public string ImmagineHomePage = "";

	protected void Page_Load(object sender, EventArgs e)
	{
		// popolo la notizia centrale dell'home page
        List<Oggetti.Oggetto> oOggetti = new List<Oggetti.Oggetto>();
        //oOggetti = oNotizie.GetAll(1,true);
        oOggetti = NotiziaCentraleHomePage;

        if (oOggetti.Count > 0)
		{
			TitoloHomePage = oOggetti[0].Titolo;
			SottoTitoloHomePage = oOggetti[0].SottoTitolo;
			TestoHomePage = oOggetti[0].Testo;
			ImmagineHomePage = ResolveUrl(Business.ConstWrapper.CartellaFoto + oOggetti[0].Foto[0].Percorso + "w6" + oOggetti[0].Foto[0].Estensione);
		}

		oOggetti = new List<Oggetti.Oggetto>();
        oOggetti = NotiziePrimoPiano;

		repnews.DataSource = oOggetti;
		repnews.DataBind();

        oOggetti = new List<Oggetti.Oggetto>();
        oOggetti = Eventi;
        repEventi.DataSource = oOggetti;
        repEventi.DataBind();

        oOggetti = new List<Oggetti.Oggetto>();
        oOggetti = Photogallery;
		repgallery.DataSource = oOggetti;
		repgallery.DataBind();


	}

	public string getUrlPhoto(Oggetti.OggettoFoto[] oFoto, string Dimensione) {
		string sret = "";
		if (oFoto.Length > 0) {
			sret = "<img src=\"" + ResolveUrl(Business.ConstWrapper.CartellaFoto + oFoto[0].Percorso + Dimensione + oFoto[0].Estensione + "\" alt=\"" + oFoto[0].Titolo + "\" />");
			
		}

		return sret;
	}

    public List<Oggetti.Oggetto> NotiziaCentraleHomePage
    {
        get
        {
            if (HttpContext.Current.Cache["NotiziaCentraleHomePage"] != null)
            {
                return (List<Oggetti.Oggetto>)HttpContext.Current.Cache["NotiziaCentraleHomePage"];
            }
            else {
                TipoOggetto[] OtipoOggetto = new TipoOggetto[1];
                OtipoOggetto[0] = TipoOggetto.Homepage;
                Notizie oNotizie = new Notizie(OtipoOggetto);
                List<Oggetti.Oggetto> oOggetti = new List<Oggetti.Oggetto>();
                oOggetti = oNotizie.GetAll(1, true,1);
                NotiziaCentraleHomePage = oOggetti;
                return oOggetti;
            }
        }
        set { HttpContext.Current.Cache["NotiziaCentraleHomePage"] = value; }
    }

    public List<Oggetti.Oggetto> NotiziePrimoPiano
    {
        get
        {
            if (HttpContext.Current.Cache["NotiziePrimoPiano"] != null)
            {
                return (List<Oggetti.Oggetto>)HttpContext.Current.Cache["NotiziePrimoPiano"];
            }
            else
            {
                TipoOggetto[] OtipoOggetto = new TipoOggetto[2];
                OtipoOggetto[0] = TipoOggetto.Eventi;
                OtipoOggetto[1] = TipoOggetto.News;

                Notizie oNotizie = new Notizie(OtipoOggetto);
                List<Oggetti.Oggetto> oOggetti = new List<Oggetti.Oggetto>();
                oOggetti = oNotizie.GetAll(5, true,1);
                NotiziePrimoPiano = oOggetti;
                return oOggetti;
            }
        }
        set { HttpContext.Current.Cache["NotiziePrimoPiano"] = value; }
    }

    public List<Oggetti.Oggetto> Photogallery
    {
        get
        {
            if (HttpContext.Current.Cache["Photogallery"] != null)
            {
                return (List<Oggetti.Oggetto>)HttpContext.Current.Cache["Photogallery"];
            }
            else
            {
                TipoOggetto[] OtipoOggetto = new TipoOggetto[1];
                OtipoOggetto[0] = TipoOggetto.Photogallery;
                Notizie oNotizie = new Notizie(OtipoOggetto);
                List<Oggetti.Oggetto> oOggetti = new List<Oggetti.Oggetto>();
                oOggetti = oNotizie.GetAll(5, true,1);
                Photogallery = oOggetti;
                return oOggetti;
            }
        }
        set { HttpContext.Current.Cache["Photogallery"] = value; }
    }

    public List<Oggetti.Oggetto> Eventi
    {
        get
        {
            if (HttpContext.Current.Cache["EventiHome"] != null)
            {
                return (List<Oggetti.Oggetto>)HttpContext.Current.Cache["EventiHome"];
            }
            else
            {
                TipoOggetto[] OtipoOggetto = new TipoOggetto[1];
                OtipoOggetto[0] = TipoOggetto.Eventi;
                Notizie oNotizie = new Notizie(OtipoOggetto);
                List<Oggetti.Oggetto> oOggetti = new List<Oggetti.Oggetto>();
                oOggetti = oNotizie.GetAll(3, true, 1);
                Eventi = oOggetti;
                return oOggetti;
            }
        }
        set { HttpContext.Current.Cache["EventiHome"] = value; }
    }
}
