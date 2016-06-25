using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/**
 * Author: Naga Rimmalapudi and Chandra Reddy
 * Student ID: 200277598 and 200275643
 * Date: June 22, 2016
 * website name: http://gametrackerpart3comp2007.azurewebsites.net/
 * This is a contact page
 */
namespace GameTracker_Part3
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            // this is a placeholder for working code that sends email 
            Response.Redirect("Default.aspx");
        }
    }
}