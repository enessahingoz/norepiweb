<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="norepiweb.anasayfa" %>

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
            width: 47px;
        }
        .auto-style3 {
            width: 105px;
        }
        .auto-style4 {
            width: 65px;
        }
        .auto-style5 {
            color: #E4EC04;
        }
        .auto-style7 {
            height: 442px;
        }
        .auto-style8 {
            width: 50%;
        }
        .auto-style9 {
            font-size: medium;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style10 {
            font-weight: 700;
            font-size: small;
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
          <h1>norepi<a href="index.html"><span class="auto-style5">web</span></a></h1>
          <h2>Tüm ilaçların bilgisi.</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
         <li class="selected"><a href="anasayfa.aspx">Anasayfa</a></li>
          <li><a href="ilaclar.aspx">&#304;laçlar</a></li>
            <li><a href="ilaconer.html" class="auto-style4">&#304;laç Öner</a></li>
           
          
        </ul>
      </div>
    </div>
    <div id="content_header"></div>
    <div id="site_content" class="auto-style7">
        <br />
        <strong><span class="auto-style9">Hastalıklar</span></strong><asp:DataList ID="DataList1" runat="server" RepeatColumns="5" Width="705px">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="90px" ImageUrl='<%# Eval("hastalikresim") %>' Width="150px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text='<%# Eval("hastalikadi") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style11" Text='<%# Eval("hastalikaciklama") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </ItemTemplate>
        </asp:DataList>
        <br />
        <strong><span class="auto-style9">İlaçlar</span></strong><asp:DataList ID="DataList2" runat="server" RepeatColumns="4" Width="705px">
            <ItemTemplate>
                <table class="auto-style8">
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style12" Text='<%# Eval("ilacAdi") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
      <p><a href="index.html">Homeles.html">Examples</a> | <a href="page.html">A Page</a> | <a href="another_page.html">Another Page</a> | <a href="contact.html">Contact Us</a></p>
      <p>Copyright &copy; simplestyle_banner | <a href="http://validator.w3.org/check?uri=referer">HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> | <a href="http://www.html5webtemplates.co.uk">HTML5 Web Templates</a></p>
    </div>
  </div>
    
        </form>
    
</body>
</html>
