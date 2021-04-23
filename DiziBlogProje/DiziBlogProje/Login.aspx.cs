using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziBlogProje.Entitiy;

namespace DiziBlogProje
{
    public partial class Login : System.Web.UI.Page
    {
        DiziBlogDBEntities db = new DiziBlogDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var sorgu = from x in db.TBL_ADMIN where x.Kullanici == TextBox1.Text && x.Sifre == TextBox2.Text 
                        select x;
            if(sorgu.Any())
            {
                Session.Add("Kullanici", TextBox1.Text);
                Response.Redirect("/adminSayfalar/Bloglar.aspx");
            }
            else
            {
                
                Label1.Text = "Kullanıcı adı veya şifreniz yanlış lütfen tekrar deneyiniz.";
                Panel1.Visible = true;

            }
        }

        
    }
}