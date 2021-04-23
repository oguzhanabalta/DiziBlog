<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="DiziBlogProje.adminSayfalar.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="customers">
        <tr >
            <th >ID</th>
            <th>KULLANICI</th>
            <th>İÇERİK</th>
            <th>BLOG</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
            
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("YorumId") %></td>
                    <td><%# Eval("KullaniciAdi") %></td> 
                    <td><%# Eval("Yorumİcerik") %></td> 
                    <td><%# Eval("BlogBaslik") %></td>
                    
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger" 
                         NavigateUrl='<%# "YorumSil.aspx?YorumId="+ Eval("YorumId") %>'>SİL</asp:HyperLink>

                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-warning" 
                         NavigateUrl='<%# "YorumGuncelle.aspx?YorumId="+ Eval("YorumId") %>'>GÜNCELLEŞTİR</asp:HyperLink>

                    </td>
                    
                </tr>
            </ItemTemplate>
        </asp:Repeater>


    </table>
</asp:Content>
