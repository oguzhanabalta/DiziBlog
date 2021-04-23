using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziBlogProje.Entitiy;


namespace DiziBlogProje.adminSayfalar
{
    public partial class YeniBlog : System.Web.UI.Page
    {
        DiziBlogDBEntities db = new DiziBlogDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var turler = (from x in db.TBL_TUR

                          select new
                          {
                              x.TurAd,
                              x.TurId

                          }).ToList();
            DropDownList1.DataSource = turler;
            DropDownList1.DataBind();

            var kategoriler = (from x in db.TBL_KATEGORI

                          select new
                          {
                              x.KategoriAd,
                              x.KategoriId

                          }).ToList();
            DropDownList2.DataSource = kategoriler;
            DropDownList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBL_BLOG t = new TBL_BLOG();
            t.BlogBaslik = TextBox1.Text;
            t.BlogTarih = DateTime.Parse(TextBox2.Text);
            t.BlogGorsel = TextBox3.Text;
            t.BlogTur = byte.Parse(DropDownList1.SelectedValue);
            t.BlogKategori = byte.Parse(DropDownList2.SelectedValue);
            t.BlogIcerik = TextBox4.Text;
            db.TBL_BLOG.Add(t);
            db.SaveChanges();
            Response.Redirect("Bloglar.aspx");


        }
    }
}