<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GameTracker_Part3.Default" %>
<%-- Author: Naga Rimmalapudi and Chandra Gundam
    Stud #: 200275643 & 200277598
    Date: June 10th, 2016
    Description: This is our home page and where we will display list of games --%>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container">
        <% if (Session["userName"] != null)
            { %>
        <div style="padding: 20px"><a href="CreateGamePage.aspx" class="jumbotron" style="padding: 13px;"><i class="fa fa-plus fa-lg"> Add Game</i></a></div>
        <% } %>

        <div class="row">
            <div class="col-xs-12 col-md-4">
                <div class="jumbotron" >
                    <p>Cricket</p> 
                    <a class="btn btn-collapse" href="GameStats.aspx" role="button">
                       Game Stats &raquo;</a>
                     </div>
                    </div>
      <div class="col-xs-12 col-md-4">
            <div class="jumbotron"> 
                    <a class="btn btn-collapse" href="#" role="button">
                        
                        Tennis &raquo;</a>
                     <p>Game Stats</p>
                </div>
        </div>
            </div>
<div class="row">
        <div class="col-xs-12 col-md-4">
           <div class="jumbotron">  
                    <a class="btn btn-collapse" href="#" role="button">
                        
                       Soccer &raquo;</a>
                     <p>Game Stats</p>
           </div>     
        </div>
        <div class="col-xs-12 col-md-4">
          <div class="jumbotron">  
                    <a class="btn btn-collapse" href="#" role="button">
                        
                        Golf &raquo;</a>
                     <p>Game Stats</p>
                 </div>
            </div>
            </div>
    </div>
</asp:Content>