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
    public partial class login : System.Web.UI.Page
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


          
            string sql = string.Format("select * from admin where AdminID='{0}'", iid);
            SqlCommand cmd = new SqlCommand(sql, conn);
            if (cmd.ExecuteScalar() == null)
            {
                Response.Write("不存在该管理员！");
            }
            else
            {
                string sql2 = string.Format("select * from admin where AdminPwd='{0}'", ipwd);
                SqlCommand cmd2 = new SqlCommand(sql2, conn);
                if(cmd2.ExecuteScalar() == null)
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