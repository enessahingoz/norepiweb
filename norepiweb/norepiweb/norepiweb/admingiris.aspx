<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admingiris.aspx.cs" Inherits="norepiweb.admingiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>simplestyle_banner</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
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
          <h1><a href="index.html">norepi<span class="logo_colour">web</span></a></h1>
            <h2 style="margin: 0px 0px 0px 9px; padding: 4px 0px 0px; color: rgb(153, 153, 153); letter-spacing: normal; font: 15.36px &quot;century gothic&quot;, arial, sans-serif; border-bottom: 0px; text-transform: none; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(50, 53, 52); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Tüm ilaçların bilgisi.</h2>
          <h2>&nbsp;</h2>
        </div>
      </div>
      <div id="menubar">
      </div>
    </div>
    <div id="content_header"></div>
    <div id="site_content" class="auto-style1">
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style2">
                <tr>
                    <td>Kullanıcı Adı</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Şifre</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
    
    </div>
  </div>
    </form>
</body>
</html>
