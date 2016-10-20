<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registor.aspx.cs" Inherits="COMP229_F2016_MidTerm_300883146.Registor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <!--Jing Zhou 300883146-->
<!--10.19.2016-->
    <div class="container">
     <div class="row">
         <div class="col-md-offset-4 col-md-6">
             <asp:Label Text="" runat="server" ID="erroLabel"/>
              <div class="form-group">
                 <label for="userNameTextBox">User Name: </label>
                 <asp:TextBox ID="userNameTextBox" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
              <div class="form-group">
                 <label for="emailTextBox">Email: </label>
                 <asp:TextBox ID="emailTextBox" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
             <div class="form-group">
                 <label for="passwordTextBox">Password: </label>
                 <asp:TextBox ID="passwordTextBox" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
              <div class="form-group">
                 <label for="confirmpasswordTextBox">Password: </label>
                 <asp:TextBox ID="confirmpasswordTextBox" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
               <asp:CompareValidator ErrorMessage="Your password must match" Type="String" Operator="Equal" ControlToValidate="ConfirmpasswordTextBox"
                  runat="server" ControlToCompare="passwordTextBox" CssClass="label label-danger"></asp:CompareValidator>
               <asp:Button ID="RegistorButton" runat="server" Text="Registor now" CssClass="btn btn-default" OnClick="RegistorButton_Click" />
         </div>
     </div>
 </div>
</asp:Content>
