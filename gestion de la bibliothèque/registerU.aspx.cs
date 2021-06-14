using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gestion_de_la_bibliothèque
{
    public partial class registerU : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void zc(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from reader where UserID='" + TextBox1.Text + "'";
            DataTable dr = d.GetDataTable(s);
            if (dr.Rows.Count > 0)
            {
                Response.Write("<script>alert('注册编号已存在！请重新输入')</script>");

            }
            else
            {

                string s1 = "insert into reader(UserID,UserName,UserPwd,UserPhone) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
                int f = d.GetRun(s1);
                Response.Write("<script>alert('添加用户账户成功')</script>");
            }
        }

        protected void fh(object sender, EventArgs e)
        {
            Response.Redirect("登录页面.html");
        }

    }
}