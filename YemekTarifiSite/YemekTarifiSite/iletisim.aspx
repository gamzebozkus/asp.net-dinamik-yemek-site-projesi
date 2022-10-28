<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="YemekTarifiSite.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            text-align: right;
        }
        .auto-style12 {
            background-color: #FFCC99;
        }
        .auto-style13 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
            background-color: #FFCC99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style12" colspan="2"><span class="auto-style12"><strong>MESAJ PANELİ</strong></span></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">Ad Soyad:</td>
            <td>
                <asp:TextBox ID="Txtgonderen" runat="server" CssClass="tb5" Height="22px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Mail Adresiniz:</td>
            <td>
                <asp:TextBox ID="Txtmail" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Konu:</td>
            <td>
                <asp:TextBox ID="Txtbaslik" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Mesaj:</td>
            <td>
                <asp:TextBox ID="Txtmesaj" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style13" ForeColor="Black" Height="39px" OnClick="Button1_Click" Text="Gönder" Width="233px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
