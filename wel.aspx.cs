using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace miniproject
{
    public partial class wel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           Label2.Text = Session["mail"].ToString();
        }
    }
}