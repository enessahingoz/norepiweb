<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminilaclar.aspx.cs" Inherits="norepiweb.admin.adminilaclar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>AdminPanel-&#304;laçlar</title>
    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 42px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 152px;
        }
        .auto-style7 {
            width: 100%;
            height: 102px;
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
                        <h2>Tüm ilaçlar&#305;n bilgisi.</h2>
                    </div>
                </div>
                <div id="menubar">
                    <ul id="menu">
                        <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
                        <li class="selected"><a href="adminilaclar.aspx">&#304;laçlar</a></li>
                        <li><a href="ilacekle.aspx">&#304;laç Ekle</a></li>
                        <li><a href="oneriler.aspx">Öneriler</a></li>
                         <li><a href="hastalikekle.aspx">Hastal&#305;klar</a></li>
                        
                    </ul>
                </div>
            </div>
            <div id="deneme" >
                  <div id="deneme3" class="auto-style9">
             <asp:Panel ID="Panel1" runat="server" Height="16px">
                 <asp:DataList ID="DataList1" runat="server" Width="609px">
                     <ItemTemplate>
                         <table class="auto-style7" dir="auto">
                             <tr>
                                 <td class="auto-style5"><strong>&#304;laç Ad&#305;</strong></td>
                                 <td class="auto-style5"><strong>Uygulama &#350;ekli</strong></td>
                                 <td class="auto-style5"><strong>Doz</strong></td>
                                 <td class="auto-style5"><strong>Etken Madde</strong></td>
                                 <td class="auto-style5"><strong>Tür</strong></td>
                                 <td class="auto-style4"><strong>Düzenle</strong></td>
                                 <td class="auto-style5"><strong>Sil</strong></td>
                             </tr>
                             <tr>
                                 <td class="auto-style5">
                                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("ilacAdi") %>'></asp:Label>
                                 </td>
                                 <td class="auto-style5">
                                     <asp:Label ID="Label2" runat="server" Text='<%# Eval("uygulamaSekli") %>'></asp:Label>
                                 </td>
                                 <td class="auto-style5">
                                     <asp:Label ID="Label3" runat="server" Text='<%# Eval("ilacDoz") %>'></asp:Label>
                                 </td>
                                 <td class="auto-style5">
                                     <asp:Label ID="Label4" runat="server" Text='<%# Eval("ilacEtkenMadde") %>'></asp:Label>
                                 </td>
                                 <td class="auto-style5">
                                     <asp:Label ID="Label5" runat="server" Text='<%# Eval("ilacTur") %>'></asp:Label>
                                 </td>
                                 <td class="auto-style4">
                                    <a href="ilacduzenle.aspx?ilacid=<%#Eval("ilacid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/images/edit.png" Width="30px" /></a>
                                 </td>
                                 <td class="auto-style5">
                                     <a href="adminilaclar.aspx?ilacid=<%#Eval("ilacid") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/images/delete.png" Width="30px" /></a>
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
                <br />
            </div>
           
    </form>
</body>
</html>
