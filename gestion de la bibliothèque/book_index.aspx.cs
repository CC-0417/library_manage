using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gestion_de_la_bibliothèque
{
    public partial class book_index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
    
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from book where BookType='" + TextBox1.Text + "'";
            DataTable dr = d.GetDataTable(s);
            if (TextBox1.Text == "")
            {
                Response.Write("<script>alert('请输入图书类型')</script>");
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
            string s = "select * from book where BookName='" + TextBox2.Text + "'";
            DataTable dr = d.GetDataTable(s);
            if (TextBox2.Text == "")
            {
                Response.Write("<script>alert('请输入图书名称')</script>");
            }
            else
            {
                this.GridView1.DataSource = dr;
                this.GridView1.DataBind();
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from book where BookAuthor='" + TextBox3.Text + "'";
            DataTable dr = d.GetDataTable(s);
            if (TextBox3.Text == "")
            {
                Response.Write("<script>alert('请输入图书作者')</script>");
            }
            else
            {
                this.GridView1.DataSource = dr;
                this.GridView1.DataBind();
            }
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from book";
            DataTable dr = d.GetDataTable(s);

            this.GridView1.DataSource = dr;
            this.GridView1.DataBind();
        }


    }
}