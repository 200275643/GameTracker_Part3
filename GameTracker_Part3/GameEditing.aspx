<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameEditing.aspx.cs" Inherits="GameTracker_Part3.GameEditing" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <h1>Game Details</h1>
                <h5>All Fields are Required</h5>
                <br />
                <div class="form-group">
                    <label class="control-label" for="GameNameTextBox">Game Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="GameNameTextBox" placeholder="Game Name" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="HomeTeamTextBox">Home Team</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="HomeTeamTextBox" placeholder="Home Team" required="true"></asp:TextBox>
                </div>
                   <div class="form-group">
                    <label class="control-label" for="HomeTeamPointsTextBox">Home Team Points</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="HomeTeamPointsTextBox" placeholder="Home Team Points" required="true"></asp:TextBox>
                </div>
                   <div class="form-group">
                    <label class="control-label" for="AwayTeamPointsTextBox">Away Team Points</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="AwayTeamPointsTextBox" placeholder="Away Team Points" required="true"></asp:TextBox>
                </div>
                   <div class="form-group">
                    <label class="control-label" for="AwayTeamTextBox">Away Team</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="AwayTeamTextBox" placeholder="Away Team" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="AttendanceTextBox">Attendance</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="AttendanceTextBox" placeholder="Attendance" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="VenueTextBox">Venue</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="VenueTextBox" placeholder="Venue" required="true"></asp:TextBox>
                </div>
               
                <div class="text-right">
                    <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server" 
                        UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                    <asp:Button Text="Save" ID="SaveButton" CssClass="btn btn-primary btn-lg" runat="server" OnClick="SaveButton_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
