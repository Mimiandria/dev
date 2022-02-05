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
    public partial class registration : System.Web.UI.Page
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
            if (uname.Text == "" || psw.Text == "")
            {
                msg.Text = "Fields can't be empty!!";
            }
            else
            {
                try
                {
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "Select * from log";
                    cmd.ExecuteNonQuery();

                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    bool flag = false;
                    int i = 0;
                    while (i < dt.Rows.Count)
                    {
                        string username = dt.Rows[i][1].ToString();
                        string password = dt.Rows[i][6].ToString();
                        if (uname.Text == username.Trim() && psw.Text == password.Trim())
                        {
                            flag = true;
                            break;
                        }
                        else
                        {
                            flag = false;
                            i++;
                        }
                    }
                    if (flag == true)
                    {
                        Session["mail"] = uname.Text;
                        Response.Redirect("wel.aspx");
                    }
                    else
                    {
                        msg.Text = "Wrong password or mailID";
                    }
                }
                catch (Exception ee)
                {
                    msg.Text = ee.Message;
                }
            }
        }
    }
}