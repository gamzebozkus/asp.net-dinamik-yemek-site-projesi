<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifiSite.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style14 {
            width: 28px;
        }
        .auto-style16 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style15 {
            width: 29px;
        }
        .auto-style17 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style8" __designer:mapid="27">
        <tr __designer:mapid="28">
            <td class="auto-style14" __designer:mapid="29"><strong __designer:mapid="2a">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"   />
                </strong></td>
            <td class="auto-style15" __designer:mapid="2c"><strong __designer:mapid="2d">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style16" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"   />
                </strong></td>
            <td __designer:mapid="2f" >YEMEK&nbsp; LİSTESİ</td>
        </tr>
    </table>
     <asp:Panel ID="Panel2" runat="server" CssClass="auto-style9">
         <asp:DataList ID="DataList1" runat="server"  Width="448px">
             <ItemTemplate>
                 <table class="auto-style8">
                     <tr>
                         <td class="auto-style11">
                             <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("YemekAd") %>'></asp:Label>
                         </td>
                         <td class="auto-style17">
                             <a href='/YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid") %>'>
                             <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/choose.png" Width="30px" />
                             </a>
                         </td>
                     </tr>
                 </table>
             </ItemTemplate>
         </asp:DataList>
</asp:Panel>
</asp:Content>
