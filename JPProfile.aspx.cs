using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class RecruiterProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Company"] != null)
            Label1.Text += Session["Company"].ToString();
        TextBox1.Text = Session["Company"].ToString();
        Session["one"] = TextBox1.Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            conn.Open();
            string insert = "insert into Jobs (cname, jtitle, sal, jloc, exp, phno, field, skills) values (@Cname, @Jtitle, @Sal, @Jloc, @Exp, @Phno, @Field, @Skills)";
            SqlCommand com = new SqlCommand(insert, conn);
            com.Parameters.AddWithValue("@Cname", Session["Company"].ToString());
            com.Parameters.AddWithValue("@Jtitle", TBjtitle.Text);
            com.Parameters.AddWithValue("@Sal", TBsal.Text);
            com.Parameters.AddWithValue("@Jloc", TBjloc.Text);
            com.Parameters.AddWithValue("@Exp", TBexp.Text);
            com.Parameters.AddWithValue("@Phno", TBphno.Text);
            com.Parameters.AddWithValue("@Field", TBfield.Text);
            com.Parameters.AddWithValue("@Skills", TBskills.Text);
            com.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("JPJobs.aspx");
        }
        catch(Exception ex)
        {
            Response.Write("ERROR"+ex.ToString());
        }
    }
   
}