using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziBlogProje.Entitiy;


namespace DiziBlogProje.adminSayfalar
{
    public partial class BlogGuncelle : System.Web.UI.Page
    {
        DiziBlogDBEntities db = new DiziBlogDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["BlogId"]);

            if (Page.IsPostBack == false)
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

                var deger = db.TBL_BLOG.Find(y);
                TextBox1.Text = deger.BlogBaslik;
                TextBox2.Text = deger.BlogTarih.ToString();
                TextBox3.Text = deger.BlogGorsel;
                TextBox4.Text = deger.BlogIcerik;
                DropDownList1.SelectedValue = deger.BlogTur.ToString();
                DropDownList2.SelectedValue = deger.BlogKategori.ToString();


            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["BlogId"]);
            var blog = db.TBL_BLOG.Find(y);
            blog.BlogBaslik = TextBox1.Text;
            blog.BlogTarih = DateTime.Parse(TextBox2.Text);
            blog.BlogGorsel = TextBox3.Text;
            blog.BlogTur = byte.Parse(DropDownList1.SelectedValue);
            blog.BlogKategori = byte.Parse(DropDownList2.SelectedValue);
            db.SaveChanges();
            Response.Redirect("Bloglar.aspx");



        }
    }
}