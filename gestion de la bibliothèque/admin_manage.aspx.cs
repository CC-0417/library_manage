using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gestion_de_la_bibliothèque
{
    public partial class admin_manage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from admin where AdminID='" + TextBox1.Text + "'";
            DataTable dr = d.GetDataTable(s);
            if (TextBox1.Text == "")
            {
                Response.Write("<script>alert('请输入管理员编号')</script>");
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
            string s = "update admin set AdminID='" + TextBox1.Text + "',AdminName='" + TextBox2.Text + "',AdminPwd='" + TextBox3.Text + "'  where AdminID='" + TextBox1.Text + "'";
            DataTable dr = d.GetDataTable(s);
            Response.Write("<script>alert('修改成功！')</script>");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text == "")
            {
                Response.Write("<script>alert('请输入管理员编号')</script>");
            }
            else
            {
                Sqlclass d = new Sqlclass();
                string s = "select * from admin where AdminID='" + TextBox1.Text + "'";
                DataTable dr = d.GetDataTable(s);
                if (dr.Rows.Count > 0)
                {
                    string str = (string)TextBox1.Text;
                    Sqlclass dd = new Sqlclass();
                    string ss = "delete admin where AdminID='" + str + "'";
                    int f = dd.GetRun(ss);
                    Response.Write("<script>alert('删除管理员信息成功')</script> ");

                }
                else
                {
                    Response.Write("<script>alert('无此管理员信息')</script>");

                }
            }

        }


        protected void Button4_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from admin where AdminID='" + TextBox1.Text + "'";
            DataTable dr = d.GetDataTable(s);
            if (dr.Rows.Count > 0)
            {
                Response.Write("<script>alert('该管理员已经存在！')</script>");

            }
            else
            {

                string s1 = "insert into admin (AdminID,AdminName,AdminPwd) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text +  "')";
                int f = d.GetRun(s1);
                Response.Write("<script>alert('添加管理员信息成功')</script>");
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("管理员页面.html");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from admin";
            DataTable dr = d.GetDataTable(s);

            this.GridView1.DataSource = dr;
            this.GridView1.DataBind();
        }

    }
}