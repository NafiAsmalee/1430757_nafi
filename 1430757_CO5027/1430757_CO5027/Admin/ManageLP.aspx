<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageLP.aspx.cs" Inherits="_1430757_CO5027.ManageLP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <p>
        Name:</p>
    <p>
        <asp:TextBox ID="txtNm" runat="server"></asp:TextBox>
    </p>
    <p>
        Type:</p>
    <p>
      
        <asp:DropDownList ID="ddlTyp" runat="server" DataSourceID="SqlDS" DataTextField="LP_name" DataValueField="ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDS" runat="server" ConnectionString="<%$ ConnectionStrings:db_1430757_co5027_naftechConnectionString %>" SelectCommand="SELECT * FROM [tblLaptop] ORDER BY [LP_name]"></asp:SqlDataSource>
      
    </p>
    <p>
        Price:</p>
    <p>
        <asp:TextBox ID="txtPrc" runat="server"></asp:TextBox>
    </p>
    <p>
        Image:</p>
    <p>
        <asp:DropDownList ID="ddlImg" runat="server">
        </asp:DropDownList>
    </p>
    <p>
        Description:</p>
    <p>
        <asp:TextBox ID="txtDes" runat="server" Height="74px" TextMode="MultiLine" Width="240px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
    </p>
    <p>
        <asp:Label ID="lblDesc" runat="server"></asp:Label>
    </p>
</asp:Content>
