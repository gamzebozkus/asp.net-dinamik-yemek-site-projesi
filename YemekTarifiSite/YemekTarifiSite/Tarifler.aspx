<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifiSite.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            background-color: #CCCCCC;
        }
        .auto-style10 {
            background-color: #3399FF;
        }
    .auto-style11 {
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style17">
        <table class="auto-style8">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style16" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style9">ONAYSIZ TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style9">
         <asp:DataList ID="DataList1" runat="server"  Width="448px" CssClass="auto-style10">
             <ItemTemplate>
                 <table class="auto-style8">
                     <tr>
                         <td class="auto-style7">
                             <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("TarifAd") %>'></asp:Label>
                         </td>
                         <td class="auto-style11">
                      <a href="/TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"><asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/Icons/oneri.png" Width="35px" /> </a>   
                         </td>
                     </tr>
                 </table>
             </ItemTemplate>
         </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style17">
        <table class="auto-style8">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style16" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"  />
                    </strong></td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style16" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"  />
                    </strong></td>
                <td class="auto-style9">ONAYLI TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style9">
         <asp:DataList ID="DataList2" runat="server"  Width="448px" CssClass="auto-style10">
             <ItemTemplate>
                 <table class="auto-style8">
                     <tr>
                         <td class="auto-style7">
                             <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("TarifAd") %>'></asp:Label>
                         </td>
                         <td class="auto-style11">
                      <a href="/TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"><asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/Icons/oneri.png" Width="35px" /> </a>   
                         </td>
                     </tr>
                 </table>
             </ItemTemplate>
         </asp:DataList>
</asp:Panel>
</asp:Content>
