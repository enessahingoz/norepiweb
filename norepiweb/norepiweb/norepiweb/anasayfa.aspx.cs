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
    public partial class anasayfa : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source= ENES; Initial Catalog=norepiweb; Integrated Security=True");

        SqlCommand cmd;
        SqlCommand cmd2;
        SqlDataReader read;
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();
            cmd = new SqlCommand("Select * from dbo.hastaliklar", baglanti);
            read = cmd.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();
            read.Close();
            cmd2 = new SqlCommand("Select * from dbo.ilaclar", baglanti);
            read = cmd2.ExecuteReader();
            DataList2.DataSource = read;
            DataList2.DataBind();
            read.Close();
        }
    }
}