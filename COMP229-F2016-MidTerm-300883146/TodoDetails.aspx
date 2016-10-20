<%@ Page Title="Todo Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TodoDetails.aspx.cs" Inherits="COMP229_F2016_MidTerm_300883146.TodoDetails" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!--Jing Zhou 300883146-->
    <!--19/10/2016-->
    <div class="container">
      <div class="row">
         <div class="col-md-offset-4 col-md-6">

             <div class="form-group">
                 <label for="DescriptionTextBox">Todo Description: </label>
                 <asp:TextBox ID="DescriptionTextBox" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
              <div class="form-group">
                 <label for="TodoNodeTextBox">Todo Node: </label>
                 <asp:TextBox ID="TodoNodeTextBox" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
             <asp:Button ID="CancelButton" runat="server" Text="Cancel" CssClass="btn btn-default" OnClick="CancelButton_Click" />
             <asp:Button ID="SaveButton" runat="server" Text="Save" CssClass="btn btn-default" OnClick="SaveButton_Click"/>

         </div>
      </div>
  </div>
</asp:Content>
