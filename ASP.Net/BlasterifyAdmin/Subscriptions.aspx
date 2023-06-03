<%@ Page Title="Puestos" Language="C#" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeBehind="Subscriptions.aspx.cs" 
    Inherits="BlasterifyAdmin.Subscriptions" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Blasterify</h1>
        <p class="lead">CRUD Subscription</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <p class="lead">Create</p>
            <asp:Label ID="CName" Text="Name:" AssociatedControlID="CNameTextBox" runat="server"/>
            <br/>
            <asp:TextBox ID="CNameTextBox" runat="server" />
            <br>

            <asp:Label ID="CPrice" Text="Price:" AssociatedControlID="CPriceTextBox" runat="server"/>
            <br/>
            <asp:TextBox ID="CPriceTextBox" runat="server" />
            <br>

            <asp:Label ID="CFeatures" Text="Features:" AssociatedControlID="CFeaturesTextBox" runat="server"/>
            <br/>
            <asp:TextBox ID="CFeaturesTextBox" runat="server" />
            <br>

            <asp:Button ID="CreateBtn" runat="server" Text="Create" Style="margin: 10px; background: #000; color:#FFF" OnClick="CreateBtn_Click" />
            <br>
            <asp:Label ID="CResult" Text="Result:" runat="server"></asp:Label>
        </div>
           
        <br>
        <div class="col-md-4">
            <p class="lead">Update</p>
            <asp:Label ID="UId" Text="Id:" AssociatedControlID="UIdTextBox" runat="server"/>
            <br/>
            <asp:TextBox ID="UIdTextBox" runat="server" />
            <br>

            <asp:Label ID="UName" Text="Name:" AssociatedControlID="UNameTextBox" runat="server"/>
            <br/>
            <asp:TextBox ID="UNameTextBox" runat="server" />
            <br>

            <asp:Label ID="UPrice" Text="Price:" AssociatedControlID="UPriceTextBox" runat="server"/>
            <br/>
            <asp:TextBox ID="UPriceTextBox" runat="server" />
            <br>

            <asp:Label ID="UFeatures" Text="Features:" AssociatedControlID="UFeaturesTextBox" runat="server"/>
            <br/>
            <asp:TextBox ID="UFeaturesTextBox" runat="server" />
            <br>

            <asp:Button ID="UpdateBtn" runat="server" Text="Update" Style="margin: 10px; background: #000; color:#FFF" OnClick="UpdateBtn_Click"/>
            <br>
            <asp:Label ID="UResult" Text="Result:" runat="server"></asp:Label>
        </div>

        <br>
        <div class="col-md-4">
            <p class="lead">Delete</p>
            <asp:Label ID="DId" Text="Id:" AssociatedControlID="DIdTextBox" runat="server"/>
            <br/>
            <asp:TextBox ID="DIdTextBox" runat="server" />
            <br>
            <asp:Button ID="DeleteBtn" runat="server" Text="Delete" Style="margin: 10px; background: #000; color:#FFF" OnClick="DeleteBtn_Click" />
            <br>
            <asp:Label ID="DResult" Text="Result:" runat="server"></asp:Label>
        </div>

        <br>
        <div class="col-md-4">
            <p class="lead">Get</p>
            <asp:Label ID="GId" Text="Id:" AssociatedControlID="GIdTextBox" runat="server"/>
            <br/>
            <asp:TextBox ID="GIdTextBox" runat="server"/>
            <br>
            <asp:Button ID="GetBtn" runat="server" Text="Get" Style="margin: 10px; background: #000; color:#FFF" OnClick="GetBtn_Click" />
            <br>
            <asp:Label ID="GResult" Text="Result:" runat="server"></asp:Label>
        </div>

        <br>
        <div class="col-md-4">
            <p class="lead">Get All</p>
            <asp:Button ID="GetAllBtn" runat="server" Text="Get All" Style="margin: 10px; background: #000; color:#FFF" OnClick="GetAllBtn_Click" />
            <br>
            <asp:Label ID="GAResult" Text="Result:" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>