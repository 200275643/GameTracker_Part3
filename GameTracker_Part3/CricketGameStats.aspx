<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CricketGameStats.aspx.cs" Inherits="GameTracker_Part3.CricketGameStats" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
      <div class="text-center">
                            <asp:GridView runat="server" CssClass="table table-inverse"
                                ID="CricketGamesGridView" AutoGenerateColumns="false" DataKeyNames="Id"
                                OnRowDeleting="CricketGamesGridView_RowDeleting" AllowPaging ="true"
                                PageSize="4" OnPageIndexChanging="CricketGamesGridView_PageIndexChanging"
                                AllowSorting="false">
                                <Columns>
                                    <asp:BoundField DataField="hometeam" HeaderText="Home Team" Visible="true" />
                                    <asp:BoundField DataField="hometeampoints" HeaderText="Home Team Points" Visible="true" />
                                    <asp:TemplateField HeaderText="VS"><ItemTemplate><label >VS</label></ItemTemplate></asp:TemplateField>
                                    <asp:BoundField DataField="awayteampoints" HeaderText="Away Team Points" Visible="true" />
                                    <asp:BoundField DataField="awayteam" HeaderText="Away Team" Visible="true" />
                                    <asp:BoundField DataField="attendance" HeaderText="Attendance" Visible="true" />
                                    <asp:BoundField DataField="venue" HeaderText="Venue" Visible="true" />
                          
                                    
                                       
                            
                                    
                                </Columns>
                            </asp:GridView>
                        </div> 
</asp:Content>