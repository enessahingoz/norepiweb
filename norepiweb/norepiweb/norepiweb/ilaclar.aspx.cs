using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using norepiweb;

namespace norepiweb
{
    public partial class ilaclar : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source= ENES; Initial Catalog=norepiweb; Integrated Security=True");
       
        SqlCommand cmd;
        SqlDataReader read;
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();
            cmd = new SqlCommand("Select * from dbo.ilaclar", baglanti);
            read = cmd.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();
            read.Close();
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