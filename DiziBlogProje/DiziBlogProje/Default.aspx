<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DiziBlogProje.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
		 <div class="content-grids">
			 <div class="col-md-8 content-main">
                 <asp:Repeater ID="Repeater1" runat="server">
					 <ItemTemplate>
                         <div class="content-grid">
                             <div class="content-grid-info">
                                 <img src="<%# Eval("BlogGorsel") %>" alt=""  style="height:100%; width:100%" />
                                 <div class="post-info">
                                     <h4><a href="BlogDetay.aspx?BlogId=<%# Eval("BlogId") %>"><%# Eval("BlogBaslik") %></a> <%# Eval("BlogTarih") %></h4>
                                     <p><%# Eval("BlogIcerik") %></p>
                                     <a href="BlogDetay.aspx?BlogId=<%# Eval("BlogId") %>"><span></span>Devamını Oku</a>
                                 </div>
                             </div>
                         </div>
					 </ItemTemplate>
                 </asp:Repeater>
				 
			  </div>
			  <div class="col-md-4 content-right">
				 <div class="recent">
					 <h3>Son Bloglar</h3>
					 <ul>
                         <asp:Repeater ID="Repeater3" runat="server">
							 <ItemTemplate>
								 <li><a href="BlogDetay.aspx?BlogId=<%# Eval("BlogId") %>"><%# Eval("BlogBaslik") %></a></a></li>
							 </ItemTemplate>
                         </asp:Repeater>
					 </ul>
				 </div>
				 <div class="comments">
					 <h3>Son Yorumlar</h3>
                     <asp:Repeater ID="Repeater4" runat="server">
						 <ItemTemplate>
                             <ul>
                                 <li><a href="#"><p style="font-style:italic;"><%# Eval("KullaniciAdi") %>: </p></a><%# Eval("Yorumİcerik") %></li>
                             </ul>
						 </ItemTemplate>
                     </asp:Repeater>
					 
				 </div>
				 
				 <div class="categories">
					 <h3>Kategoriler</h3>
					 <ul>
                         <asp:Repeater ID="Repeater2" runat="server">
							 <ItemTemplate>
								 <li><a href="KategoriDetay.aspx?KategoriId=<%# Eval("KategoriId") %>"><%# Eval("KategoriAd") %></a></a></li>
							 </ItemTemplate>
                         </asp:Repeater>
					 
					 
					 </ul>
				 </div>
				 <div class="clearfix"></div>
			  </div>
			  <div class="clearfix"></div>
		  </div>
	  </div>
</asp:Content>
