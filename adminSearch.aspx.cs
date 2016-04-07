using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminSearch : System.Web.UI.Page
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
            string sql = "Select * From CustomerOrderData where  schID!=0  ";
            if (chkt.Checked) sql += " and TypeID='" + cmbtype.SelectedValue + "'";
            if (chka.Checked) sql += " and AreaID='" + cmbarea.SelectedValue + "'";
            if (chki.Checked) sql += " and IntervalID='" + cmbi.SelectedValue + "'";
            if (tbdate.Text != "") sql += " and schDate='" + tbdate.Text + "'";
            SqlDataSource1.SelectCommand = sql;
            SqlDataSource1.DataBind();
            GridView1.DataBind();
        }
        catch { }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       
    }
}