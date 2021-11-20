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
   
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=Khwezii;Initial Catalog=PhotoAlbum;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void fill()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from Images",conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            viewImages1.DataSource = ds;
            viewImages1.DataBind();
        }


        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            String path;
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "Images/" + FileUpload1.FileName);
                path = FileUpload1.FileName;
                SqlCommand cmd = new SqlCommand("Insert into Images Values('"+path+"','"+DateTime.Now+"')",conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

            }
        }

        protected void viewBtn_Click(object sender, EventArgs e)
        {
            fill();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx"); 
        }

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                SqlCommand sqlcomm = new SqlCommand();
                String sqlQuery = "select * from Images where Image like '%'+@Image+'%'";
                sqlcomm.CommandText = sqlQuery;
                sqlcomm.Connection = conn;
                sqlcomm.Parameters.AddWithValue("Image", SearchBox.Text);
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
                sda.Fill(dt);
                viewImages1.DataSource = dt;
                viewImages1.DataBind();
                conn.Close();

            }
            catch(SqlException ex)
            {
                ExLabel.Text = ex.Message;
            }
            
        }

        protected void deletebtn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataAdapter da;
                SqlCommand comm = new SqlCommand();
                da = new SqlDataAdapter();
                conn.Open();
                String query = "DELETE FROM [Images] WHERE Image LIKE '" + DeleteBox.Text + "'";
                comm = new SqlCommand(query, conn);
                da.DeleteCommand = new SqlCommand(query, conn);
                da.DeleteCommand.ExecuteNonQuery();

                comm.Dispose();
                conn.Close();
                fill();

            }
            catch(SqlException ex)
            {
                ExLabel.Text = ex.Message;
            }
        }

        protected void DownloadLink_Click(object sender, EventArgs e)
        {
            
        }
    }
}