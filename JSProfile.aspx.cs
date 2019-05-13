using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class JSProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
            Label1.Text += Session["User"].ToString();

        Label9.Visible = false;
        Label11.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       /* Session["1"] = TBcomname.Text;
        Session["5"] = TBjobtitle.Text;
        Session["6"] = TBsal.Text;
        Session["4"] = TBjobloc.Text;
        Session["2"] = TBexp.Text;
        Session["3"] = TBfield.Text;
        Session["7"] = TBskills.Text;
        Response.Redirect("JSJobs.aspx");*/

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select * From [Jobs] where(jtitle=@t1 and jloc=@t2)", conn);
        cmd.Parameters.AddWithValue("@t1", TBcomname.Text);
        cmd.Parameters.AddWithValue("@t2", TBjobloc.Text);
        Response.Redirect("JSJobs.aspx");
        conn.Close();

        
       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string fileExtention = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (fileExtention.ToLower() != ".pdf")
            {
                Label11.Visible = true;
                Label11.ForeColor = System.Drawing.Color.Red;
                Label11.Text = "Only .pdf files allowed";
            }
            else
            {
                FileUpload1.SaveAs(Server.MapPath("~/data/" + FileUpload1.FileName));
                Label11.Visible = true;
                Label11.ForeColor = System.Drawing.Color.Purple;
                Label11.Text = "File Uploaded successfully";
            }
        }
        else
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please select a file";
        }
    }
}