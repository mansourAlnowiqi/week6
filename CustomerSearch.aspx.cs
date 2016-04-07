using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerSearch : System.Web.UI.Page
{
    string sql = "";
    DBaseConnect obj = new DBaseConnect();
    protected void Page_Load(object sender, EventArgs e)
    {
        Search();
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Search();
    }
    void Search()
    {
        try
        {
            string sql = "Select * From Schfree where  free>0 and  schDate>='" + DateTime.Now.Date.ToString("MM/dd/yyyy") + "' ";
            if (chkt.Checked) sql += " and TypeID='" + cmbtype.SelectedValue + "'";
            if (chka.Checked) sql += " and AreaID='" + cmbarea.SelectedValue + "'";
            if (chki.Checked) sql += " and IntervalID='" + cmbi.SelectedValue + "'";
            if (tbdate.Text != "") sql += " and schDate='"+tbdate.Text +"'";
            SqlDataSource1.SelectCommand = sql;
            SqlDataSource1.DataBind();
            GridView1.DataBind();
        }
        catch { }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            GridViewRow row = GridView1.SelectedRow;
            string id = row.Cells[0].Text;
            sql = "Insert Into CustomerOrder(CustomerID,schID) values('"+Session["id"].ToString()+"','"+id+"')";
            if (obj.ExecuteSQL(sql))
            {
                lblerr.Text = "The Order is Send";
            }
            else
            {
                lblerr.Text = "Can not Send Order";
            }
        }
        catch (Exception ex)
        {
            lblerr.Text = ex.Message;
        }
    }
}