using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gestion_de_la_bibliothèque
{
    public partial class borrow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from reader where UserID='" + TextBox1.Text + "'";
            DataTable dr = d.GetDataTable(s);
            //在textbox中显示
            if (dr.Rows.Count > 0)
            {
                //Session["UserID"] = dr.Rows[0][0].ToString();

                TextBox2.Text = dr.Rows[0][0].ToString();
                TextBox3.Text = dr.Rows[0][1].ToString();


            }

            if (TextBox1.Text == "")
            {
                Response.Write("<script>alert('请输入读者编号')</script>");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from book where BookID='" + TextBox4.Text + "'";
            DataTable dr = d.GetDataTable(s);
            //在textbox中显示
            if (dr.Rows.Count > 0)
            {
                //Session["BookID"] = dr.Rows[0][0].ToString();

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


        protected void Button3_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from loan where UserID='" + TextBox1.Text + "'and BookID='"+ TextBox4.Text + "'";
            DataTable dr = d.GetDataTable(s);
            if (dr.Rows.Count > 0)
            {
                Response.Write("<script>alert('此书已借出！')</script>");

            }
            else
            {

                string s1 = "insert into loan(UserID,BookID,UserName,BookName,BookState) values ('" + TextBox1.Text + "','" + TextBox4.Text + "','" + TextBox3.Text + "','" + TextBox6.Text + "','出借')";
                int f1 = d.GetRun(s1);



                Response.Write("<script>alert('借书成功!')</script>");
            }

            Sqlclass d2 = new Sqlclass();
            string s3 = "update book set BookState='出借' where BookID='" + TextBox4.Text + "'";
            int f2 = d2.GetRun(s3);
        }

    }
}