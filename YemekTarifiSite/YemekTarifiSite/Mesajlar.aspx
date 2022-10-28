<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YemekTarifiSite.Mesajlar" %>
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
            background-color: #CCCCCC;
        }
        .auto-style18 {
        text-align: right;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style17">
        <table class="auto-style8">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"   />
                    </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style16" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"   />
                    </strong></td>
                <td class="auto-style17" >MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server" CssClass="auto-style9">
         <asp:DataList ID="DataList1" runat="server"  Width="448px">
             <ItemTemplate>
                 <table class="auto-style8">
                     <tr>
                         <td class="auto-style11">
                             <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                         </td>
                         <td class="auto-style18">
                         <a href="/MesajDetay.aspx?Mesajid=<%#Eval("Mesajid") %>"><asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/Icons/read.png" Width="35px" /></a> 
                         </td>
                     </tr>
                 </table>
             </ItemTemplate>
         </asp:DataList>
</asp:Panel>
</asp:Content>
