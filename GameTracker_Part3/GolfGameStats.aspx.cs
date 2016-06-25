using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GameTracker_Part3.Models;
/**
 * Author: Naga Rimmalapudi and Chandra Reddy
 * Student ID: 200277598 and 200275643
 * Date: June 22, 2016
 * website name: http://gametrackerpart3comp2007.azurewebsites.net/
 * This displays golf game stats
 */

namespace GameTracker_Part3
{
    public partial class GolfGameStats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["userName"] != null)
            {

            }

            if (!IsPostBack)
            {
                this.getGolfGame();
            }
        }

        /*<summary>
         *This Method gets the games data and puts it into the proper gridView 
         * </summary>
         * 
         * @methods getGame
         * @return {void}
         */
        protected void getGolfGame()
        {
            using (chandureddyEntities db = new chandureddyEntities())
            {
                var GolfGames = (from allGolfGames in db.Games
                                    where allGolfGames.gamename == "golf"
                                    select allGolfGames);
                GolfGamesGridView.DataSource = GolfGames.AsQueryable().ToList();
                GolfGamesGridView.DataBind();
            }

        }

        protected void GolfGamesGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GolfGamesGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GolfGamesGridView.PageIndex = e.NewPageIndex;
            this.getGolfGame();
        }
    }
}

