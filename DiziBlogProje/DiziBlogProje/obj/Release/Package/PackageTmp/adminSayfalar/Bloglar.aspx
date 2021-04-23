<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Bloglar.aspx.cs" Inherits="DiziBlogProje.adminSayfalar.Bloglar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<form runat="server">
    <table class="customers">
        <tr >
            <th >ID</th>
            <th>BAŞLIK</th>
            <th>TARİH</th>
            <th>TÜR</th>
            <th>KATEGORİ</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
            
            
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                
                <tr>
                    <td><%# Eval("BlogId") %></td>
                    <td><%# Eval("BlogBaslik") %></td> 
                    <td><%# Eval("BlogTarih") %></td>
                    <td><%# Eval("BlogTur") %></td>
                    <td><%# Eval("BlogKategori") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger" 
                         NavigateUrl='<%# "BlogSil.aspx?BlogId="+ Eval("BlogId") %>'>SİL</asp:HyperLink>

                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-warning" 
                         NavigateUrl='<%# "BlogGuncelle.aspx?BlogId="+ Eval("BlogId") %>'>GÜNCELLEŞTİR</asp:HyperLink>

                    </td>
                    
                </tr>
            </ItemTemplate>
        </asp:Repeater>


    </table>
    <br />
    <a href="YeniBlog.aspx" class="btn btn-primary" style="margin-left:10%;">YENİ BLOG</a>
    
</form>
</asp:Content>
