using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web1
{
    public partial class Giriş : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        veritabani2.projeEntities2 ent = new veritabani2.projeEntities2();

        protected void Button3_Click(object sender, EventArgs e)//kayit buton
        {
            Response.Redirect("KullaniciKayit.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)//giriş buton
        {
            var sorgu = from x in ent.Kullanıcı
                        where x.KullanıcıGirişAdı == TextBox1.Text && x.KullanıcıSifre == TextBox2.Text
                        select x;


            if (sorgu.Any())
            {
                Response.Redirect("Hayvankayıt.aspx");
            }
            else
            {
                Response.Write("Hatalı giriş yaptınız");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SifremiUnuttum.aspx");
        }
    }
}