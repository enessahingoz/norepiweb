<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="oneriler.aspx.cs" Inherits="norepiweb.admin.oneriler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>AdminPanel-Öneriler</title>
    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
    <style type="text/css">
        .auto-style7 {
            left: -1px;
            top: -1px;
        }
        .auto-style8 {
            width: 99%;
            border: 2px solid #000000;
            background-color: #FFFF99;
        }
        .auto-style9 {
            height: 34px;
        }
        .auto-style11 {
            height: 35px;
            width: 51px;
        }
        .auto-style12 {
            width: 51px;
        }
        .auto-style13 {
            height: 35px;
            width: 238px;
        }
        .auto-style14 {
            width: 238px;
        }
        .auto-style16 {
            height: 35px;
            width: 258px;
        }
        .auto-style17 {
            width: 258px;
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
                        <li ><a href="adminilaclar.aspx">&#304;laçlar</a></li>
                        <li><a href="ilacekle.aspx">&#304;laç Ekle</a></li>
                        <li class="selected"><a href="oneriler.aspx">Öneriler</a></li>
                        <li><a href="hastalikekle.aspx">Hastalıklar</a></li>
                        
                    </ul>
                </div>
            </div>
            <div id="deneme" class="auto-style7" >
                  <div id="deneme" class="auto-style9">
             <asp:Panel ID="Panel1" runat="server" Height="16px">
                 <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                     <ItemTemplate>
                         <table cellspacing="1" class="auto-style8">
                             <tr>
                                 <td class="auto-style13">&#304;laç Ad&#305;</td>
                                 <td class="auto-style16">&#304;laç Türü</td>
                                 <td class="auto-style11">Ekle</td>
                             </tr>
                             <tr>
                                 <td class="auto-style14">
                                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("oneriAd") %>'></asp:Label>
                                 </td>
                                 <td class="auto-style17">
                                     <asp:Label ID="Label2" runat="server" Text='<%# Eval("oneriTur") %>'></asp:Label>
                                 </td>
                                 <td class="auto-style12">
                                     <a href="ilacekle.aspx"> <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/images/add.png" Width="30px" />
                                 </td>
                             </tr>
                         </table>
                     </ItemTemplate>
                 </asp:DataList>
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
