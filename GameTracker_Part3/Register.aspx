<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GameTracker_Part3.Register" %>
<%-- Author: Naga Rimmalapudi and Chandra Gundam
    Stud #: 200275643 & 200277598
    Date: June 10th, 2016
    Description: This page allows users to register  --%>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container1">
            <h3>Register here</h3>
        
    <div class="col-md-6">
        <div class="form-group">
            <label class="control-label" for="UserNameTextBox">User Name</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="UserNameTextBox" placeholder="User Name" required="true"></asp:TextBox>
            <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name is required" ControlToValidate="UserNameTextBox"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label class="control-label" for="PassTextBox">Password</label>
            <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="PasswordTextBox" placeholder="Password" required="true"></asp:TextBox>
            <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password is required" ControlToValidate="PasswordTextBox"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label class="control-label" for="ConfPassTextBox">Confirm Password</label>
            <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="ConfirmPasswordTextBox" placeholder="ConfirmPassword" required="true"></asp:TextBox>
            <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password is required" ControlToValidate="ConfirmPasswordTextBox"></asp:RequiredFieldValidator>
        </div>
        <div class="text-right">
            <a class="btn btn-warning btn-lg" id="CancelButton" href="HomePage.aspx">Cancel</a>
            <asp:Button runat="server" CssClass="btn btn-primary btn-lg" ID="RegisterButton" Text="Register" CausesValidation="true" OnClick="RegisterButton_Click" />
        </div>
    </div>
    
</div>
</asp:Content>
