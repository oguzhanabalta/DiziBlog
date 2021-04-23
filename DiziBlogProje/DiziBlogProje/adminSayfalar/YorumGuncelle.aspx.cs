using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziBlogProje.Entitiy;


namespace DiziBlogProje.adminSayfalar
{
    public partial class YorumGuncelle : System.Web.UI.Page
    {
        DiziBlogDBEntities db = new DiziBlogDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["YorumId"]);

            if (Page.IsPostBack == false)
            {
                var deger = db.TBL_YORUM.Find(y);
                TextBox1.Text = deger.TBL_BLOG.BlogBaslik;
                TextBox2.Text = deger.KullaniciAdi;
                TextBox4.Text = deger.Yorumİcerik;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["YorumId"]);
            var blog = db.TBL_YORUM.Find(y);
            blog.Yorumİcerik = TextBox4.Text;
            blog.KullaniciAdi = TextBox2.Text;
            db.SaveChanges();
            Response.Redirect("Yorumlar.aspx");
        }
    }
}