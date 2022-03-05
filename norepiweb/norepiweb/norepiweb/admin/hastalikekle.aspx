<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hastalikekle.aspx.cs" Inherits="norepiweb.admin.hastalikekle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>AdminPanel-&#304;laç Ekle</title>
    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
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
                        <h1>nore<a href="index.html">pi<span class="logo_colour">web</span></a></h1>
                        <h2>Tüm ilaçların bilgisi.</h2>
                    </div>
                </div>
                <div id="menubar">
                    <ul id="menu">
                        <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
                        <li><a href="adminilaclar.aspx">&#304;laçlar</a></li>
                        <li ><a href="ilacekle.aspx">&#304;laç Ekle</a></li>
                        <li><a href="oneriler.aspx">Öneriler</a></li>
                        <li class="selected"><a href="hastalikekle.aspx">Hastalıklar</a></li>
                        
                    </ul>
                </div>
            </div>
            <div id="deneme" class="auto-style9">
                <br />
                Hastal&#305;k Ekle <strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style1" Height="30px" OnClick="Button2_Click" Text="+" Width="30px" />
                </strong>&nbsp;<strong><asp:Button ID="Button3" runat="server" CssClass="auto-style1" Height="30px" OnClick="Button3_Click" Text="-" Width="30px" />
                </strong>&nbsp;<asp:Panel ID="Panel1" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td>Hastal&#305;k Ad&#305;</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Hastal&#305;k Aç&#305;klama</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Height="138px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Hastal&#305;k Resim</td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td><strong>
                                <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="Ekle" Width="126px" />
                                </strong></td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                Hastal&#305;klar<strong>
                <asp:Panel ID="Panel2" runat="server">
                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                        <ItemTemplate>
                            <table class="auto-style2">
                                <tr>
                                    <td>Hastalık Adı</td>
                                    <td>Sil</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("hastalikadi") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <a href="hastalikekle.aspx?hastalikid=<%#Eval("hastalikid") %>&islem=sil"> <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/images/delete.png" Width="30px" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </asp:Panel>
            </div>
            <div id="content_footer"></div>
            
        </div>
    </form>
</body>
</html>
