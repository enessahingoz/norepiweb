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
    public partial class oneriler : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=ENES; Initial Catalog=norepiweb; Integrated Security=True");
        SqlCommand cmd;
        SqlDataReader read;
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();
            cmd = new SqlCommand("Select * From dbo.oneriler", baglanti);
            read = cmd.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();
            read.Close();
            

        }
    }
}