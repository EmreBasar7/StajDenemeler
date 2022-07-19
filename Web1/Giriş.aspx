<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giriş.aspx.cs" Inherits="Web1.Giriş" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 213px;
        }
        .auto-style2 {
            width: 408px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="text-align:center;margin: 0 auto;" class="auto-style2">
            <tr>
                
                <td class="auto-style1">

                </td>
                <td>

                    KULLANICI GİRİŞ</td>
            </tr>
            <tr>
                <td class="auto-style1">

                    Kullanıcı Adı Giriniz </td>
                <td>

                    <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="129px"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style1">

                    Şifre Giriniz</td>
                <td>

                    <asp:TextBox ID="TextBox2" runat="server" Width="129px"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button3" runat="server" Text="Kayıt Ol" Width="122px" OnClick="Button3_Click" />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Giriş" Width="123px" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Şifremi Unuttum" Width="123px" OnClick="Button2_Click" />
                </td>
            </tr>
            
        </table>
    </form>
</body>
    
</html>
