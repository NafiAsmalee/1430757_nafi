<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="_1430757_CO5027.User.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    
    <!--Retrieve from https://www.youtube.com/watch?v=mBrxQQJdoHM -->
    <link href="../CSS/user.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="signup">
     <h1>Create a New Account</h1>
    <hr />
  <table>
      <tr>
          <td>Username:</td>
          <td><asp:TextBox runat="server" ID="txtUname" CssClass="inputs" /></td>
      </tr>
      <tr>
          <td>Password:</td>
          <td><asp:TextBox runat="server" ID="txtPword" TextMode="Password" CssClass="inputs" /></td>
      </tr>
      <tr>
          <td>Confirm password:</td>
          <td><asp:TextBox runat="server" ID="txtCPword" TextMode="Password" CssClass="inputs" /></td>
      </tr>
      <tr>
          <td>First Name:</td>
          <td><asp:TextBox runat="server" ID="txtFname" CssClass="inputs" /></td>
      </tr>
      <tr>
          <td>Last Name:</td>
          <td><asp:TextBox runat="server" ID="txtLname" CssClass="inputs" /></td>
      </tr>
      <tr>
          <td>Address:</td>
          <td><asp:TextBox runat="server" ID="txtAdd" CssClass="inputs" /></td>
      </tr>
      <tr>
          <td>Postal Code:</td>
          <td><asp:TextBox runat="server" ID="txtPcode" CssClass="inputs" /></td>
      </tr>
      <tr>
          <td></td>
          <td><asp:Button ID="btnSignup" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" CssClass="button" /><asp:Literal runat="server" ID="litStatMsg" /></td>
      </tr>
      </table>
        </div>
    
</asp:Content>
