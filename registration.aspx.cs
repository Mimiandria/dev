using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace miniproject
{
    public partial class registration1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\source\repos\miniproject\App_Data\dblogreg.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            else
            {
                con.Open();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (uname.Text=="" || fname.Text=="" || dob.Text=="" || addr.Text=="" || phone.Text=="" || psw.Text == "")
            {
                msg.Text = "Fields can't be empty!!";
            }
            else { 
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into log values('" + Convert.ToString(uname.Text) + "'," +
                "'" + Convert.ToString(fname.Text) + "','" + Convert.ToDateTime(dob.Text) + "','" + Convert.ToInt64(phone.Text) + "'," +
                " '" + Convert.ToString(addr.Text) + "'," +
                "'" + Convert.ToString(psw.Text) + "')";
                cmd.ExecuteNonQuery();
            uname.Text = "";
            fname.Text = "";
            dob.Text = "";
            addr.Text = "";
            phone.Text = "";
            psw.Text = "";
               Response.Redirect("login.aspx");
            }
        }

    }
    
}