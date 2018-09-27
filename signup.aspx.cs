using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
public partial class signup : System.Web.UI.Page
{
    Database db = new Database();
   
    protected void Page_Load(object sender, EventArgs e)
    {
      //  string _connectionstring = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Register.mdf;Integrated Security=True";
       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string que = "insert into register(name, email, subject, country, message, password) VALUES('" + _name.Text + "','" + _email.Text + "','" + _subject.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + _message.Text + "','" + _password.Text + "')";
        db.insert(que);
        Response.Redirect("login.aspx");
        Response.Write("Registration Successfully");
       
        Response.Write("<script>alert('Data Submited Successfully')</script>");
    }
}