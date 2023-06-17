<%@ Page Title="User" Language="C#" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeBehind="SelectUser.aspx.cs" 
    Inherits="BlasterifyAdmin.Forms.User.SelectUser" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="TitleLabel" runat="server" CssClass="fs-4 fw-bold"></asp:Label>

    <div class="mb-3">
        <label id="Id" class="form-label"></label>
    </div>

    <div class="mb-3">
        <label id="Name" class="form-label"></label>
    </div>

    <div class="mb-3">
        <label id="FirebaseUID" class="form-label"></label>
    </div>

    <div class="mb-3">
        <label id="CardNumber" class="form-label"></label>
    </div>

    <asp:LinkButton runat="server" PostBackUrl="~/Forms/User/Users.aspx" 
        CssClass="btn btn-sm btn-danger" Font-Size="15">Back</asp:LinkButton>
    

</asp:Content>