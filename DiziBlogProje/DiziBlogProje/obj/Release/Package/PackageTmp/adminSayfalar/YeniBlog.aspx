<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YeniBlog.aspx.cs" Inherits="DiziBlogProje.adminSayfalar.YeniBlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server" class="form-group">

        <asp:TextBox ID="TextBox1" runat="server" placeholder="Blog Başlık" CssClass="form-control" Width="80%" style="margin-left:10%"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Blog Tarih" CssClass="form-control" Width="80%" style="margin-left:10%"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" placeholder="Blog Görsel" CssClass="form-control" Width="80%" style="margin-left:10%"></asp:TextBox>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Width="80%" style="margin-left:10%" DataTextField="TurAd" DataValueField="TurId"></asp:DropDownList>
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Width="80%" Style="margin-left: 10%" DataTextField="KategoriAd" DataValueField="KategoriId"></asp:DropDownList>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" placeholder="Blog İçerik" TextMode="MultiLine" CssClass="form-control" Width="80%" Height="150" style="margin-left:10%"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="KAYDET" OnClick="Button1_Click"  CssClass="btn btn-success" style="margin-left:10%"/>







    </form>
</asp:Content>
