using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziBlogProje.Entitiy;

namespace DiziBlogProje.adminSayfalar
{
    public partial class BlogSil : System.Web.UI.Page
    {
        DiziBlogDBEntities db = new DiziBlogDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["BlogId"]);
            var blog = db.TBL_BLOG.Find(x);
            db.TBL_BLOG.Remove(blog);
            db.SaveChanges();
            Response.Redirect("Bloglar.aspx");

        }
    }
}