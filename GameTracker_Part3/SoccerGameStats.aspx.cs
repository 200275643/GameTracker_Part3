using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GameTracker_Part3.Models;

namespace GameTracker_Part3
{
    public partial class GameStats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["userName"] != null)
            {

            }

            if (!IsPostBack)
            {
                this.getSoccerGame();
            }
        }

        /*<summary>
         *This Method gets the games data and puts it into the proper gridView 
         * </summary>
         * 
         * @methods getGame
         * @return {void}
         */
        protected void getSoccerGame()
        {
            using (chandureddyEntities db = new chandureddyEntities())
            {
                var SoccerGames = (from allSoccerGames in db.Games
                                    where allSoccerGames.gamename == "soccer"
                                    select allSoccerGames);
                SoccerGamesGridView.DataSource = SoccerGames.AsQueryable().ToList();
                SoccerGamesGridView.DataBind();
            }

        }

        protected void SoccerGamesGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void SoccerGamesGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            SoccerGamesGridView.PageIndex = e.NewPageIndex;
            this.getSoccerGame();
        }
    }
}
