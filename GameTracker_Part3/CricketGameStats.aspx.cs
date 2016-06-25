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
 * This displays cricket game stats
 */

namespace GameTracker_Part3
{
    public partial class CricketGameStats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["username"] != null)
            {
                
            }

            if (!IsPostBack)
            {
                this.getCricketGame();
            }
        }

        /*<summary>
         *This Method gets the games data and puts it into the proper gridView 
         * </summary>
         * 
         * @methods getGame
         * @return {void}
         */
        protected void getCricketGame()
        {
            using (chandureddyEntities db = new chandureddyEntities())
            {
                var CricketGames = (from allCricketGames in db.Games
                                    where allCricketGames.gamename == "cricket"
                                    select allCricketGames);
                CricketGamesGridView.DataSource = CricketGames.AsQueryable().ToList();
                CricketGamesGridView.DataBind();
            }

        }

        protected void CricketGamesGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void CricketGamesGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            CricketGamesGridView.PageIndex = e.NewPageIndex;
            this.getCricketGame();
        }
    }
}
