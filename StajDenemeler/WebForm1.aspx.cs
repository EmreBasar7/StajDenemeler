using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StajDenemeler
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        VeriTabani.projeEntities ent = new VeriTabani.projeEntities();
        void getir()
        {
            VeriTabani.projeEntities ent = new VeriTabani.projeEntities();
            GridView1.DataSource= ent.Hayvanlar.to
        }
    }
}