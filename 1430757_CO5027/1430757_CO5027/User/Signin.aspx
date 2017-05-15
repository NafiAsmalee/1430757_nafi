<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="_1430757_CO5027.User.Signin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h4>Sign In</h4><hr />
    
    <asp:Label runat="server" AssociatedControlID="txtUname">Username</asp:Label>
    <br />
    <asp:TextBox runat="server" ID="txtUname" CssClass="inputs" />
    <br />
    <asp:Label runat="server" AssociatedControlID="txtPword">Password</asp:Label>
    <br />
    <asp:TextBox runat="server" ID="txtPword" TextMode="Password" CssClass="inputs" />
    <br />
    <p><asp:Button ID="btnSignIn" runat="server" Text="Log in" OnClick="btnSignIn_OnClick" CssClass="button"/></p>
    <p><asp:Literal runat="server" ID="litErrMsg" Text="Incorrect username or password." Visible="false" /></p>
</asp:Content>
