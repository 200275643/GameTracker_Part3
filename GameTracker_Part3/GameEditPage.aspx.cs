using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GameTracker_Part3.Models;
namespace GameTracker_Part3
{
    public partial class GameEditPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["userName"] != null)
            {

            }

            if (!IsPostBack)
            {
                this.getAllGames();
            }
        }

        /*<summary>
         *This Method gets the games data and puts it into the proper gridView 
         * </summary>
         * 
         * @methods getGame
         * @return {void}
         */
        protected void getAllGames()
        {
            using (chandureddyEntities db = new chandureddyEntities())
            {
                var AllGames = (from allGames in db.Games
                                   select allGames);
                AllGamesGridView.DataSource = AllGames.AsQueryable().ToList();
                AllGamesGridView.DataBind();
            }

        }
        protected void PageSizeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Set the new Page size
            AllGamesGridView.PageSize = Convert.ToInt32(PageSizeDropDownList.SelectedValue);

            // refresh the grid
            this.getAllGames();
        }

        protected void AllGamesGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // store which row was clicked
            int selectedRow = e.RowIndex;


            int Id = Convert.ToInt32(AllGamesGridView.DataKeys[selectedRow].Values["Id"]);


            using (chandureddyEntities db = new chandureddyEntities())
            {
                // create object of the Todo class and store the query string inside of it
                Game deletedGame = (from  gameRecords in db.Games
                                    where gameRecords.Id == Id
                                    select gameRecords).FirstOrDefault();


                db.Games.Remove(deletedGame);

                // save my changes back to the database
                db.SaveChanges();

                // refresh the grid
                this.getAllGames();
            }
        }

        protected void AllGamesGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            AllGamesGridView.PageIndex = e.NewPageIndex;
            this.getAllGames();
        }
    }
}
