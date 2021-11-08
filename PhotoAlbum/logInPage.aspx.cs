using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PhotoAlbum
{
	public partial class LogInPage : System.Web.UI.Page
	{

        public SqlCommand comm;
        public SqlDataAdapter adpt;
        public DataSet ds;
        public SqlDataReader DataReader;
        public SqlConnection conn;
        public String sql;
        public String username = "";
        public String password = "";

        public String connection = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\KHWEZI\Documents\PhotoAlbum.mdf;Integrated Security=True;Connect Timeout=30";
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
        public void loginQuery(String sql, String connection)
        {
            conn = new SqlConnection(connection);
            conn.Open();
            comm = new SqlCommand(sql, conn);
            DataReader = comm.ExecuteReader();
        }

        protected void LogInBtn_Click(object sender, EventArgs e)
        {
            try 
            {
                username = UsernameBox.Text;
                password = Passwordbox.Text;

                String ClientSql = @"SELECT username, Password FROM Clients";

                loginQuery(ClientSql, connection);
                while (DataReader.Read()) 
                {
                    //The if statements will log in the user if the password and username are found in the database
                    if(username == DataReader.GetString(0) && password == DataReader.GetString(1))
                    {
                        Session["Username"] = username;
                        Session["Password"] = password;
                        //add the dashboard page here
                    }
                    else if(username !=DataReader.GetString(0) && password != DataReader.GetString(1))
                    {
                        VaildCredlbl.Text = "Incorrect Username please Try again";
                    }
                    else if(username == DataReader.GetString(0) && password != DataReader.GetString(1))
                    {
                        VaildCredlbl.Text = "Incorrect Username Please Try again";
                    }
                }

                conn.Close();

            }catch(Exception ex)
            {
                ExceptLbl.Text = ex.Message;
            }

        }

        protected void NoSignUpLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}