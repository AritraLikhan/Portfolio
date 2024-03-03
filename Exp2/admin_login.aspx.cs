using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace index
{
    public partial class admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection("Server=LAPTOP-2AUH8QS2\\SQLEXPRESS;Database=CMS;Trusted_Connection=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from Users where username=@username and password=@password", con);
                SqlCommand cmdCheck = new SqlCommand("SELECT COUNT(*) FROM Users", con);
                int userCount = (int)cmdCheck.ExecuteScalar();
                //    SqlCommand cmd = new SqlCommand("Select * from Users where username='"+TxtUsername+ "' and password='"+TxtPassword+"'", con);
               
            
                 cmd.Parameters.AddWithValue("@username", TxtUsername.Text);
                 cmd.Parameters.AddWithValue("@password", TxtPassword.Text);
                SqlDataReader reader = cmd.ExecuteReader();
                /*SqlDataAdapter da = new SqlDataAdapter(cmd);
                  DataSet ds = new DataSet();
                  da.Fill(ds, "Users");*/
               
                    if (reader.Read() && userCount!=0)
                    {
                        Session["username"] = TxtUsername.Text;
                        Session["password"] = TxtPassword.Text;
                        Response.Redirect("Dashboard.aspx");
                    }
                
               
                //SqlDataAdapter da = new SqlDataAdapter(cmd);
              //  DataSet ds = new DataSet();
              //  da.Fill(ds, "Users");
             //   if (ds.Tables["Users"].Rows.Count != 0)
              //  {
              //      Response.Redirect("Dashboard.aspx");

              //  }
                else
                {
                    Response.Redirect("LogInFailed.aspx");
                    //  TxtUsername.Text = "Invalid User!";
                    //  ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "document.getElementById('TxtUsername').placeholder = 'Invalid user'; document.getElementById('TxtUsername').style.color = 'red';", true);
                }
            }
            else
            {

            }

            /* if (Session["InvalidUser"] != null && (bool)Session["InvalidUser"])
             {
                 lblMessage.Text = "Invalid user";
             }
             else
             {
                 lblMessage.Text = "";
             }
 */
        }


    }
}