<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GolfGameStats.aspx.cs" Inherits="GameTracker_Part3.GolfGameStats" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
      <div class="text-center">
                            <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                                ID="GolfGamesGridView" AutoGenerateColumns="false" DataKeyNames="Id"
                                OnRowDeleting="GolfGamesGridView_RowDeleting" AllowPaging ="true"
                                PageSize="4" OnPageIndexChanging="GolfGamesGridView_PageIndexChanging"
                                AllowSorting="false">
                                <Columns>
                                    <asp:BoundField DataField="hometeam" HeaderText="Home Team" Visible="true" />
                                    <asp:BoundField DataField="hometeampoints" HeaderText="Home Team Points" Visible="true" />
                                    <asp:TemplateField HeaderText="VS"><ItemTemplate><label >VS</label></ItemTemplate></asp:TemplateField>
                                    <asp:BoundField DataField="awayteampoints" HeaderText="Away Team Points" Visible="true" />
                                    <asp:BoundField DataField="awayteam" HeaderText="Away Team" Visible="true" />
                                    <asp:BoundField DataField="attendance" HeaderText="Attendance" Visible="true" />
                                    <asp:BoundField DataField="venue" HeaderText="Venue" Visible="true" />
                                      <%if (Session["userName"] != null) 
                                    {%>
                                     <asp:CommandField  HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'></i> Delete" ShowDeleteButton="true"
                                    
                            ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                                       <%  }%>
                            ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                                    
                                </Columns>
                            </asp:GridView>
                        </div> 
</asp:Content>