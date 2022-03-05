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
    public partial class adminilaclar : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source= ENES; Initial Catalog=norepiweb; Integrated Security=True");
        SqlCommand cmd;
        SqlDataReader read;
        SqlCommand delete;
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["ilacid"];
                islem = Request.QueryString["islem"];
            }
            baglanti.Open();
            cmd = new SqlCommand("Select * from dbo.ilaclar", baglanti);
            read = cmd.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();
            read.Close();
            
            if (islem == "sil")
            {
                delete = new SqlCommand("Delete From dbo.ilaclar where ilacid=@p1", baglanti);
                delete.Parameters.AddWithValue("@p1", id);
                delete.ExecuteNonQuery();
                baglanti.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("Select * from dbo.ilaclar where ilacAdi=@p1 or ilacEtkenMadde=@p1 or uygulamaSekli=@p1 or ilacTur=@p1 or ilacDoz=@p1", baglanti);
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            read = cmd.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();
            read.Close();
        }

       
    }
}