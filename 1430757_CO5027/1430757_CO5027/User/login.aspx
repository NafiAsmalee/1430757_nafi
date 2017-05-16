<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="_1430757_CO5027.User.Signin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

     <!--Retrieve from https://www.youtube.com/watch?v=mBrxQQJdoHM -->
    <link href="../CSS/user.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id ="signin">
     <h1>Sign In</h1>
         <hr />
    <table>
        <tr>
            <td><asp:Label runat="server" AssociatedControlID="txtUname">Username</asp:Label></td>
            <td><asp:TextBox runat="server" ID="txtUname" CssClass="inputs" /></td>
        </tr>
        <tr>
            <td><asp:Label runat="server" AssociatedControlID="txtPword">Password</asp:Label></td>
            <td><asp:TextBox runat="server" ID="txtPword" TextMode="Password" CssClass="inputs" /></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="btnSignIn" runat="server" Text="Log in" OnClick="btnSignIn_OnClick" CssClass="button"/><asp:Literal runat="server" ID="litErrMsg" Text="Incorrect username or password." Visible="false" /></td>
        </tr>
       
    </table>
  
  
   </div>
</asp:Content>
