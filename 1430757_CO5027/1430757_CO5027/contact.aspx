<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="_1430757_CO5027.WebForm.contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Retrieve from https://www.youtube.com/watch?v=ngldKCSXA6U -->
    <!--Retrieve from https://www.youtube.com/watch?v=Fw1X7HLZfos -->

    <!--LINK TO CSS-->
    <link href="CSS/contactus.css" rel="stylesheet" type="text/css" />
<div id="cutable">
    <h1>Contact Us</h1>
    <!--contact us details with submit button-->

<table>
    <tr>
     <td>Name</td>

     <td> <asp:TextBox ID="txtNm" runat="server"  CssClass="textbox"></asp:TextBox></td>

     <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
         runat="server" 
         ErrorMessage="fill in the blank (Name)"
         ControlToValidate="txtNm"
         text="*"
         ForeColor="Red"></asp:RequiredFieldValidator></td>
     
    </tr>
    
    <tr>
     <td>Email</td>

     <td><asp:TextBox ID="txtEml" runat="server"  CssClass="textbox"></asp:TextBox></td>

      <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
        runat="server" 
        ErrorMessage="fill in the blank (Email)"
        ControlToValidate="txtEml"
        Display="Dynamic" 
        text="*"
        ForeColor="Red">
          </asp:RequiredFieldValidator>
          
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
        runat="server" 
        ErrorMessage="email invalid" 
        ControlToValidate="txtEml" 
        ForeColor="Red"
        Display="Dynamic"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            *</asp:RegularExpressionValidator></td>
    </tr>
   
     <tr>
     <td>Topic</td>

     <td><asp:TextBox ID="txtTpc" runat="server"  CssClass="textbox"></asp:TextBox></td>

    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
         runat="server" 
         ErrorMessage="fill in the blank (Topic)"
         ControlToValidate="txtTpc"
         text="*"
         ForeColor="Red"></asp:RequiredFieldValidator></td>
    </tr>

     <tr>
     <td>Comment</td>

     <td><asp:TextBox ID="txtCom" runat="server" Rows="7" TextMode="MultiLine" CssClass="textbox"></asp:TextBox></td>

     <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
         runat="server" 
         ErrorMessage="fill in the blank (Comment)"
         ControlToValidate="txtCom"
         text="*"
         ForeColor="Red"></asp:RequiredFieldValidator></td>
    </tr>

    <tr>
        <td>
        </td>

          <td><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="button"   /></td>
    <td></td>
       
    </tr>

     <tr>
         <td></td>
      <td>
            <asp:ValidationSummary 
                HeaderText="Please fix the error to proceed" 
                ForeColor="Red" ID="ValidationSummary1" 
                runat="server" />
        </td>
          <td></td>
    </tr>


    <tr>
     <td></td>
          <td>
            <asp:Label ID="info" runat="server" Font-Bold="True"></asp:Label>
        </td>
         <td></td>
     </tr>

  
</table>

   <h1>Location</h1>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3975.3214661549628!2d114.92948051398375!3d4.885730896452569!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x32228ac8ee3f7d03%3A0xcacd96016959ec39!2sKolej+Perniagaan+Laksamana!5e0!3m2!1sms!2sbn!4v1492081429804"></iframe>
            <!-- Retrieve map from https://www.google.com.bn/maps/place/Kolej+Perniagaan+Laksamana/@4.8857309,114.9294805,17z/data=!4m5!3m4!1s0x32228ac8ee3f7d03:0xcacd96016959ec39!8m2!3d4.8857309!4d114.9316692 -->
            
    </div>
    
</asp:Content>
