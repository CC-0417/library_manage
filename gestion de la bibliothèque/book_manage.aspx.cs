using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gestion_de_la_bibliothèque
{
    public partial class book_manage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from book where BookID='" + TextBox11.Text + "'";
            DataTable dr = d.GetDataTable(s);
            if (TextBox11.Text == "")
            {
                Response.Write("<script>alert('请输入图书编号')</script>");
            }
            else
            {
                this.GridView1.DataSource = dr;
                this.GridView1.DataBind();
            }
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "update book set BookID='" + TextBox11.Text + "',BookName='" + TextBox12.Text + " ', BookState='" + TextBox13.Text + " ', BookAuthor='" + TextBox14.Text + "',BookType='" + TextBox15.Text + "'  where BookID='" + TextBox11.Text + "'";
            DataTable dr = d.GetDataTable(s);
            Response.Write("<script>alert('修改成功！')</script>");
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            if (TextBox11.Text == "")
            {
                Response.Write("<script>alert('请输入图书编号')</script>");
            }
            else
            {
                Sqlclass d = new Sqlclass();
                string s = "select * from book where BookID='" + TextBox11.Text + "'";
                DataTable dr = d.GetDataTable(s);
                if (dr.Rows.Count > 0)
                {
                    string str = (string)TextBox11.Text;
                    Sqlclass dd = new Sqlclass();
                    string ss = "delete book where BookID='" + str + "'";
                    int f = dd.GetRun(ss);
                    Response.Write("<script>alert('删除图书信息成功')</script> ");

                }
                else
                {
                    Response.Write("<script>alert('无此图书信息')</script>");

                }
            }
        }
        
        protected void Button13_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from book where BookID='" + TextBox11.Text + "'";
            DataTable dr = d.GetDataTable(s);
            if (dr.Rows.Count > 0)
            {
                Response.Write("<script>alert('图书编号重复！')</script>");

            }
            else
            {

                string s1 = "insert into book(BookID,BookName,BookState,BookAuthor,BookType) values ('" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "')";
                int f = d.GetRun(s1);
                Response.Write("<script>alert('添加图书信息成功')</script>");
            }
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            Response.Redirect("管理员页面.html");
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from book";
            DataTable dr = d.GetDataTable(s);

            this.GridView1.DataSource = dr;
            this.GridView1.DataBind();
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from loan";
            DataTable dr = d.GetDataTable(s);

            this.GridView2.DataSource = dr;
            this.GridView2.DataBind();
        }
    }
}