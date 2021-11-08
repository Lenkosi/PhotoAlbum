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
    public partial class SignUp : System.Web.UI.Page
    {
        public SqlCommand comm;
        public SqlDataAdapter adpt;
        public DataSet ds;
        public SqlConnection conn;
        public String sql;

        public String connection = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\KHWEZI\Documents\PhotoAlbum.mdf;Integrated Security=True;Connect Timeout=30";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUpBtn_Click(object sender, EventArgs e)
        {
            try 
            {
                //code adds the clients details on to the clients table in the database
                String Fname = NameBox.Text;
                String Surname = SurnameBox.Text;
                String Email = EmailBox.Text;
                String Password = SignPassBox.Text;
                String Username = UserSignUpTxt.Text;
                conn = new SqlConnection(connection);
                conn.Open();
                sql = $"INSERT INTO Clients (Name, Surname, Email, Password, username) Values('{Fname}', '{Surname}','{Email}', '{Password}', '{Username}' )";
                comm = new SqlCommand(sql, conn);
                adpt = new SqlDataAdapter();
                adpt.InsertCommand = comm;
                adpt.InsertCommand.ExecuteNonQuery();
                conn.Close();
                //if(Session["Username"].ToString() !=null && Session["Password"].ToString() != null) 
                //{
                    Response.Redirect("loglnPage.aspx");
                //}
            }
            catch(Exception ex)
            {
                ExceptionLBL.Text = ex.Message;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //clears everthing on the Textboxes
            NameBox.Text = String.Empty;
            SurnameBox.Text = String.Empty;
            EmailBox.Text = String.Empty;
            UserSignUpTxt.Text = String.Empty;
            SignPassBox.Text = String.Empty;
            ConfirmBox.Text = String.Empty;
        }

        protected void CancelBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("loglnPage.aspx");
        }
    }
}