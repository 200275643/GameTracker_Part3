using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GameTracker_Part3.Models;
using System.Web.ModelBinding;
/**
 * Author: Naga Rimmalapudi and Chandra Reddy
 * Student ID: 200277598 and 200275643
 * Date: June 22, 2016
 * website name: http://gametrackerpart3comp2007.azurewebsites.net/
 * This displays the editor page the games
 */
namespace GameTracker_Part3
{
    public partial class GameEditing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((!IsPostBack) && (Request.QueryString.Count > 0))
            {
                this.GetGame();
            }
        }

        protected void GetGame()
        {
            // populate the form with existing data from the db
            int Id = Convert.ToInt32(Request.QueryString["Id"]);

            // connect to the EF DB
            using (chandureddyEntities db = new chandureddyEntities())
            {
                // populate a game instance with the ID from the URL parameter
                Game updatedGame = (from Game in db.Games
                                          where Game.Id == Id
                                          select Game).FirstOrDefault();

                // map the game properties to the form controls
                if (updatedGame != null)
                {
                    GameNameTextBox.Text = updatedGame.gamename;
                    HomeTeamTextBox.Text = updatedGame.hometeam;
                    HomeTeamPointsTextBox.Text = updatedGame.hometeampoints.ToString();
                    AwayTeamPointsTextBox.Text = updatedGame.awayteampoints.ToString();
                    AwayTeamTextBox.Text = updatedGame.awayteam;
                    AttendanceTextBox.Text = updatedGame.attendance.ToString();
                    VenueTextBox.Text = updatedGame.venue;

                }
            }
        }


        protected void CancelButton_Click(object sender, EventArgs e)
        {
            // Redirect back to Students page
            Response.Redirect("~/GameEditPage.aspx");
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            // Use EF to connect to the server
            using (chandureddyEntities db = new chandureddyEntities())
            {
                // use the game model to create a new student object and
                // save a new record
                Game newGame = new Game();

                int Id = 0;

                if (Request.QueryString.Count > 0)
                {
                    // get the id from url
                    Id = Convert.ToInt32(Request.QueryString["Id"]);

                    // get the current game from EF DB
                    newGame = (from Game in db.Games
                                  where Game.Id == Id
                                  select Game).FirstOrDefault();
                }

                // add form data to the new game record
                newGame.gamename = GameNameTextBox.Text;
                newGame.hometeam = HomeTeamTextBox.Text;
                newGame.hometeampoints = Convert.ToInt32(HomeTeamPointsTextBox.Text);
                newGame.awayteampoints = Convert.ToInt32(AwayTeamPointsTextBox.Text);
                newGame.awayteam = AwayTeamTextBox.Text;
                newGame.attendance = Convert.ToInt32(AttendanceTextBox.Text);
                newGame.venue = VenueTextBox.Text;
                
                // use LINQ to ADO.NET to add / insert new game into the database

                // check to see if a new game is being added
                if (Id == 0)
                {
                    db.Games.Add(newGame);
                }

                // save our changes - run an update
                db.SaveChanges();

                // Redirect back to the updated gameedit page
                Response.Redirect("~/GameEditPage.aspx");
            }
        }
    }
}