using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziBlogProje.Entitiy;

namespace DiziBlogProje
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        DiziBlogDBEntities db = new DiziBlogDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["KategoriId"]);

            var bloglar = db.TBL_BLOG.Where(x => x.BlogKategori == id).ToList();
            Repeater1.DataSource = bloglar;
            Repeater1.DataBind();

            var kategoriler = db.TBL_KATEGORI.ToList();
            Repeater2.DataSource = kategoriler;
            Repeater2.DataBind();

            var bloglar2 = db.TBL_BLOG.ToList();
            Repeater3.DataSource = bloglar2;
            Repeater3.DataBind();

            
        }
    }
}