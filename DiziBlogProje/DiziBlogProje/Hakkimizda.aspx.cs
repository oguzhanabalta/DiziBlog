using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziBlogProje.Entitiy;


namespace DiziBlogProje
{
    
    public partial class Hakkimizda : System.Web.UI.Page
    {
        DiziBlogDBEntities db = new DiziBlogDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.TBL_HAKKIMIZDA.ToList();
            Repeater1.DataBind();
        }
    }
}