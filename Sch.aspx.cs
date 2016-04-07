using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Sch : System.Web.UI.Page
{
    string sql = "";
    DBaseConnect obj = new DBaseConnect();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        tbid.Text = "";
        tbdate.Text = "";
        tbprice.Text = "";
        tbprice.Text = "";
        tbno.Text = "";
        lblerr.Text = "";
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        try
        {
          
            if (tbdate.Text == "")
            {
                lblerr.Text = "Please input Date ";
                return;
            }

            if (tbprice.Text.Equals(""))
            {
                lblerr.Text = "Please input Tank Price";
                return;
            }

            
            if (tbno.Text == "")
            {
                lblerr.Text = "please input Tank No";
                return;
            }


            sql = "Insert into Sch (schDate,TypeID,Price,TankNo,AreaID,IntervalID) Values('" + tbdate.Text + "','" + cmbtype.SelectedValue + "','" + tbprice.Text + "','" + tbno.Text + "','" + cmbarea.SelectedValue + "','"+cmbi.SelectedValue+"')";
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
            tbdate.Text = row.Cells[1].Text;
            tbprice.Text = row.Cells[2].Text;
            lblid.Text = tbid.Text;
            sql = "Select * from Sch where SchID='" + lblid.Text + "'";
            DataTable tb = obj.ExecuteData(sql);
            if (tb != null && tb.Rows.Count > 0)
            {
                tbno.Text = tb.Rows[0]["TankNo"].ToString();
                tbprice.Text = tb.Rows[0]["Price"].ToString();
                cmbarea.SelectedValue = tb.Rows[0]["AreaID"].ToString();
                cmbtype.SelectedValue = tb.Rows[0]["TypeID"].ToString();
                cmbi.SelectedValue = tb.Rows[0]["IntervalID"].ToString();
                tbdate.Text = DateTime.Parse(tb.Rows[0]["schDate"].ToString()).Date.ToString("MM/dd/yyyy");
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
                lblerr.Text = "Please Select schedule ID";
                return;
            }
            if (tbprice.Text.Equals(""))
            {
                lblerr.Text = "Please input Tank Price";
                return;
            }
            if (tbno.Text == "")
            {
                lblerr.Text = "please input Tank No";
                return;
            }

            sql = "Update Sch set schDate='" + tbdate.Text + "',IntervalID='"+cmbi.SelectedValue+"',TypeID='" + cmbtype.SelectedValue + "',TankNo='" + tbno.Text + "',Price=" + tbprice.Text + ",AreaID='" + cmbarea.SelectedValue + "'";
            sql += " where SchID='" + lblid.Text + "'";
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

            sql = "Delete from Sch where SchID='" + lblid.Text + "'";
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