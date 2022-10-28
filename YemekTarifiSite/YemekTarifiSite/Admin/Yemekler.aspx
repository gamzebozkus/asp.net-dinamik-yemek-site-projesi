<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifiSite.Yemekler" %>
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
        .auto-style19 {
            font-size: small;
        }
        .auto-style20 {
            margin-top: 0px;
        }
        .auto-style21 {
            margin-bottom: 0px;
        }
        .auto-style22 {
            text-align: center;
        }
        .auto-style23 {
            margin-left: 40px;
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
                <td >YEMEK&nbsp; LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server" CssClass="auto-style9">
         <asp:DataList ID="DataList1" runat="server"  Width="448px">
             <ItemTemplate>
                 <table class="auto-style8">
                     <tr>
                         <td class="auto-style11">
                             <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("YemekAd") %>'></asp:Label>
                         </td>
                         <td class="auto-style10">
                            <a href="/Admin/Yemekler.aspx?Yemekid=<%#Eval("Yemekid") %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/delete.png" Width="30px" /></a>
                         </td>
                         <td class="auto-style10">
                       <a href="/YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid") %>">   <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/update.png" Width="30px" /></a> 
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
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style16" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"  />
                    </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style16" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"  />
                    </strong></td>
                <td >YEMEK EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel4" runat="server" >
        <table class="auto-style8">
           <tr>
            <td>YEMEK AD:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">YEMEK MALZEMELER</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style21" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>YEMEK TARİFİ:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style20" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
            <tr>
                <td>KATEGORİ</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="307px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style22"><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style18" Text="Ekle" Width="130px" OnClick="BtnEkle_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
