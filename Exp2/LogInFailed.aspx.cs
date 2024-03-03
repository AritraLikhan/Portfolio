using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace index
{
    public partial class LogInFailed : System.Web.UI.Page
    {

        /*protected void Page_Load(object sender, EventArgs e)
        {
            
            Response.Redirect("admin_login.aspx");
            //ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Invalid user');", true);
        }*/

        protected void TryAgain_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_login.aspx");
        }

    }
}