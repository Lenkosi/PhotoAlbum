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
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\KHWEZI\Documents\PhotoAlbum.mdf;Integrated Security=True;Connect Timeout=30");

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
    }
}