<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HayvanKayıt.aspx.cs" Inherits="Web1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 323px;
        }
        .auto-style2 {
            width: 386px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div style="background-color:darkslategray; text-align:center;margin: 0 auto; color:aliceblue" class="auto-style2"> HAYVAN KAYIT  </div>

        <div style="text-align:center;width: 300px;margin: 0 auto;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
         
        <div>
            <p style="text-align:center;width: 300px;margin: 0 auto;">
            ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBoxID" runat="server" Width="124px"></asp:TextBox>
            </p>
            <p style="text-align:center;width: 300px;margin: 0 auto;">
        TÜR&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBoxTur" runat="server" Width="123px"></asp:TextBox>
            </p>
        </div>

        <div style="text-align:center;width: 300px;margin: 0 auto;" >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; YAŞ&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBoxYas" runat="server"></asp:TextBox>
        </div>

        <div>
            <p style="text-align:center;width: 300px;margin: 0 auto;">
                KİLO&nbsp;&nbsp; <asp:TextBox ID="TextBoxKilo" runat="server"></asp:TextBox>
            </p>
        </div>
        
        <div>
            <p style="text-align:center;width: 300px;margin: 0 auto;">
            SAĞLIK DURUMU&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox4" runat="server" Text="Sağlıklı" />
            &nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox5" runat="server" Text="Hasta"  />
            </p>
            <p style="text-align:center;width: 324px; margin: 0 auto;">
            AŞI DURUMU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Aşılı" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Aşısız" />
            </p>
        </div>
        
        <div style="text-align:center;width: 300px;margin: 0 auto;">
            <p style="text-align:center;width: 300px;margin: 0 auto;">
            ADRESİ&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBoxAdres" runat="server"></asp:TextBox>
            </p>
        </div>
        <div style="text-align:center;margin: 0 auto;" class="auto-style1">
             <asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Güncelle" OnClick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Sil" Width="60px" OnClick="Button3_Click" />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>

       
        
    </form>
</body>
</html>
