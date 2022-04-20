using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MultiGrid
{
    public partial class MultiGrid : System.Web.UI.Page
    {
        BLL_GridData objBLL_GridData = new BLL_GridData();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        public void BindData()
        {
            DataSet ds = null;
            ds = objBLL_GridData.GetData();

            if (ds.Tables[0].Rows.Count > 0)
            {
                gv1.DataSource = ds.Tables[0];
                gv1.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                gv1.DataSource = ds.Tables[0];
                gv1.DataBind();
                gv1.Rows[0].Cells.Clear();
                gv1.Rows[0].Cells.Add(new TableCell());
                gv1.Rows[0].Cells[0].ColumnSpan = ds.Tables[0].Columns.Count;
                gv1.Rows[0].Cells[0].Text = "No Data found...!";
                gv1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }

            if (ds.Tables[1].Rows.Count > 0)
            {
                gv2.DataSource = ds.Tables[1];
                gv2.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[1].NewRow());
                gv2.DataSource = ds.Tables[1];
                gv2.DataBind();
                gv2.Rows[0].Cells.Clear();
                gv2.Rows[0].Cells.Add(new TableCell());
                gv2.Rows[0].Cells[0].ColumnSpan = ds.Tables[1].Columns.Count;
                gv2.Rows[0].Cells[0].Text = "No Data found...!";
                gv2.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }
    }
}