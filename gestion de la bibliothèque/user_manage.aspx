<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_manage.aspx.cs" Inherits="gestion_de_la_bibliothèque.readerM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
				<title>图书管理系统-读者管理</title>
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
				<a><i class="iconfont">&#xe619;</i> 欢迎使用图书管理系统!</a><span>丨</span>
				<a href="管理员页面.html">首页</a><span>丨</span>
				<a href="book_manage.aspx">图书管理</a><span>丨</span>
				<a href="user_manage.aspx">读者管理</a><span>丨</span>
				<a href="admin_manage.aspx">管理员变动</a><span>丨</span>
			</div>
			<div class="topbar-return">
				<a href=""><i class="iconfont">&#xe637;</i>消息通知<span>（0）</span></a>
			</div>
			<div class="topbar-info">
				<<a href="">管理员</a><span>丨</span>
				<%--<a href="" class="sep">消息通知</a>--%>
			</div>
			
		</div>
	</div>


    <form id="form1" runat="server">
        <br />
        <h1 style="color: darkslategray; font-size: 32px; margin-left:50px;">读者管理</h1>
        <br />
        <p style="font-size: 20px;margin-left:50px;">
    &nbsp;
            <asp:Label ID="Label1" runat="server" Text="读者编号："></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>

        <p style="font-size: 20px;margin-left:50px;">
    &nbsp;
            <asp:Label ID="Label2" runat="server" Text="读者姓名："></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>

        <p style="font-size: 20px;margin-left:50px;">
    &nbsp;
            <asp:Label ID="Label3" runat="server" Text="读者密码："></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>

        <p style="font-size: 20px;margin-left:50px;">
    &nbsp;
            <asp:Label ID="Label4" runat="server" Text="读者电话："></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <br />
        <br />
        <p style="font-size: 15px;margin-left:55px;">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="按编号查询" />
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="修改" />
            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="删除" />       
            <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="添加" />
            <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="返回" />
            <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="显示所有" />
        </p>
        <br />
        <br />
        <div style="margin-left:50px;">
            <asp:GridView ID="GridView1" runat="server" Width="795px" CellPadding="4" ForeColor="#333333" GridLines="None">
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
        </div>
    </form>
</body>
</html>
