using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("File", typeof(string));
        dt.Columns.Add("Size", typeof(string));
        dt.Columns.Add("Type", typeof(string));

        foreach (string strFile in Directory.GetFiles(Server.MapPath("~/data/")))
        {
            FileInfo fi = new FileInfo(strFile);
            dt.Rows.Add(fi.Name, fi.Length, fi.Extension);
        }

        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Download")
        {
            Response.Clear();
            Response.ContentType = "application/octect-stream";
            Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
            Response.TransmitFile(Server.MapPath("~/data/") + e.CommandArgument);
            Response.End();
        }
    }
}