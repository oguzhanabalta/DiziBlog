using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziBlogProje.Entitiy;

namespace DiziBlogProje
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        DiziBlogDBEntities db = new DiziBlogDBEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {
            TBL_ILETISIM t = new TBL_ILETISIM();
            t.AdSoyad = TextBox1.Text;
            t.Mail = TextBox2.Text;
            t.Telefon = TextBox3.Text;
            t.Konu = TextBox4.Text;
            t.Mesaj = TextBox5.Text;
            db.TBL_ILETISIM.Add(t);
            db.SaveChanges();
        }
    }
}