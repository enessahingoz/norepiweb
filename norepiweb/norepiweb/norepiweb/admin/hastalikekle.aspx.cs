using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using norepiweb;

namespace norepiweb.admin
{
    public partial class hastalikekle : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=ENES; Initial Catalog=norepiweb; Integrated Security=True");
        SqlCommand cmd;
        SqlDataReader read;
        SqlCommand delete;
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["hastalikid"];
                islem = Request.QueryString["islem"];
            }
            baglanti.Open();
            cmd = new SqlCommand("Select * From dbo.hastaliklar ", baglanti);
            read = cmd.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();
            read.Close();
            if (islem == "sil")
            {
                delete = new SqlCommand("Delete From dbo.hastaliklar where hastalikid=@p1", baglanti);
                delete.Parameters.AddWithValue("@p1", id);
                delete.ExecuteNonQuery();
                baglanti.Close();
            }

            Panel1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("../images/" + FileUpload1.FileName));
            cmd = new SqlCommand("insert into dbo.hastaliklar(hastalikadi, hastalikaciklama, hastalikresim) values (@p1,@p2, @p3) ", baglanti);
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3", "~/images/" + FileUpload1.FileName);



            cmd.ExecuteNonQuery();
            baglanti.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }
    }
}