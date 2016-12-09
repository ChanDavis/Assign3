<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="/styles/product.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" Runat="Server">
    <asp:SqlDataSource runat="server" ID="popupDataSource" ConnectionString='<%$ ConnectionStrings:dbDavisStoreConnectionString %>' SelectCommand="SELECT * FROM [products] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:Parameter Name="Id" DbType="Int32"></asp:Parameter>
        </SelectParameters>

    </asp:SqlDataSource>


    <asp:DataList ID="popupDataList" CssClass="productTable" runat="server" DataKeyField="Id" DataSourceID="popupDataSource">
        <ItemTemplate>
            <div>
                <div class="floaterHolder">
                    <div>
                        <asp:Image ImageUrl='<%# Eval("img") %>' runat="server" CssClass="popupImg" ID="imgLabel" />
                    </div>
                    <div class="popupHeader1">
                        <h1><asp:Label Text='<%# Eval("name") %>' runat="server"  ID="nameLabel" /></h1>
                        <h3>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$<asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" />
                         </h3>
                         <div class="goBottom" style="color:red;">  
                    <!--<asp:Button ID="addBtn"  CssClass="btn btn-primary" runat="server" Text="Add To Cart" CommandArgument='<%# Eval("Id") %>' CommandName="productId"></asp:Button>  
                    -->
                             <button disabled="disabled" class="btn btn-primary">Add To Cart</button> SOLD OUT!! Check back later.
                        </div> 
                    </div>
                   
                </div>
                <div>
                    
                    <h3>Description:</h3>
                    <asp:Label Text='<%# Eval("description") %>' runat="server" ID="descriptionLabel" /><br />
                </div>
                <br/>
                <br/>
                <br/>
                
                
                    
            </div>
        </ItemTemplate>
    </asp:DataList>
       
    
</asp:Content>

