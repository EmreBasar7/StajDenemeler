using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getir();
        }
        void getir()
        {
            veritabani2.projeEntities2 ent = new veritabani2.projeEntities2();
            GridView1.DataSource = ent.Hayvanlar.ToList();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e) //kaydet
        {
            veritabani2.projeEntities2 ent = new veritabani2.projeEntities2();
            veritabani2.Hayvanlar yeni = new veritabani2.Hayvanlar();
            yeni.Tür = TextBoxTur.Text;
            yeni.Yaş = TextBoxYas.Text;
            yeni.Kilo = TextBoxKilo.Text;
            if(CheckBox4.Checked)
            {
                yeni.SağlıkDurum = "Sağlıklı";
            }
            else
            {
                yeni.SağlıkDurum = "Hasta";
            }
            if(CheckBox1.Checked)
            {
                yeni.AşıDurum = "Aşılı";
            }
            else
            {
                yeni.AşıDurum = "Aşısız";
            }

            yeni.Adres = TextBoxAdres.Text;
            ent.Hayvanlar.Add(yeni);
            ent.SaveChanges();
            Label1.Text = "Kayıt yapıldı";
            getir();
        }

        protected void Button2_Click(object sender, EventArgs e)//güncelle
        {
            int id = Convert.ToInt16(TextBoxID.Text);
            veritabani2.projeEntities2 ent = new veritabani2.projeEntities2();
            veritabani2.Hayvanlar yeni = ent.Hayvanlar.First(f => f.HayvanID== id);
            yeni.Tür = TextBoxTur.Text;
            yeni.Yaş = TextBoxYas.Text;
            yeni.Kilo = TextBoxKilo.Text;
            if (CheckBox4.Checked)
            {
                yeni.SağlıkDurum = "Sağlıklı";
            }
            else
            {
                yeni.SağlıkDurum = "Hasta";
            }
            if (CheckBox1.Checked)
            {
                yeni.AşıDurum = "Aşılı";
            }
            else
            {
                yeni.AşıDurum = "Aşısız";
            }

            yeni.Adres = TextBoxAdres.Text;
           
            ent.SaveChanges();
            Label1.Text = "Güncelleme yapıldı";
            getir();

        }

        protected void Button3_Click(object sender, EventArgs e)//sil
        {
            int id = Convert.ToInt16(TextBoxID.Text);
            veritabani2.projeEntities2 ent = new veritabani2.projeEntities2();
            veritabani2.Hayvanlar yeni = ent.Hayvanlar.First(f => f.HayvanID == id);
            ent.Hayvanlar.Remove(yeni);
            ent.SaveChanges();
            Label1.Text = "Kayıt Silindi";
            getir();


        }
    }
}