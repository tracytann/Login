using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Project_UTS_ASP.Net__2203040162_.Classes;

namespace Project_UTS_ASP.Net__2203040162_
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            DataTable DtLogin = new DataTable();
            DtLogin = ClsLogin.DtLogin(Txtemail.Text, TxtPassword.Text);

            if (DtLogin.Rows.Count != 0)
            {
                Response.Redirect("~/Record.aspx");
            }
            else
            {
                LblWarning.Text = "Email atau password anda salah";
            }
            
        }
    }
}