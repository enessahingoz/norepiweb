<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ilaconer.aspx.cs" Inherits="norepiweb.ilaconer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>norepiweb-&#304;laç Öner</title>
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
        .auto-style8 {
            height: 49px;
        }
        .auto-style9 {
            left: 0px;
            top: 0px;
            height: 383px;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            font-weight: bold;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="main"></div>
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1>norepi<a href="index.html"><span class="auto-style5">web</span></a></h1>
            <h2 style="margin: 0px 0px 0px 9px; padding: 4px 0px 0px; color: rgb(153, 153, 153); letter-spacing: normal; font: 15.36px &quot;century gothic&quot;, arial, sans-serif; border-bottom: 0px; text-transform: none; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(50, 53, 52); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Tüm ilaçların bilgisi.</h2>
          <h2>&nbsp;</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu" class="auto-style8">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
         <li><a href="anasayfa.aspx">Anasayfa</a></li>
          <li><a href="ilaclar.aspx">&#304;laçlar</a></li>
            <li class="selected"><a href="ilaconer.aspx">&#304;laç Öner</a></li>
           
          
        </ul>
      </div>
    </div>
    <div id="deneme" class="auto-style9">
         <div id="deneme3" class="auto-style9">
              <div class="clear"><strong>Önermek istedi&#287;iniz ilaçlar&#305; a&#351;a&#287;&#305;daki formdan bize gönderebilirsiniz.</strong></div>
             <asp:Panel ID="Panel1" runat="server" Height="16px">
                 <table class="auto-style10">
                     <tr>
                         <td><strong>&#304;laç Ad&#305;</strong></td>
                         <td>
                             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td><strong>&#304;laç Türü</strong></td>
                         <td>
                             <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td>&nbsp;</td>
                         <td><strong>
                             <asp:Button ID="Button1" runat="server" CssClass="auto-style11" OnClick="Button1_Click" Text="Öner" Width="99px" />
                             </strong></td>
                     </tr>
                 </table>
             </asp:Panel>
            
         </div>
         <br />
    </div>
    
    
    </form>
</body>
</html>
