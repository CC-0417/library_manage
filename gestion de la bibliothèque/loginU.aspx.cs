using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gestion_de_la_bibliothèque
{
    public partial class loginU : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn;
            conn = new SqlConnection(@"server =.;database=library2; user id = sa; password = 110158;");
            conn.Open();
            //if (conn.State == ConnectionState.Open)
            //{
            //    Response.Write("数据插入成功！");
            //}
            var iid = Request.Form["iid"];
            var ipwd = Request.Form["ipwd"];
            //Response.Write(iname);

            string sql3 = string.Format("select * from [reader] where UserID='{0}'", iid);
            SqlCommand cmd3 = new SqlCommand(sql3, conn);
            if (cmd3.ExecuteScalar() == null)
            {
                Response.Write("不存在该用户！");
            }
            else
            {
                string sql4 = string.Format("select * from [reader] where UserPwd='{0}'", ipwd);
                SqlCommand cmd4 = new SqlCommand(sql4, conn);
                if (cmd4.ExecuteScalar() == null)
                {
                    Response.Write("密码输入不正确！");
                }
                else
                {
                    Response.End();
                }
            }
        }
    }
}