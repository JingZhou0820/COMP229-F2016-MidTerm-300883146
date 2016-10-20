<%@ Page Title="Todo List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TodoList.aspx.cs" Inherits="COMP229_F2016_MidTerm_300883146.TodoList" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!--Jing Zhou 300883146-->
    <!--19/10/2016-->
    <div class="container">
        <div class="row">
            <div class="col-md-offset-4 col-md-6">
                
                <asp:Button ID="AdddataButton" runat="server" Text="Add" CssClass="btn-primary" OnClick="AdddataButton_Click" />
                <asp:GridView ID="TodoGridView" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered" Visible="true" DataKeyNames="TodoID" OnRowDeleting="TodoGridView_RowDeleting"
                     >
                    <Columns>
                        <asp:BoundField DataField="TodoDescription" HeaderText="Todo Description" Visible="true" />
                        <asp:BoundField DataField="TodoNotes" HeaderText="Notes" Visible="true" />
                        <asp:HyperLinkField HeaderText="Edit" Text="Edit" NavigateUrl="~/TodoDetails.aspx" ControlStyle-CssClass="btn btn-primary btn-sm" runat="server"
                            DataNavigateUrlFields ="TodoID" DataNavigateUrlFormatString="TodoDetails.aspx?TodoID={0}" />
                        <asp:CommandField HeaderText="Delete" DeleteText="Delete" ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                     </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
