<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="return.aspx.cs" Inherits="gestion_de_la_bibliothèque._return" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>图书管理系统-我要还书</title>
    <link rel="shortcut icon" href="favicon1.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/iconfont.css">
    <style>
    body {
            height: 100%;
            background: #fff url(img/beijing2.png) 50% 50% no-repeat;
            background-size: cover;
        }
     </style>
</head>
<body>

      <div class="topbar">
		<div class="container">
			<div class="topbar-nav">
				<!-- <a href="">LibrarySystem </a> -->
				<a href=""><i class="iconfont">&#xe619;</i> 欢迎使用图书管理系统!</a><span>丨</span>
				<a href="用户页面.html">首页</a><span>丨</span>
				<a href="book_index.aspx">图书索引</a><span>丨</span>
				<a href="borrow.aspx">我要借阅</a><span>丨</span>
				<a href="return.aspx">我要还书</a><span>丨</span>
			</div>
			<div class="topbar-return">
				<a href=""><i class="iconfont">&#xe637;</i>待还书目<span>（0）</span></a>
			</div>
			<div class="topbar-info">
				<a href="">用户</a><span>丨</span>
				<a href="" class="sep">消息通知</a>
			</div>
			
		</div>
	</div>

    <form id="form1" runat="server">
        <div>
        <br />
        <h1 style="color: darkslategray; font-size: 32px; margin-left:50px;">我要还书</h1>
        <br />
         <table class="style1" >
            <tr>
           
                <td class="style2">
                    <p style="font-size: 23px;margin-left:50px;">
                    <asp:Label ID="Label1" runat="server" Text="读者编号："></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;                    
                    <asp:Button ID="Button1" runat="server" Text="查询" onclick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="已借书目" onclick="Button2_Click" style="color: black; background-color: #e0e0e0" />
                    </p>
                    
                    <p style="font-size: 20px;margin-left:50px;color:darkgreen;">
                    <asp:Label ID="Label2" runat="server" Text="编号："></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCCCCC" Enabled="False"></asp:TextBox>
&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="姓名："></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCCC" Enabled="False"></asp:TextBox>
                    </p>

          
                </td>
                
            </tr>
            
                
            
            <tr style="margin-left:50px;margin-top:20px;">
                    <asp:GridView ID="GridView1" runat="server" Width="739px" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
            </tr>
           <tr>
                
                <td class="style2">
                    <br />
                     <p style="font-size: 23px;margin-left:50px;">
                    <asp:Label ID="Label4" runat="server" Text="图书编号："></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="查询" onclick="Button3_Click" />
                    </p>

                    <p style="font-size: 20px;margin-left:50px;color:darkgreen;">
                    <asp:Label ID="Label5" runat="server" Text="编号："></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" BackColor="#CCCCCC" Enabled="False"></asp:TextBox>
&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="名称："></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" BackColor="#CCCCCC" Enabled="False"></asp:TextBox>

                    
                    <asp:Label ID="Label7" runat="server" Text="状态："></asp:Label>
                    <asp:TextBox ID="TextBox7" runat="server" BackColor="#CCCCCC" Enabled="False"></asp:TextBox>
&nbsp;
                     </p>

                    <p style="font-size: 20px;margin-left:50px;color:darkgreen;">
                    <asp:Label ID="Label8" runat="server" Text="作者："></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server" BackColor="#CCCCCC" Enabled="False"></asp:TextBox>
                
&nbsp;
                    <asp:Label ID="Label9" runat="server" Text="类型："></asp:Label>
                    <asp:TextBox ID="TextBox9" runat="server" BackColor="#CCCCCC" Enabled="False"></asp:TextBox>
                    </p>                
                   
                     <p style="font-size: 25px;margin-left:50px;">
                    <asp:Button ID="Button4" runat="server" Text="确定还书" onclick="Button4_Click" 
                        style="color: black; background-color: #e0e0e0" />
                     </p>
                </td>
               
            </tr>





        </table>
        </div>
    </form>
</body>
</html>
