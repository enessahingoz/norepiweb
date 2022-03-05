<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ilaclar.aspx.cs" Inherits="norepiweb.ilaclar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>norepiweb-&#304;laçlar</title>
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
        .auto-style11 {
            width: 100%;
            height: 60px;
        }
        .auto-style12 {
            height: 25px;
        }
        .auto-style13 {
            height: 25px;
            width: 70px;
        }
        .auto-style15 {
            height: 25px;
            width: 120px;
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
            <h2 style="margin: 0px 0px 0px 9px; padding: 4px 0px 0px; color: rgb(153, 153, 153); letter-spacing: normal; font: 15.36px &quot;century gothic&quot;, arial, sans-serif; border-bottom: 0px; text-transform: none; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(50, 53, 52); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Tüm ilaçların bilgisi.</h2>
          <h2>&nbsp;</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu" class="auto-style8">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
         <li><a href="anasayfa.aspx">Anasayfa</a></li>
          <li class="selected"><a href="ilaclar.aspx">&#304;laçlar</a></li>
            <li><a href="ilaconer.aspx">&#304;laç Öner</a></li>
           
          
        </ul>
      </div>
    </div>
    <div id="deneme" class="auto-style9">
         <div id="deneme3" class="auto-style9">
             <asp:Panel ID="Panel1" runat="server" Height="16px">
                 <asp:DataList ID="DataList1" runat="server" Width="609px">
                     <ItemTemplate>
                         <table class="auto-style11">
                             <tr>
                                 <td class="auto-style12"><strong>İlaç Adı</strong></td>
                                 <td class="auto-style15"><strong>Uygulama Şekli</strong></td>
                                 <td class="auto-style13"><strong>Doz</strong></td>
                                 <td class="auto-style15"><strong>Etken Madde</strong></td>
                                 <td class="auto-style12"><strong>Tür</strong></td>
                             </tr>
                             <tr>
                                 <td class="auto-style12">
                                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("ilacAdi") %>'></asp:Label>
                                 </td>
                                 <td class="auto-style15">
                                     <asp:Label ID="Label2" runat="server" Text='<%# Eval("uygulamaSekli") %>'></asp:Label>
                                 </td>
                                 <td class="auto-style13">
                                     <asp:Label ID="Label3" runat="server" Text='<%# Eval("ilacDoz") %>'></asp:Label>
                                 </td>
                                 <td class="auto-style15">
                                     <asp:Label ID="Label4" runat="server" Text='<%# Eval("ilacEtkenMadde") %>'></asp:Label>
                                 </td>
                                 <td class="auto-style12">
                                     <asp:Label ID="Label5" runat="server" Text='<%# Eval("ilacTur") %>'></asp:Label>
                                 </td>
                             </tr>
                         </table>
                     </ItemTemplate>
                 </asp:DataList>
             </asp:Panel>
             <div class="clear"></div>
         </div>
       <div id="deneme2" class="form_settings">
           <asp:TextBox ID="TextBox1" runat="server" Width="147px"></asp:TextBox>
           <br />
           <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Ara" BorderStyle="Dotted" Width="159px" />
         </div>
         <br />
    </div>
    
     

            </div>
        </form>
    
</body>
</html>
