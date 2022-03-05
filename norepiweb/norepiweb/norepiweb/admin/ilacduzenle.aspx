<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ilacduzenle.aspx.cs" Inherits="norepiweb.admin.ilacduzenle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>AdminPanel-İlaç Düzenle</title>
    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style6 {
            width: 152px;
        }
        .auto-style7 {
            left: 0px;
            top: 0px;
            height: 332px;
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
                        <li><a href="ilacekle.aspx">İlaç Ekle</a></li>
                        <li><a href="oneriler.aspx">Öneriler</a></li>
                        <li><a href="hastalikekle.aspx">Hastalıklar</a></li>
                      
                    </ul>
                </div>
            </div>
            <div id="deneme" class="auto-style7" >
                  <div id="deneme3" class="auto-style9">
             <asp:Panel ID="Panel1" runat="server" Height="16px">
                 <table class="auto-style1">
                     <tr>
                         <td class="auto-style6">&#304;laç Ad&#305;</td>
                         <td>
                             <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style6">Uygulama &#350;ekli</td>
                         <td>
                             <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style6">Doz</td>
                         <td>
                             <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style6">Etken Madde</td>
                         <td>
                             <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style6">Tür</td>
                         <td>
                             <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style6">&nbsp;</td>
                         <td><strong>
                             <asp:Button ID="Button4" runat="server" Text="Düzenle" Width="88px" OnClick="Button4_Click" />
                             </strong></td>
                     </tr>
                 </table>
             </asp:Panel>
             <div class="clear"></div>
         </div>
         <br />
         </div>
                <br />
            </div>
    </form>
</body>
</html>
