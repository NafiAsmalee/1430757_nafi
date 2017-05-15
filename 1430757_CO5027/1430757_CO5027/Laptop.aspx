<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Laptop.aspx.cs" Inherits="_1430757_CO5027.Web_Form.Product.Laptop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <link href="CSS/product.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table>
        <tr>
            <td rowspan="4">
                <asp:Image ID="imgLaptop" runat="server" CssClass="imgDetail" />
            </td>
            <td>
                <h2>
                    <asp:Label ID="lblTitle" runat="server"></asp:Label></h2>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblDesc" runat="server" CssClass="descDetail"></asp:Label>
            </td>
            <td >
                <asp:Label ID="lblPrice" runat="server" CssClass="priceDetail"></asp:Label><hr />
                Quantity:<asp:DropDownList ID="ddlQuantity" runat="server"></asp:DropDownList><hr />
                <asp:Button ID="btnAddCart" runat="server" CssClass="button" OnClick="btnAddCart_Click" Text="Add to Cart" />
                <hr />
                <asp:Label ID="lblAction" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Product No:
                <hr />
                <asp:Label ID="lblProNo" runat="server" Style="font-style: italic"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblAvailable" runat="server" CssClass="proPrice">more than 10 Available!</asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
