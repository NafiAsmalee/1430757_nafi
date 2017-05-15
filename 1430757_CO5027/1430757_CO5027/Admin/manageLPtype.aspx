<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="manageLPtype.aspx.cs" Inherits="_1430757_CO5027.manageLPtype" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p>
        Name:</p>
    <p>
        <asp:TextBox ID="txtNm" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
    </p>
    <p>
        <asp:Label ID="lblDesc" runat="server"></asp:Label>
    </p>
</asp:Content>
