<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="manageLPtype.aspx.cs" Inherits="_1430757_CO5027.manageLPtype" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <!--Retrieve fromRetrieve from https://www.youtube.com/watch?v=BKujvivVFKI-->
    <link href="../CSS/user.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mlpttable">
        <h1>New Laptop Type</h1>
        <table>
            <tr>
                <td>Name:</td>
                <td><asp:TextBox ID="txtNm" runat="server"  CssClass="textbox"></asp:TextBox></td>
                <td> <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" /></td>
            </tr>
        </table>
       
        <asp:Label ID="lblDesc" runat="server" CssClass="status"></asp:Label>
        </div>
    
</asp:Content>
