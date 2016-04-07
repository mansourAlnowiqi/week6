using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Area : System.Web.UI.Page
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
        lblerr.Text = "";
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        try
        {

            if (tbname.Text == "")
            {
                lblerr.Text = "Please input Area Name";
                return;
            }
            sql = "Insert into Area (AreaName) Values('"+tbname.Text+"')";
            if (obj.ExecuteSQL(sql))
            {
                lblerr.Text = "The Record is added";
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
                lblerr.Text = "Please input Record from Grid";
                return;
            }
            if (tbname.Text == "")
            {
                lblerr.Text = "Please input Area Name";
                return;
            }
            sql = "Update Area set AreaName='" + tbname.Text + "' where AreaID='"+tbid.Text+"'";
            if (obj.ExecuteSQL(sql))
            {
                lblerr.Text = "The Record is Updated";
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
            
            sql = "Delete from Area where AreaID='" + tbid.Text + "'";
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