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
    public partial class ilacekle : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=ENES; Initial Catalog=norepiweb; Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();
            cmd = new SqlCommand("Select * From dbo.ilaclar ", baglanti);
            
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("insert into dbo.ilaclar (ilacAdi, uygulamaSekli, ilacDoz, ilacEtkenMadde, ilacTur) values (@p1,@p2, @p3, @p4, @p5) ", baglanti);
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p4", TextBox4.Text);
            cmd.Parameters.AddWithValue("@p5", TextBox5.Text);
            
            
            cmd.ExecuteNonQuery();
            baglanti.Close();
        }
    }
}