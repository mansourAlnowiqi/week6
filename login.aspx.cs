using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class login : System.Web.UI.Page
{
    string sql = "";
    DBaseConnect obj = new DBaseConnect();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            if (tbid.Text == "")
            {
                lblerr.Text = "Please input user ID";
                return;
            }
            if (tbpass.Text == "")
            {
                lblerr.Text = "Please input user password";
                return;
            }
            sql = "Select * From Users where UserID='"+tbid.Text +"' and Password='"+tbpass.Text +"'";
            DataTable tb = obj.ExecuteData(sql);
            if (tb != null && tb.Rows.Count > 0)
            {
                Session["id"] = tbid.Text;
                Response.Redirect("~\\adminhome.aspx");
            }
            else
            {
                sql = "Select * From Customer where CustomerID='" + tbid.Text + "' and password='" + tbpass.Text + "'";
                tb = obj.ExecuteData(sql);
                if (tb != null && tb.Rows.Count > 0)
                {
                    Session["id"] = tbid.Text;
                    Response.Redirect("~\\CustomerHome.aspx");
                }
                else
                {
                    lblerr.Text = "the user id or password is error ";

                }

            }
            
        }
        catch (Exception ex)
        {

            lblerr.Text = ex.Message;
        }
    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
        Response.Redirect("~\\register.aspx");
    }
}