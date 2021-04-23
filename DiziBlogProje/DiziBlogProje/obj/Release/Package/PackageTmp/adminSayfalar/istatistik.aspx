<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="istatistik.aspx.cs" Inherits="DiziBlogProje.adminSayfalar.istatistik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="customers">
        <tr>
            <td>BLOG SAYISI:<asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label></td>
            <td>YORUM SAYISI:<asp:Label ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label></td>
            <td>FİLM SAYISI:<asp:Label ID="Label3" runat="server" Text="" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td>DİZİ SAYISI:<asp:Label ID="Label4" runat="server" Text="" ForeColor="Red"></asp:Label></td>
            <td>ANİMASYON SAYISI:<asp:Label ID="Label5" runat="server" Text="" ForeColor="Red"></asp:Label></td>
            <td>BELGESEL SAYISI:<asp:Label ID="Label6" runat="server" Text="" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td>EN FAZLA YORUMLU BLOG:<asp:Label ID="Label7" runat="server" Text="" ForeColor="Red"></asp:Label></td>
            <td></td>
            <td></td>
            
        </tr>

    </table>

</asp:Content>
