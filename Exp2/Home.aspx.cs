using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Exp2
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProjectsData();
            }
        }

        private void BindProjectsData()
        {
            // Connection string from web.config
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

            // SQL query to select data from your table
            string query = "SELECT Project_Heading, Project_Details, Project_Link FROM Projects";

            // List to store project objects
            List<Project> projects = new List<Project>();

            // Open connection and execute query
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    // Read data and populate project objects
                    while (reader.Read())
                    {
                        Project project = new Project
                        {
                            Title = reader["Project_Heading"].ToString(),
                            Description = reader["Project_Details"].ToString(),
                            Link = reader["Project_Link"].ToString()
                        };
                        projects.Add(project);
                    }
                }
            }

            // Bind project data to the repeater
            rptProjects.DataSource = projects;
            rptProjects.DataBind();
        }


        protected void Admin_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_login.aspx");
        }


        protected void AddContact(object sender, EventArgs e)
        {
            /*SqlConnection con = new SqlConnection(strcon);
          con.Open();
           SqlCommand com = new SqlCommand("INSERT INTO [ProjectList].[dbo].[Projects]([Project_Heading],[Project_Details],[Project_Link]) VALUES(@Project_Heading,@Project_Details,@Project_Link)", con);
           com.Parameters.AddWithValue("@Project_Heading", ProNamebx.Text.Trim());
           com.Parameters.AddWithValue("@Project_Details", ProDet.Text.Trim());
           com.Parameters.AddWithValue("@Project_Link", ProLinkbx.Text.Trim());

           com.ExecuteNonQuery();

           con.Close();*/

            SqlConnection con = new SqlConnection("Server=LAPTOP-2AUH8QS2\\SQLEXPRESS;Database=Contacts;Trusted_Connection=True");
            con.Open();

            // Create a new SqlCommand
            SqlCommand cmd = new SqlCommand("INSERT INTO contacts (Full_Name,Email,Phone,Message) VALUES (@Full_Name,@Email,@Phone,@Message)", con);

            // Add values to the SqlCommand parameters
            cmd.Parameters.AddWithValue("@Full_Name", TextBox1.Text.ToString());
            cmd.Parameters.AddWithValue("@Email", TextBox2.Text.ToString());
            cmd.Parameters.AddWithValue("@Phone", TextBox3.Text.ToString());
            cmd.Parameters.AddWithValue("@Message",textArea1.Value);


            // Open the connection


            // Execute the SqlCommand
            cmd.ExecuteNonQuery();

            // Close the connection
            con.Close();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }



        /*protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("admin_login.aspx");
            }
        }*/






    }
}
