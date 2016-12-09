<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="editProducts.aspx.cs" Inherits="admin_editProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="../styles/editProducts.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="title" Runat="Server">
    <h1>Edit Products</h1>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="editProductsDataSource" DataKeyNames="Id" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr>
                <td>
                    <asp:Button runat="server" CommandName="Delete" CausesValidation="false" Text="Delete" ID="DeleteButton" />
                </td>
                <td>
                    <asp:Button runat="server" CommandName="Edit" CausesValidation="false" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("name") %>' runat="server" ID="nameLabel" /></td>
                <td class="imgTd">
                    <asp:Image ImageUrl='<%# Eval("img") %>' CssClass="productImg" runat="server" ID="imgLabel" /></td>
                <td>
                    $<asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("dept") %>' runat="server" ID="deptLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("description") %>' runat="server" ID="descriptionLabel" /></td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                 <td>
                   <asp:Button runat="server" CommandName="Update" ValidationGroup="editvg" Text="Update" ID="UpdateButton" />
                </td>
                <td>
                    <asp:Button runat="server" CommandName="Cancel" CausesValidation="false" Text="Cancel" ID="CancelButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel1" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("name") %>' runat="server" ValidationGroup="editvg" ID="nameTextBox" />
                     <div>
                        <asp:RequiredFieldValidator ControlToValidate="nameTextBox" ValidationGroup="editvg" ErrorMessage="Can't be NULL" runat="server" ></asp:RequiredFieldValidator>
                    </div>
                </td>
                <td class="imgTd">
                    <asp:TextBox Text='<%# Bind("img") %>' runat="server" ID="imgTextBox" />
                </td>
                <td>
                   $<asp:TextBox Text='<%# Bind("price") %>' runat="server" ID="priceTextBox" />
                     <div>
                        <asp:RequiredFieldValidator ControlToValidate="priceTextBox" ValidationGroup="editvg" ErrorMessage="Can't be NULL" runat="server" ></asp:RequiredFieldValidator>
                    </div>
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("dept") %>' runat="server" ID="deptTextBox" />
                     <div>
                        <asp:RequiredFieldValidator ControlToValidate="deptTextBox" ValidationGroup="editvg" ErrorMessage="Can't be NULL" runat="server" ></asp:RequiredFieldValidator>
                    </div>
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("description") %>' runat="server" ID="descriptionTextBox" /></td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr></tr>
            <tr style="">
                 <td>
                    <asp:Button runat="server" CommandName="Insert" Text="Add" ValidationGroup="addvg" ID="InsertButton" />
                </td>
                <td>
                    <asp:Button runat="server" CommandName="Cancel"  CausesValidation="false" Text="Cancel" ID="CancelButton" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox Text='<%# Bind("name") %>' runat="server" ID="nameTextBox" />
                </td>
                <td class="imgTd">
                    <asp:TextBox Text='<%# Bind("img") %>' runat="server" ID="imgTextBox" /></td>
                <td>
                    $<asp:TextBox Text='<%# Bind("price") %>' runat="server" ID="priceTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("dept") %>' runat="server" ID="deptTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("description") %>' runat="server" ID="descriptionTextBox" /></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td>
                   <asp:RequiredFieldValidator ControlToValidate="nameTextBox" ValidationGroup="addvg" ErrorMessage="Can't be NULL" runat="server" ></asp:RequiredFieldValidator>
                </td>
                 <td></td>
                <td>
                   <asp:RequiredFieldValidator ControlToValidate="priceTextBox" ValidationGroup="addvg" ErrorMessage="Can't be NULL" runat="server" ></asp:RequiredFieldValidator>
                </td>
                <td>
                   <asp:RequiredFieldValidator ControlToValidate="deptTextBox" ValidationGroup="addvg" ErrorMessage="Can't be NULL" runat="server" ></asp:RequiredFieldValidator>
                </td>
                 <td></td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                </td>
                <td>
                    <asp:Button runat="server" CommandName="Edit" CausesValidation="false" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("name") %>' runat="server" ID="nameLabel" /></td>
                <td class="imgTd">
                    <asp:Image ImageUrl='<%# Eval("img") %>' CssClass="productImg" runat="server" ID="imgLabel" /></td>
                <td>
                    $<asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("dept") %>' runat="server" ID="deptLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("description") %>' runat="server" ID="descriptionLabel" /></td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server" class="table">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                 <th runat="server"></th>
                                <th runat="server">Id</th>
                                <th runat="server">Name</th>
                                <th runat="server">Image</th>
                                <th runat="server">Price</th>
                                <th runat="server">Department</th>
                                <th runat="server">Description</th>
                            </tr>
                            <tr runat="server" id="itemPlaceholder"></tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager runat="server" ID="DataPager1">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                 <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                </td>
                <td>
                    <asp:Button runat="server" CommandName="Edit" CausesValidation="false" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("name") %>' runat="server" ID="nameLabel" /></td>
                <td class="imgTd">
                    <asp:Image ImageUrl='<%# Eval("img") %>' CssClass="productImg" runat="server" ID="imgLabel" /></td>
                <td>
                    $<asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("dept") %>' runat="server" ID="deptLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("description") %>' runat="server" ID="descriptionLabel" /></td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    
     <asp:SqlDataSource runat="server" ID="editProductsDataSource" ConnectionString='<%$ ConnectionStrings:dbDavisStoreConnectionString %>' DeleteCommand="DELETE FROM products WHERE (Id = @id)" InsertCommand="INSERT INTO products(name, img, price, dept, description) VALUES (@name, @img, @price, @dept, @description)" SelectCommand="SELECT products.* FROM products" UpdateCommand="UPDATE products SET name = @name, img = @img, price = @price, dept = @dept, description = @description WHERE (Id = @id)">
        <DeleteParameters>
            <asp:Parameter Name="id"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name"></asp:Parameter>
            <asp:Parameter Name="img"></asp:Parameter>
            <asp:Parameter Name="price"></asp:Parameter>
            <asp:Parameter Name="dept"></asp:Parameter>
            <asp:Parameter Name="description"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name"></asp:Parameter>
            <asp:Parameter Name="img"></asp:Parameter>
            <asp:Parameter Name="price"></asp:Parameter>
            <asp:Parameter Name="dept"></asp:Parameter>
            <asp:Parameter Name="description"></asp:Parameter>
            <asp:Parameter Name="id"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

