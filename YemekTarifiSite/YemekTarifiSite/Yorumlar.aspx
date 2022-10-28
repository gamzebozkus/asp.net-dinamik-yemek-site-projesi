<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifiSite.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style17 {
            background-color: #CCCCCC;
        }
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
        .auto-style9 {
            background-color: #99CCFF;
        }
    .auto-style11 {
        text-align: left;
        width: 281px;
    }
    .auto-style12 {
        font-size: large;
    }
        .auto-style10 {
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style17">
        <table class="auto-style8">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style16" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                    </strong></td>
                <td >ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server" CssClass="auto-style9">
         <asp:DataList ID="DataList1" runat="server"  Width="448px">
             <ItemTemplate>
                 <table class="auto-style8">
                     <tr>
                         <td class="auto-style11">
                             <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                         </td>
                         <td class="auto-style10">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/delete.png" Width="30px" />
                         </td>
                         <td class="auto-style10">
                         <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/update.png" Width="30px" />
                         </td>
                     </tr>
                 </table>
             </ItemTemplate>
         </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style17">
        <table class="auto-style8">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style16" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"   />
                    </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style16" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"   />
                    </strong></td>
                <td >ONAYSIZ YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style9">
         <asp:DataList ID="DataList2" runat="server"  Width="448px">
             <ItemTemplate>
                 <table class="auto-style8">
                     <tr>
                         <td class="auto-style11">
                             <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                         </td>
                         <td class="auto-style10">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/delete.png" Width="30px" />
                         </td>
                         <td class="auto-style10">
                       <a href="/YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>" > <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/update.png" Width="30px" /></a>
                         </td>
                     </tr>
                 </table>
             </ItemTemplate>
         </asp:DataList>
</asp:Panel>
    </asp:Content>
