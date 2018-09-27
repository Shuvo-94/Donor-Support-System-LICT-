using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
public partial class search_donor : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        string _connectionstring = WebConfigurationManager.ConnectionStrings["finalcon"].ConnectionString;
        con = new SqlConnection(_connectionstring);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from donor where bd='" + _bg.SelectedItem + "' and status='active'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);

        //Bind the control width repeaters

        GridView1.DataSource = ds;
        GridView1.DataBind();

       
    }
}