using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
 
public partial class Register : System.Web.UI.Page
{
    string sql = "";
    DBaseConnect obj = new DBaseConnect();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        try
        {
            if (tbid.Text == "")
            {
                lblerr.Text = "Please input Customer ID";
                return;
            }
            if (tbname.Text == "")
            {
                lblerr.Text = "Please input Customer Name";
                return;
            }

            if (tbpassword.Text.Equals(""))
            {
                lblerr.Text = "Please input Customer password";
                return;
            }

            if (tbphone.Text.Length < 10)
            {
                lblerr.Text = "Please input Customer phone no in 10 number";
                return;
            }
            if (tbphone.Text.Substring(0, 2) != "05")
            {
                lblerr.Text = "the phone number must start with 05";
                return;
            }
            if (tbemail.Text == "")
            {
                lblerr.Text = "please input Customer email";
                return;
            }
            if (tbemail.Text.IndexOf("@") == -1 || tbemail.Text.IndexOf(".") == -1)
            {
                lblerr.Text = "please input Customer email in correct format";
                return;
            }

            sql = "Insert into Customer (CustomerID,CustomerName,Phone,Email,Address,password,lat,lan) Values('" + tbid.Text + "','" + tbname.Text + "','" + tbphone.Text + "','" + tbemail.Text + "','" + tbaddress.Text + "','" + tbpassword.Text + "','" + tblat.Text + "','" + tblan.Text + "')";
            if (obj.ExecuteSQL(sql))
            {
                lblerr.Text = "The Record is added";
                lblid.Text = tbid.Text;
            }
            else
            {
                lblerr.Text = "The Record is not added check data";
            }
         
        }
        catch (Exception ex)
        {
            lblerr.Text = ex.Message;
        }
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        tbid.Text = "";
        tbname.Text = "";
        tbpassword.Text = "";
        tbphone.Text = "";
        tblan.Text = "";
        tblat.Text = "";
        tbemail.Text = "";
        tbaddress.Text = "";
        lblerr.Text = "";
    }
}