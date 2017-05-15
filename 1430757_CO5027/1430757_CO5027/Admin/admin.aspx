<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="_1430757_CO5027.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <asp:LinkButton ID="btnLink1" runat="server" CssClass="button" PostBackUrl="~/Admin/ManageLP.aspx">New Laptop</asp:LinkButton>
    
     <hr />
   <hr />
    <asp:GridView ID="gvLP" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="sdsLaptop" Width="100%" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Type_ID" HeaderText="Type_ID" SortExpression="Type_ID" />
            <asp:BoundField DataField="LP_name" HeaderText="LP_name" SortExpression="LP_name" />
            <asp:BoundField DataField="LP_price" HeaderText="LP_price" SortExpression="LP_price" />
            <asp:BoundField DataField="LP_desc" HeaderText="LP_desc" SortExpression="LP_desc" />
            <asp:BoundField DataField="LP_image" HeaderText="LP_image" SortExpression="LP_image" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
     </asp:GridView>
     <asp:SqlDataSource ID="sdsLaptop" runat="server" ConnectionString="<%$ ConnectionStrings:db_1430757_co5027_naftechConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [ID] = @ID" InsertCommand="INSERT INTO [tblProduct] ([Type_ID], [LP_name], [LP_price], [LP_desc], [LP_image]) VALUES (@Type_ID, @LP_name, @LP_price, @LP_desc, @LP_image)" SelectCommand="SELECT * FROM [tblProduct]" UpdateCommand="UPDATE [tblProduct] SET [Type_ID] = @Type_ID, [LP_name] = @LP_name, [LP_price] = @LP_price, [LP_desc] = @LP_desc, [LP_image] = @LP_image WHERE [ID] = @ID">
         <DeleteParameters>
             <asp:Parameter Name="ID" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="Type_ID" Type="Int32" />
             <asp:Parameter Name="LP_name" Type="String" />
             <asp:Parameter Name="LP_price" Type="Int32" />
             <asp:Parameter Name="LP_desc" Type="String" />
             <asp:Parameter Name="LP_image" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="Type_ID" Type="Int32" />
             <asp:Parameter Name="LP_name" Type="String" />
             <asp:Parameter Name="LP_price" Type="Int32" />
             <asp:Parameter Name="LP_desc" Type="String" />
             <asp:Parameter Name="LP_image" Type="String" />
             <asp:Parameter Name="ID" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>
    <hr />
     <asp:LinkButton ID="btnLink2" runat="server" CssClass="button" PostBackUrl="~/Admin/manageLPtype.aspx">New Laptop Type</asp:LinkButton>
    
     <hr />
   <hr />
   
    <asp:GridView ID="gvLPtype" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="sdsLaptopType" Width="50%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="LP_name" HeaderText="LP_name" SortExpression="LP_name" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
</asp:GridView>
<asp:SqlDataSource ID="sdsLaptopType" runat="server" ConnectionString="<%$ ConnectionStrings:db_1430757_co5027_naftechConnectionString %>" DeleteCommand="DELETE FROM [tblLaptop] WHERE [ID] = @ID" InsertCommand="INSERT INTO [tblLaptop] ([LP_name]) VALUES (@LP_name)" SelectCommand="SELECT * FROM [tblLaptop]" UpdateCommand="UPDATE [tblLaptop] SET [LP_name] = @LP_name WHERE [ID] = @ID">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="LP_name" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="LP_name" Type="String" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
   
    <hr />
</asp:Content>
