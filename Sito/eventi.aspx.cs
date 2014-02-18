using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _news : System.Web.UI.Page
{

	public string TitoloHomePage = "";
	public string SottoTitoloHomePage = "";
	public string TestoHomePage = "";
	public string ImmagineHomePage = "";

	protected void Page_Load(object sender, EventArgs e)
	{

		List<Oggetti.Oggetto> oOggetti = new List<Oggetti.Oggetto>();
        oOggetti = ElencoNotizie;

		repappuntamenti.DataSource = oOggetti;
        repappuntamenti.DataBind();

	}

	public string getUrlPhoto(Oggetti.OggettoFoto[] oFoto, string Dimensione) {
		string sret = "";
		if (oFoto.Length > 0) {
			sret = "<img src=\"" + ResolveUrl(Business.ConstWrapper.CartellaFoto + oFoto[0].Percorso + Dimensione + oFoto[0].Estensione + "\" alt=\"" + oFoto[0].Titolo + "\" />");
			
		}

		return sret;
	}

    
    public List<Oggetti.Oggetto> ElencoNotizie
    {
        get
        {
            if (HttpContext.Current.Cache["ElencoAppuntamenti"] != null)
            {
                return (List<Oggetti.Oggetto>)HttpContext.Current.Cache["ElencoAppuntamenti"];
            }
            else
            {
                Notizie oNotizie = new Notizie(TipoOggetto.Eventi);
                List<Oggetti.Oggetto> oOggetti = new List<Oggetti.Oggetto>();
                oOggetti = oNotizie.GetAll(0, true,1);
                ElencoNotizie = oOggetti;
                return oOggetti;
            }
        }
        set { HttpContext.Current.Cache["ElencoAppuntamenti"] = value; }
    }    
}
