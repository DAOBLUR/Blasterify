<%@ Page Title="Users" Language="C#" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeBehind="Users.aspx.cs" 
    Inherits="BlasterifyAdmin.Forms.Users" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="margin-bottom:20px">
        <h1>Subscriptions</h1>
        <div class="row">
            <div class="col-10" style="display: flex;flex-direction: row; align-items: center;">
                <asp:Button ID="CreateBtn" runat="server" Text="+ Create" CssClass="btn btn-sm btn-success"
                    OnClick="CreateBtn_Click" BorderStyle="None" Font-Bold="True"
                    Style="margin: 0 5px; color: #FFF; padding: 5px 10px; border-radius: 5px;"/>

                 <asp:TextBox ID="SearchTextBox" runat="server" BorderWidth="1px"
                     Style="margin-left: 15px; border-radius: 5px; padding: 2.5px 10px;" />

                <asp:Button ID="SearchBtn" runat="server" Text="Search" CssClass="btn btn-sm btn-info"
                    OnClick="SearchBtn_Click" BorderStyle="None" Font-Bold="True" 
                    Style="margin: 0 5px; color: #FFF; padding: 5px 10px; border-radius: 5px;"/>
            </div>
        </div>
    </div>

    <asp:GridView ID="SubscriptionsGridView" runat="server" AutoGenerateColumns="false" 
        CssClass="table table-bordered" OnRowCommand="GridView_RowCommand">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Card_Number" HeaderText="Price" />
            <asp:BoundField DataField="Status" HeaderText="Features" />
            <asp:BoundField DataField="Email" HeaderText="Id" />
            <asp:BoundField DataField="Password" HeaderText="Name" />
            <asp:BoundField DataField="Subscription_Date" HeaderText="Price" />
            <asp:BoundField DataField="Features" HeaderText="Features" />
            <asp:BoundField DataField="Features" HeaderText="Features" />

            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton runat="server" CommandName="Select" CommandArgument='<%#Eval("Id")%>'
                        CssClass="btn btn-sm btn-primary" Font-Bold="True" 
                        Style="margin: 0 5px; color: #FFF; padding: 5px 10px; border-radius: 5px;" 
                        >Select</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton runat="server" CommandName="Update" CommandArgument='<%#Eval("Id")%>'
                        CssClass="btn btn-sm btn-warning" Font-Bold="True" 
                        Style="margin: 0 5px; color: #000; padding: 5px 10px; border-radius: 5px;" 
                        >Update</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton runat="server" CommandName="Delete" CommandArgument='<%#Eval("Id")%>'
                        CssClass="btn btn-sm btn-danger" Font-Bold="True" 
                        Style="margin: 0 5px; color: #FFF; padding: 5px 10px; border-radius: 5px;" 
                        >Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
