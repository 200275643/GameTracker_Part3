using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GameTracker_Part3.Models;

namespace GameTracker_Part3
{
    public partial class TennisGameStats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["userName"] != null)
            {

            }

            if (!IsPostBack)
            {
                this.getTennisGame();
            }
        }

        /*<summary>
         *This Method gets the games data and puts it into the proper gridView 
         * </summary>
         * 
         * @methods getGame
         * @return {void}
         */
        protected void getTennisGame()
        {
            using (chandureddyEntities db = new chandureddyEntities())
            {
                var TennisGames = (from allTennisGames in db.Games
                                    where allTennisGames.gamename == "Tennis"
                                    select allTennisGames);
                TennisGamesGridView.DataSource = TennisGames.AsQueryable().ToList();
                TennisGamesGridView.DataBind();
            }

        }

        protected void TennisGamesGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void TennisGamesGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            TennisGamesGridView.PageIndex = e.NewPageIndex;
            this.getTennisGame();
        }
    }
}
