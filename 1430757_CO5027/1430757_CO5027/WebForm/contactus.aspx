<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="_1430757_CO5027.WebForm.contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div id="cutable">
    <h1>Contact Us</h1>
<table>
    <tr>
     <td><asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></td>
     <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
     <td>*</td>
    </tr>
    
    <tr>
     <td><asp:Label ID="Label2" runat="server" Text="Email"></asp:Label></td>
     <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
     <td>*</td>
    </tr>

     <tr>
     <td><asp:Label ID="Label3" runat="server" Text="Topic"></asp:Label></td>
     <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
     <td>*</td>
    </tr>

     <tr>
     <td><asp:Label ID="Label4" runat="server" Text="Comment"></asp:Label></td>
     <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
     <td>*</td>
    </tr>
      <tr>
     <td></td>
     <td><asp:Button ID="Button1" runat="server" Text="Submit" /></td>
    </tr>
</table>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/map.JPG" />
     
    </div>
</asp:Content>
