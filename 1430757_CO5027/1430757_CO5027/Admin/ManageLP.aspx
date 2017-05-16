<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageLP.aspx.cs" Inherits="_1430757_CO5027.ManageLP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
  
      <!--Retrieve from https://www.youtube.com/watch?v=BKujvivVFKI-->
      <!--Retrieve from https://www.youtube.com/watch?v=hkiYuPBwnkQ-->
    <link href="../CSS/user.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id ="mlptable">
         <h1>New Laptop</h1>
    <table>
        <tr>
            <td>Name:</td>
            <td><asp:TextBox ID="txtNm" runat="server" CssClass="textbox"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Type:</td>
            <td> <asp:DropDownList ID="ddlTyp" runat="server"  CssClass="dropdown" DataSourceID="SqlDS" DataTextField="LP_name" DataValueField="ID"></asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDS" runat="server" ConnectionString="<%$ ConnectionStrings:db_1430757_co5027_naftechConnectionString %>" SelectCommand="SELECT * FROM [tblLaptop] ORDER BY [LP_name]"></asp:SqlDataSource>
            </td>
        </tr>
         <tr>
            <td>Price:</td>
            <td><asp:TextBox ID="txtPrc" runat="server" CssClass="textbox"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Image:</td>
            <td> <asp:DropDownList ID="ddlImg" runat="server" CssClass="dropdown"></asp:DropDownList></td>
        </tr>
         <tr>
            <td>Description:</td>
            <td> <asp:TextBox ID="txtDes" runat="server" CssClass="textdesc" TextMode="MultiLine"></asp:TextBox></td>
     </tr>
    </table>
         <asp:Button ID="btnAdd" runat="server" CssClass="btn" Text="Add" OnClick="btnAdd_Click" />
            <p><asp:Label ID="lblDesc" runat="server" CssClass="status"></asp:Label></p>
         </div> 
</asp:Content>
