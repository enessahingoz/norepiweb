<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ilacekle.aspx.cs" Inherits="norepiweb.admin.ilacekle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AdminPanel-İlaç Ekle</title>
    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="main">
            <div id="header">
                <div id="logo">
                    <div id="logo_text">
                        <!-- class="logo_colour", allows you to change the colour of the text -->
                        <h1>nore<a href="index.html">pi<span class="logo_colour">web</span></a></h1>
                        <h2>Tüm ilaçların bilgisi.</h2>
                    </div>
                </div>
                <div id="menubar">
                    <ul id="menu">
                        <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
                        <li><a href="adminilaclar.aspx">İlaçlar</a></li>
                        <li class="selected"><a href="ilacekle.aspx">İlaç Ekle</a></li>
                        <li><a href="oneriler.aspx">Öneriler</a></li>
                        <li><a href="hastalikekle.aspx">Hastalıklar</a></li>
                        
                    </ul>
                </div>
            </div>
            <div id="deneme" class="auto-style9">
                &#304;laç Ekle<br />
                <table class="auto-style1">
                    <tr>
                        <td>&#304;laç Ad&#305;</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Uygulama &#350;ekli</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Doz</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Etken Madde</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&#304;laç Türü</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ekle" Width="144px" />
                        </td>
                    </tr>
                </table>
            </div>
            <div id="content_footer"></div>
            
        </div>
    </form>
</body>
</html>
