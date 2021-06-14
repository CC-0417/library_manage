using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using gestion_de_la_bibliothèque;

namespace gestion_de_la_bibliothèque
{
    public partial class readerM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from reader where UserID='" + TextBox1.Text + "'";
            DataTable dr = d.GetDataTable(s);
            if (TextBox1.Text == "")
            {
                Response.Write("<script>alert('请输入读者编号')</script>");
            }
            else
            {
                this.GridView1.DataSource = dr;
                this.GridView1.DataBind();
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "update reader set UserID='" + TextBox1.Text + "',UserName='" + TextBox2.Text + "',UserPwd='" + TextBox3.Text + " ', UserPhone='" + TextBox4.Text + "'  where UserID='" + TextBox1.Text + "'";
            DataTable dr = d.GetDataTable(s);
            Response.Write("<script>alert('修改成功！')</script>");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text == "")
            {
                Response.Write("<script>alert('请输入读者编号')</script>");
            }
            else
            {
                Sqlclass d = new Sqlclass();
                string s = "select * from reader where UserID='" + TextBox1.Text + "'";
                DataTable dr = d.GetDataTable(s);
                if (dr.Rows.Count > 0)
                {
                    string str = (string)TextBox1.Text;
                    Sqlclass dd = new Sqlclass();
                    string ss = "delete reader where UserID='" + str + "'";
                    int f = dd.GetRun(ss);
                    Response.Write("<script>alert('删除读者信息成功')</script> ");

                }
                else
                {
                    Response.Write("<script>alert('无此读者信息')</script>");

                }
            }

        }


        protected void Button4_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from reader where UserID='" + TextBox1.Text + "'";
            DataTable dr = d.GetDataTable(s);
            if (dr.Rows.Count > 0)
            {
                Response.Write("<script>alert('该读者已经存在！')</script>");

            }
            else
            {

                string s1 = "insert into reader(UserID,UserName,UserPwd,UserPhone) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
                int f = d.GetRun(s1);
                Response.Write("<script>alert('添加读者信息成功')</script>");
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("管理员页面.html");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from reader";
            DataTable dr = d.GetDataTable(s);

            this.GridView1.DataSource = dr;
            this.GridView1.DataBind();
        }
        
    }
}