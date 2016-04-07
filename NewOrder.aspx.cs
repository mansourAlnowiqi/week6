using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewOrder : System.Web.UI.Page
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
            string sql = "Select * From CustomerOrderData where    OrderState=0 ";
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
        try
        {
            if (e.CommandName.ToString() == "send")
            {
                int no = Int32.Parse(e.CommandArgument.ToString());
                sql = " Update CustomerOrder set OrderState=1 where OrderID="+GridView1.Rows[no].Cells[0].Text;
                obj.ExecuteSQL(sql);
            }
            if (e.CommandName.ToString() == "reject")
            {
                int no = Int32.Parse(e.CommandArgument.ToString());
                sql = " Update CustomerOrder set OrderState=2 where OrderID=" + GridView1.Rows[no].Cells[0].Text;
                obj.ExecuteSQL(sql);
            }
            SqlDataSource1.DataBind();
            GridView1.DataBind();
        }
        catch { }
    }
}