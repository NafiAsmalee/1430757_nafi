<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="_1430757_CO5027.User.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h4>Create a new account</h4>
    <hr />
  

    Username:<br />
    <asp:TextBox runat="server" ID="txtUname" CssClass="inputs" /><br />

    Password:
    <br />
    <asp:TextBox runat="server" ID="txtPword" TextMode="Password" CssClass="inputs" /><br />

    Confirm password:
    <br />
    <asp:TextBox runat="server" ID="txtCPword" TextMode="Password" CssClass="inputs" /><br />
    
    First Name:<br />
    <asp:TextBox runat="server" ID="txtFname" CssClass="inputs" /><br />
    
    Last Name:<br />
    <asp:TextBox runat="server" ID="txtLname" CssClass="inputs" /><br />
    
    Address:<br />
    <asp:TextBox runat="server" ID="txtAdd" CssClass="inputs" /><br />
    
    Postal Code:<br />
    <asp:TextBox runat="server" ID="txtPcode" CssClass="inputs" /><br />

    <p>
        <asp:Button ID="btnSignup" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" CssClass="button" Width="150px" />
    </p>
      <p>
        <asp:Literal runat="server" ID="litStatMsg" />
    </p>
</asp:Content>
