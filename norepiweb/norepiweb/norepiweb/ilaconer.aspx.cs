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
    public partial class ilaconer : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=ENES; Initial Catalog=norepiweb; Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();
            cmd = new SqlCommand("Select * From dbo.oneriler", baglanti);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("insert into dbo.oneriler (oneriAd, oneriTur) values (@p1,@p2) ", baglanti);
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            Response.Write("Öneriniz gönderildi, teşekkürler.");



            cmd.ExecuteNonQuery();
            baglanti.Close();
        }
    }
}