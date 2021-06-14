using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gestion_de_la_bibliothèque
{
    public partial class _return : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e) //按编号搜索读者信息，自动填入核验
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from reader where UserID='" + TextBox1.Text + "'";
            DataTable dr = d.GetDataTable(s);
            //在textbox中显示
            if (dr.Rows.Count > 0)
            {

                TextBox2.Text = dr.Rows[0][0].ToString();
                TextBox3.Text = dr.Rows[0][1].ToString();


            }

            if (TextBox1.Text == "")
            {
                Response.Write("<script>alert('请输入读者编号')</script>");
            }

        }

        protected void Button2_Click(object sender, EventArgs e) //显示读者已借书籍
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from loan where UserID='" + TextBox1.Text + "'";
            DataTable dr = d.GetDataTable(s);

            //在gridview中显示
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

        protected void Button3_Click(object sender, EventArgs e) //按编号搜索图书信息，自动填入核验
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from book where BookID='" + TextBox4.Text + "'";
            DataTable dr = d.GetDataTable(s);
            //在textbox中显示
            if (dr.Rows.Count > 0)
            {


                TextBox5.Text = dr.Rows[0][0].ToString();
                TextBox6.Text = dr.Rows[0][1].ToString();
                TextBox7.Text = dr.Rows[0][2].ToString();
                TextBox8.Text = dr.Rows[0][3].ToString();
                TextBox9.Text = dr.Rows[0][4].ToString();
            }

            if (TextBox4.Text == "")
            {
                Response.Write("<script>alert('请输入图书编号！')</script>");
            }

        }

        protected void Button4_Click(object sender, EventArgs e) //还书并删除借出信息，更改图书状态
        {
                Sqlclass d = new Sqlclass();
                string s = "select * from loan where UserID='" + TextBox1.Text + "'and BookID='" + TextBox4.Text + "'";
                DataTable dr = d.GetDataTable(s);


                if (dr.Rows.Count > 0)
                {
                    string str = (string)TextBox6.Text;
                    Sqlclass dd = new Sqlclass();
                    string ss = "delete  from loan where UserID='" + TextBox1.Text + "'and BookID='" + TextBox4.Text + "'";
                    int f = dd.GetRun(ss);
                    Response.Write("<script>alert('还书成功!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('操作不存在')</script>");

                }

                Sqlclass d2 = new Sqlclass();
                string s3 = "update book set BookState='在馆' where BookID='" + TextBox4.Text + "'";
                int f2 = d2.GetRun(s3);
        }



        }
}