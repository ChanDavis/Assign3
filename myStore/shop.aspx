<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shop.aspx.cs" Inherits="shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="/styles/shop.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="title" Runat="Server">
    <h1>Shop</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" Runat="Server">
    <asp:DataList ID="DataList1" Cssclass="table table-inverse" runat="server" DataKeyField="Id" DataSourceID="productsDataSource" RepeatColumns="3" BorderStyle="Double" CellPadding="3">
        <ItemTemplate>
            <table>
                <tr class="imgRow"><td>
                    <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' CommandName="productId" OnClick="linkBtn_Click">
                        <asp:Image ID="productImg" CssClass="productImg" runat="server" ImageUrl='<%# Eval("img") %>' /></asp:LinkButton>
                </td></tr>
                <tr><td>
                    <asp:Label ID="productName" CssClass="productName" runat="server" Text='<%# Eval("name") %>' />
                </td></tr>
                <tr><td class="productPrice">
                    $
                    <asp:Label ID="productPrice"  runat="server" Text='<%# Eval("price") %>' />
                </td></tr>

                <tr>  
                    <td class="goBottom" style="color:red;">  
                    <!--<asp:Button ID="addBtn"  CssClass="btn btn-primary" runat="server" Text="Add To Cart" CommandArgument='<%# Eval("Id") %>' CommandName="productId"></asp:Button>  
                    -->  
                        <button disabled="disabled" class="btn btn-primary">SOLD OUT!!</button> 
                        
                        <asp:Button ID="detailsBtn"  CssClass="btn btn-primary" runat="server" Text="Details" CommandArgument='<%# Eval("id") %>' CommandName="productId" onClick="detailsBtn_Click" ></asp:Button>

                    </td>  
               </tr>  
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="productsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbDavisStoreConnectionString %>" SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>

 <!--  <div id="popup" onmouseout="closePopup()">
        <asp:DataList ID="popupDataList" CssClass="popup" runat="server" DataKeyField="Id" DataSourceID="popupDataSource">
            <ItemTemplate>
                <div>
                    <div class="floaterHolder">
                        <h2><asp:Label Text='<%# Eval("name") %>' runat="server" cssClass="popupHeader1" ID="nameLabel" /></h2>
                        <asp:Image ImageUrl='<%# Eval("img") %>' runat="server" CssClass="popupImg" ID="imgLabel" />
                        
                    </div>
                    <div>
                        <div>
                            $<asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" />
                        <div>
                        <h2>Description:</h2>
                        <asp:Label Text='<%# Eval("description") %>' runat="server" ID="descriptionLabel" /><br />
                    </div>
                    <div class="goBottom">  
                        <asp:Button ID="addBtn"  CssClass="btn btn-primary" runat="server" Text="Add To Cart" CommandArgument='<%# Eval("Id") %>' CommandName="productId"></asp:Button>  
                        <button id="closeBtn" class="btn btn-primary" onclick="closePopup()" value="Close" ></button>
                    </div>  
                    
                </div>
            </ItemTemplate>
        </asp:DataList>
    

        <asp:SqlDataSource runat="server" ID="popupDataSource" ConnectionString='<%$ ConnectionStrings:dbDavisStoreConnectionString %>' SelectCommand="SELECT * FROM [products] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:Parameter Name="Id" DbType="Int32"></asp:Parameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    -->
</asp:Content>

