<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="COMP229_F2016_MidTerm_300883146.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--Jing Zhou 300883146-->
<!--10.19.2016-->
 <div class="container">
     <div class="row">
    <div class="col-md-offset-3 col-md-6">
        <asp:Label Text="" runat="server" ID="erroLabel" />
         <div class="form-group">
                 <label for="userNameTextBox">User Name: </label>
                 <asp:TextBox ID="userNameTextBox" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
              <div class="form-group">
                 <label for="passwordTextBox">Password: </label>
                 <asp:TextBox ID="passwordTextBox" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            
            
                
                               <asp:Button ID="CancelButton" runat="server" Text="Registor now" CssClass="btn btn-default" OnClick="CancelButton_Click"  />
             <asp:Button ID="SaveButton" runat="server" Text="Log In" CssClass="btn btn-default" OnClick="SaveButton_Click" />
            

    </div>

     </div>
 </div>
</asp:Content>
