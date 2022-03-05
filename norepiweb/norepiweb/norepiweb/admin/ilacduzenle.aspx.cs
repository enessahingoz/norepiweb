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
    public partial class ilacduzenle : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=ENES; Initial Catalog=norepiweb;Integrated Security=True");
        string id;
        SqlCommand cmd;
        SqlDataReader dr;
        SqlCommand cmd1;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["ilacid"];

            if (Page.IsPostBack == false)
            {
                baglanti.Open();
                cmd = new SqlCommand("Select * From dbo.ilaclar where ilacid=@p1 ", baglanti);
                cmd.Parameters.AddWithValue("@p1", id);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox7.Text = dr[1].ToString();
                    TextBox8.Text = dr[2].ToString();
                    TextBox9.Text = dr[3].ToString();
                    TextBox10.Text = dr[4].ToString();
                    TextBox11.Text = dr[5].ToString();
                }
                baglanti.Close();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            cmd1 = new SqlCommand("update dbo.ilaclar set ilacAdi=@p1, uygulamaSekli=@p2, ilacDoz=@p3, ilacEtkenMadde=@p4, ilacTur=@p5 where ilacid=@p6", baglanti);
            cmd1.Parameters.AddWithValue("@p1", TextBox7.Text);
            cmd1.Parameters.AddWithValue("@p2", TextBox8.Text);
            cmd1.Parameters.AddWithValue("@p3", TextBox9.Text);
            cmd1.Parameters.AddWithValue("@p4", TextBox10.Text);
            cmd1.Parameters.AddWithValue("@p5", TextBox11.Text);
            cmd1.Parameters.AddWithValue("@p6", id);
            cmd1.ExecuteNonQuery();
            baglanti.Close();
        }
    }
}