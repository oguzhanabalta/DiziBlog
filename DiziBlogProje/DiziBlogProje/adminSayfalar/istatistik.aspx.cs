using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziBlogProje.Entitiy;


namespace DiziBlogProje.adminSayfalar
{
    public partial class istatistik : System.Web.UI.Page
    {
        DiziBlogDBEntities db = new DiziBlogDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = db.TBL_BLOG.Count().ToString();
            Label2.Text = db.TBL_YORUM.Count().ToString();
            Label3.Text = db.TBL_BLOG.Where(x => x.BlogTur == 2).Count().ToString();
            Label4.Text = db.TBL_BLOG.Where(x => x.BlogTur == 1).Count().ToString();
            Label5.Text = db.TBL_BLOG.Where(x => x.BlogTur == 3).Count().ToString();
            Label6.Text = db.TBL_BLOG.Where(x => x.BlogTur == 4).Count().ToString();
            Label7.Text = db.TBL_BLOG.Where(y => y.BlogId == (db.TBL_YORUM.GroupBy(x => x.YorumBlog).OrderByDescending(x => x.Count()).Select(z => z.Key).FirstOrDefault())).Select(k => k.BlogBaslik).FirstOrDefault();
        }
    }
}