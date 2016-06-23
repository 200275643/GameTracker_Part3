<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GameTracker_Part3.Login" %>
<%-- Author: Naga Rimmalapudi and Chandra Gundam
    Stud #: 200275643 & 200277598
    Date: June 10th, 2016
    Description: This page displays the login page --%>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container jumbotron">
     <div class="col-md-offset-3 col-md-6">

     
        <h2 class="form-signin-heading">Log in</h2>
         <div class="form-group"> 
        <label for="inputUserName" class="sr-only">User Name</label>
        <asp:TextBox runat="server" type="userName" id="inputUserName" class="form-control" placeholder="User Name" required="true"/>
         </div>
         <div class="form-group"> 
        <label for="inputPassword" class="sr-only">Password</label>
        <asp:TextBox runat="server" type="password" id="inputPassword" class="form-control" placeholder="Password" required="true"/>
          </div>
        <asp:button runat="server" class="btn btn-lg btn-primary btn-block" type="submit" Text="Log in" OnClick="Unnamed_Click"></asp:button>
      <div class="text-right"> 
          <a href="Register.aspx"><h3>Register<h6>It's free and always will be</h6></h3></a> 

      </div>

    </div> <!-- /container -->
</div>
</asp:Content>
