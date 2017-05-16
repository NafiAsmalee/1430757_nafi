<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="_1430757_CO5027.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
   
     <!--Retrieve from https://www.youtube.com/watch?v=67fW_kNLghc -->

    <link href="/CSS/user.css" rel="stylesheet" />
    <link href="/CSS/product.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:Panel ID="pnlSCart" runat="server">
    </asp:Panel>
        <table>
            <tr>
                <td>
                    <b>Total: </b>
                </td>
                <td>
                    <asp:Literal ID="litT" runat="server" Text=""></asp:Literal>
                </td>
            </tr>

            <tr>
                <td>
                    <b>Vat: </b>
                </td>
                <td>
                    <asp:Literal ID="litV" runat="server" Text="" />
                </td>
            </tr>
            <tr>
                <td>
                    <b>Shipping: </b>
                </td>
                <td>
                    $ 30
                </td>
            </tr>

            <tr>
                <td>
                    <b>Total Amount: </b>
                </td>
                <td>
                    <asp:Literal ID="litTA" runat="server" Text="" />
                </td>
            </tr>

            <tr>
                <td>
                    <hr />
                    <asp:LinkButton ID="lnkBtn" runat="server" PostBackUrl="~/default.aspx">Continue Shopping</asp:LinkButton> or                     
                    <asp:Button ID="btnCOut" runat="server" Text="Check Out" CssClass="button"  PostBackUrl="~/done.aspx" />

                    <hr />

                   
                </td>
            </tr>

        </table>
</asp:Content>
