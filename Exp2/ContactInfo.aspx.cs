﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exp2
{
    public partial class ContactInfo : System.Web.UI.Page
    {
        /*string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("admin_login.aspx");
            }
        }


        protected void ProjectAddButton_Click(object sender, EventArgs e)
        {
            *//*SqlConnection con = new SqlConnection(strcon);
           con.Open();
            SqlCommand com = new SqlCommand("INSERT INTO [ProjectList].[dbo].[Projects]([Project_Heading],[Project_Details],[Project_Link]) VALUES(@Project_Heading,@Project_Details,@Project_Link)", con);
            com.Parameters.AddWithValue("@Project_Heading", ProNamebx.Text.Trim());
            com.Parameters.AddWithValue("@Project_Details", ProDet.Text.Trim());
            com.Parameters.AddWithValue("@Project_Link", ProLinkbx.Text.Trim());

            com.ExecuteNonQuery();

            con.Close();*//*

            SqlConnection con = new SqlConnection("Server=LAPTOP-2AUH8QS2\\SQLEXPRESS;Database=ProjectList;Trusted_Connection=True");
            con.Open();

            // Create a new SqlCommand
            SqlCommand cmd = new SqlCommand("INSERT INTO Projects (Project_Heading, Project_Details, Project_Link) VALUES (@Project_Heading, @Project_Details, @Project_Link)", con);

            // Add values to the SqlCommand parameters
           *//* cmd.Parameters.AddWithValue("@Project_Heading", ProNamebx.Text);
            cmd.Parameters.AddWithValue("@Project_Details", ProDet.Text);
            cmd.Parameters.AddWithValue("@Project_Link", ProLinkbx.Text);
*//*
            // Open the connection


            // Execute the SqlCommand
            cmd.ExecuteNonQuery();

            // Close the connection
            con.Close();

        }

        protected void LogOut_Click(object sender, EventArgs e)
        {

            *//*Response.Redirect("Dashboard.aspx");
            Session.RemoveAll();*//*

            HttpContext.Current.Session.Abandon();

            // Remove the session cookie
            HttpContext.Current.Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));
            Response.Redirect("Dashboard.aspx");
        }

        protected void ViewContact_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }*/




        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = "Server=LAPTOP-2AUH8QS2\\SQLEXPRESS;Database=Contacts;Trusted_Connection=True";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM contacts", con))
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }

    }
}