<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registerU.aspx.cs" Inherits="gestion_de_la_bibliothèque.registerU" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
				<title>图书管理系统-读者注册</title>
				<!--这是管理员登录后进入的界面-->
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
				<a href="用户界面（登录后）.html">首页</a><span>丨</span>
				<a href="">图书资源</a><span>丨</span>
				<a href="">我要借阅</a><span>丨</span>
				<a href="">我要还书</a><span>丨</span>
				<a href="">借阅记录</a>
			</div>
<%--			<div class="topbar-return">
				<a href=""><i class="iconfont">&#xe637;</i>待还书目<span>（0）</span></a>
			</div>--%>
			<div class="topbar-info">
				<a href="登录页面.html">登录</a><span>丨</span>
				<a href="registerU.aspx">注册</a><span>丨</span>
			</div>
			
		</div>
	</div>


    <form id="form1" runat="server">
        <br />
        <h1 style="color: darkslategray; font-size: 32px; margin-left:50px;">读者注册</h1>
        <br />
    
          <p style="font-size: 20px;margin-left:50px;">
         &nbsp;
            <asp:Label ID="Label1" runat="server" Text="注册编号：" ></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
          </p>

         <p style="font-size: 20px;margin-left:50px;">
         &nbsp;
            <asp:Label ID="Label2" runat="server" Text="注册姓名：" ></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
         </p>

         <p style="font-size: 20px;margin-left:50px;">
         &nbsp;
            <asp:Label ID="Label3" runat="server" Text="注册密码："></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
         </p>

         <p style="font-size: 20px;margin-left:50px;">
         &nbsp;
            <asp:Label ID="Label4" runat="server" Text="注册电话：" ></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox>
         </p>

         <br />
         <br />
        <p style="font-size: 15px;margin-left:55px;">
            <asp:Button ID="Button1" runat="server" Text="注册" onclick="zc" Height="22px" style=" margin-bottom: 0px;" Width="94px" />
            <asp:Button ID="Button2" runat="server" Text="返回登录" onclick="fh" Height="23px" style="margin-bottom: 0px;" Width="94px" />
        </p>
    </form>
</body>
</html>
