using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziBlogProje.Entitiy;


namespace DiziBlogProje
{
    public partial class BlogDetay : System.Web.UI.Page
    {
        DiziBlogDBEntities db = new DiziBlogDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BlogId"]);
            var blog = db.TBL_BLOG.Where(x => x.BlogId == id).ToList();

            Repeater1.DataSource = blog;
            Repeater1.DataBind();

            var yorumlar = db.TBL_YORUM.Where(x => x.YorumBlog == id).ToList();

            Repeater2.DataSource = yorumlar;
            Repeater2.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BlogId"]);
            TBL_YORUM t = new TBL_YORUM();
            t.KullaniciAdi = TextBox1.Text;
            t.Mail = TextBox2.Text;
            t.Yorumİcerik = TextBox3.Text;
            t.YorumBlog = id;
            db.TBL_YORUM.Add(t);
            db.SaveChanges();
            Response.Redirect("BlogDetay.aspx?BlogId=" + id);
            
        }
    }
}