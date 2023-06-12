<%@ Page Title="Update Subscription" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateSubscription.aspx.cs" Inherits="BlasterifyAdmin.Forms.Subscription.UpdateSubscription" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="TitleLabel" runat="server" CssClass="fs-4 fw-bold"></asp:Label>

    <div class="mb-3">
        <label class="form-label">Name</label>
        <asp:TextBox ID="NameTextBox" runat="server" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="mb-3">
        <label class="form-label">Price</label>
        <asp:TextBox ID="PriceTextBox" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" ControlToValidate="PriceTextBox" 
            ErrorMessage="Error, change input" ValidationExpression="^\d+(\.\d{0,2})?$">
        </asp:RegularExpressionValidator>
    </div>

    <div class="mb-3">
        <label class="form-label">Features</label>
        <asp:TextBox ID="FeaturesTextBox" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
    </div>

     <div class="my-5">
        <asp:Label ID="ResultLabel" Text="Result: Sucess!" runat="server" Font-Bold="true"
            Style="background-color:rgba(0,255,0,0.35); border-style: solid; border-color: #00FF00; 
            border-width: 2px; border-radius: 10px; padding: 10px"/>

        <asp:Label ID="ResultLabel2" Text="Result: Error!" runat="server" Font-Bold="true"
            Style="background-color:rgba(255,0,0,0.35); border-style: solid; border-color: #FF0000; 
            border-width: 2px; border-radius: 10px; padding: 10px"/>
    </div>

    <asp:Button ID="UpdateBtn" runat="server" Text="Update" CssClass="btn btn-sm btn-success me-5" 
        OnClick="UpdateBtn_Click" Font-Size="15" />

    <asp:LinkButton runat="server" PostBackUrl="~/Subscriptions.aspx"  CssClass="btn btn-sm btn-danger" Font-Size="15">Back</asp:LinkButton>
    

</asp:Content>