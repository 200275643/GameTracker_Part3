<%@ Page Title="Create a Game" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateGamePage.aspx.cs" Inherits="GameTracker_Part3.CreateGamePage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- 
    Author: Naga Rimmalapudi and Chandra Reddy 
    Stud #: 200277598 & 200275643
    Date: June 6th, 2016
    Description: This will be the page/form to create a game
    -->
    <% if (Session["username"] == null) Response.Redirect("Login.aspx"); %>  <!-- user Authorization -->
    <div class="container jumbotron">
        <div class="col-md-offset-3 col-md-6">
            <h1>Game Details</h1>
            <h5>All fields are Required</h5>
            <br />
            <div class="form-group">
                <label class="" for="hometeamTextBox">Home Team</label>
                <asp:TextBox runat="server" id="hometeamTextBox" CssClass="form-control" placeholder="Home Team" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="" for="awayteamTextBox">Away Team</label>
                <asp:TextBox runat="server" id="awayteamTextBox" CssClass="form-control" placeholder="Away Team" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="" for="hometeampointsTextBox">Home Team Points</label>
                <asp:TextBox runat="server" id="hometeampointsTextBox" CssClass="form-control" placeholder="Home Team Points" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="" for="awayteampointsTextBox">Away Team Points</label>
                <asp:TextBox runat="server" id="awayteampointsTextBox" CssClass="form-control" placeholder="Away Team Points" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="" for="attendanceTextBox">Attendance</label>
                <asp:TextBox runat="server" id="attendanceTextBox" CssClass="form-control" placeholder="Attendance" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="" for="venueTextBox">Venue</label>
                <asp:TextBox runat="server" id="venueTextBox" CssClass="form-control" placeholder="Venue" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <%-- Drop down list --%>
                <label class="" for="gamenameTextBox">Game Name</label>
                <asp:DropDownList runat="server" ID="gamenameTextBox" CssClass="form-control" required="true">
                    <asp:ListItem Text="Soccer" Value="Soccer"></asp:ListItem>
                    <asp:ListItem Text="Tennis" Value="Tennis"></asp:ListItem>
                    <asp:ListItem Text="Cricket" Value="Cricket"></asp:ListItem>
                    <asp:ListItem Text="Golf" Value="Golf"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label class="" for="winningTextBox">Winning Team</label>
                <asp:TextBox runat="server" id="winningTextBox" CssClass="form-control" placeholder="Winning Team" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="" for="dateplayedTextBox"></label>
                <asp:TextBox runat="server" TextMode="Date" ID="dateplayedTextBox" CssClass="form-control" placeholder="Game Date Format: mm/dd/yyyy" required="true"></asp:TextBox>
             
            </div>

            <div class="text-right">
                <asp:Button runat="server" Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                <asp:Button runat="server" Text="Add Game" ID="AddGameButton" CssClass="btn btn-primary btn-lg" OnClick="AddGameButton_Click" />
            </div>
        </div>
    </div>
</asp:Content>
