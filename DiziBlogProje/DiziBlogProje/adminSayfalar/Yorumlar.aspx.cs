using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziBlogProje.Entitiy;


namespace DiziBlogProje.adminSayfalar
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        DiziBlogDBEntities db = new DiziBlogDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var yorumlar = (from x in db.TBL_YORUM
                            select new
                            {
                                x.YorumId,
                                x.KullaniciAdi,
                                x.Yorumİcerik,
                                x.TBL_BLOG.BlogBaslik

                            }).ToList();
            Repeater1.DataSource = yorumlar;
            Repeater1.DataBind();
        }
    }
}