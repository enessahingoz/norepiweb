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
    public partial class admingiris : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=ENES; Initial Catalog=norepiweb;Integrated Security=True");
       
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from dbo.admin where kullanıcıAdı=@p1 and şifre=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session["kullanıcıAdı"] = dr["kullanıcıAdı"].ToString();
                Session["şifre"] = dr["şifre"].ToString();
                Response.Redirect("admin/adminilaclar.aspx");
            }
            else
            {
                Response.Write("Kullanıcı Bilgileriniz Hatalı.");
            }
        }
    }
}