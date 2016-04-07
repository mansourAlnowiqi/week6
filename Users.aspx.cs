using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Users : System.Web.UI.Page
{
    string sql = "";
    DBaseConnect obj = new DBaseConnect();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        tbid.Text = "";
        tbname.Text = "";
        tbpassword.Text = "";
        tbphone.Text = "";
        tbemail.Text = "";
        lblerr.Text = "";
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        try
        {
            if (tbid.Text == "")
            {
                lblerr.Text = "Please input User ID";
                return;
            }
            if (tbname.Text == "")
            {
                lblerr.Text = "Please input User Name";
                return;
            }

            if (tbpassword.Text.Equals(""))
            {
                lblerr.Text = "Please input User password";
                return;
            }

            if (tbphone.Text.Length < 10)
            {
                lblerr.Text = "Please input User phone no in 10 number";
                return;
            }
            if (tbphone.Text.Substring(0, 2) != "05")
            {
                lblerr.Text = "the phone number must start with 05";
                return;
            }
            if (tbemail.Text == "")
            {
                lblerr.Text = "please input User email";
                return;
            }
            if (tbemail.Text.IndexOf("@") == -1 || tbemail.Text.IndexOf(".") == -1)
            {
                lblerr.Text = "please input User email in correct format";
                return;
            }

            sql = "Insert into Customer (CustomerID,CustomerName,Phone,Email,password) Values('" + tbid.Text + "','" + tbname.Text + "','" + tbphone.Text + "','" + tbemail.Text + "','" + tbpassword.Text + "')";
            if (obj.ExecuteSQL(sql))
            {
                lblerr.Text = "The Record is added";
                lblid.Text = tbid.Text;
            }
            else
            {
                lblerr.Text = "The Record is not added check data";
            }
            SqlDataSource1.DataBind();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            lblerr.Text = ex.Message;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            GridViewRow row = GridView1.SelectedRow;
            tbid.Text = row.Cells[0].Text;
            tbname.Text = row.Cells[1].Text;
            tbphone.Text = row.Cells[2].Text;
            lblid.Text = tbid.Text;
            sql = "Select * from Customer where CustomerID='" + lblid.Text + "'";
            DataTable tb = obj.ExecuteData(sql);
            if (tb != null && tb.Rows.Count > 0)
            {
                tbemail.Text = tb.Rows[0]["Email"].ToString();
            }

            lblerr.Text = "";
        }
        catch (Exception ex)
        {
            lblerr.Text = ex.Message;
        }
    }


    protected void btnupdate_Click(object sender, EventArgs e)
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
                lblerr.Text = "please input User email";
                return;
            }
            if (tbemail.Text.IndexOf("@") == -1 || tbemail.Text.IndexOf(".") == -1)
            {
                lblerr.Text = "please input User email in correct format";
                return;
            }
            sql = "Update Customer set CustomerName='" + tbname.Text + "',Phone='" + tbphone.Text + "',Email='" + tbemail.Text + "'";
            if (tbpassword.Text != "") sql += " ,password='" + tbpassword.Text + "'";
            sql += " where CustomerID='" + lblid.Text + "'";
            if (obj.ExecuteSQL(sql))
            {
                lblerr.Text = "The Record is Updated";
                lblid.Text = tbid.Text;
            }
            else
            {
                lblerr.Text = "The Record is not Updated check data";
            }
            SqlDataSource1.DataBind();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            lblerr.Text = ex.Message;
        }
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        try
        {
            if (tbid.Text == "")
            {
                lblerr.Text = "Please input Record from Grid";
                return;
            }

            sql = "Delete from Customer where CustomerID='" + lblid.Text + "'";
            if (obj.ExecuteSQL(sql))
            {
                lblerr.Text = "The Record is Deleted";
            }
            else
            {
                lblerr.Text = "The Record is not Deleted check data";
            }
            SqlDataSource1.DataBind();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            lblerr.Text = ex.Message;
        }
    }
}