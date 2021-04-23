<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumGuncelle.aspx.cs" Inherits="DiziBlogProje.adminSayfalar.YorumGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" class="form-group">

        <asp:TextBox ID="TextBox1" runat="server" placeholder="Blog Başlık" CssClass="form-control" Width="80%" style="margin-left:10%" Enabled="false"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Kullanıcı Adı" CssClass="form-control" Width="80%" style="margin-left:10%"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" placeholder="Yorum İçerik" TextMode="MultiLine" CssClass="form-control" Width="80%" Height="150" style="margin-left:10%"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="KAYDET" OnClick="Button1_Click" CssClass="btn btn-success" style="margin-left:10%"/>







    </form>
</asp:Content>
