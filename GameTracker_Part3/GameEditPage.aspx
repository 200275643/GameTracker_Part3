<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameEditPage.aspx.cs" Inherits="GameTracker_Part3.GameEditPage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <% if (Session["userName"] != null)
            { %>
        <div style="padding: 20px"><a href="CreateGamePage.aspx" class="jumbotron" style="padding: 13px;"><i class="fa fa-plus fa-lg"> Add Game</i></a></div>
        <% } %>

                    <label for="PageSizeDropDownList">Records per Page: </label>
                    <asp:DropDownList ID="PageSizeDropDownList" runat="server"
                        AutoPostBack="true" CssClass="btn btn-default bt-sm dropdown-toggle"
                        OnSelectedIndexChanged="PageSizeDropDownList_SelectedIndexChanged">
                        <asp:ListItem Text="3" Value="3" />
                        <asp:ListItem Text="5" Value="5" />
                        <asp:ListItem Text="10" Value="10" />
                        <asp:ListItem Text="All" Value="10000" />
                    </asp:DropDownList>
                </div>
    <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                                ID="AllGamesGridView" AutoGenerateColumns="false" DataKeyNames="Id"
                                OnRowDeleting="AllGamesGridView_RowDeleting" AllowPaging ="true"
                                PageSize="4" OnPageIndexChanging="AllGamesGridView_PageIndexChanging"
                                AllowSorting="false">
                                <Columns>
                                    <asp:BoundField DataField="gamename" HeaderText="Game Name" Visible="true" />
                                    <asp:BoundField DataField="hometeam" HeaderText="Home Team" Visible="true" />
                                    <asp:BoundField DataField="hometeampoints" HeaderText="Home Team Points" Visible="true" />
                                    <asp:TemplateField HeaderText="VS"><ItemTemplate><label >VS</label></ItemTemplate></asp:TemplateField>
                                    <asp:BoundField DataField="awayteampoints" HeaderText="Away Team Points" Visible="true" />
                                    <asp:BoundField DataField="awayteam" HeaderText="Away Team" Visible="true" />
                                    <asp:BoundField DataField="attendance" HeaderText="Attendance" Visible="true" />
                                    <asp:BoundField DataField="venue" HeaderText="Venue" Visible="true" />
                                    <asp:BoundField DataField="dateplayed" HeaderText="Date" Visible="true" />
                                 <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square-o fa-lg'></i> Edit" NavigateUrl="~/StudentDetails.aspx.cs"
                            DataNavigateUrlFields="Id" DataNavigateUrlFormatString="GameEditing.aspx?Id={0}" 
                            ControlStyle-CssClass="btn btn-primary btn-sm"/>
                        <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'></i> Delete" ShowDeleteButton="true"
                            ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                                     
                                      
                                </Columns>
                            </asp:GridView>
</asp:Content>
