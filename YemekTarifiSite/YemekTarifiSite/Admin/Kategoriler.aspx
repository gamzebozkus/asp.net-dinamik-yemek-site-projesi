<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifiSite.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            background-color: #99CCFF;
        }
    .auto-style10 {
        text-align: right;
    }
    .auto-style11 {
        text-align: left;
        width: 281px;
    }
    .auto-style12 {
        font-size: large;
    }
        .auto-style14 {
            width: 28px;
        }
        .auto-style15 {
            width: 29px;
        }
        .auto-style16 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style17 {
            background-color: #CCCCCC;
        }
        .auto-style18 {
            font-weight: bold;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style17">
        <table class="auto-style8">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style16" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td >KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server" CssClass="auto-style9">
         <asp:DataList ID="DataList1" runat="server"  Width="448px">
             <ItemTemplate>
                 <table class="auto-style8">
                     <tr>
                         <td class="auto-style11">
                             <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                         </td>
                         <td class="auto-style10">
                            <a href="/Admin/Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/delete.png" Width="30px" /></a>
                         </td>
                         <td class="auto-style10">
                       <a href="/KategoriDuzenle.aspx?Kategoriid=<%#Eval("Kategoriid") %>">   <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/update.png" Width="30px" /></a> 
                         </td>
                     </tr>
                 </table>
             </ItemTemplate>
         </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server"  CssClass="auto-style17">
        <table class="auto-style8">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style16" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style16" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"  />
                    </strong></td>
                <td >KATEGORİ EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" >
        <table class="auto-style8">
           <tr>
            <td>KATEGORİ AD:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>KATEGORİ İKON:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style18" Text="Ekle" Width="130px" OnClick="BtnEkle_Click" />
                </strong></td>
        </tr>
        </table>
    </asp:Panel>
   
</asp:Content>
