<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_manage.aspx.cs" Inherits="gestion_de_la_bibliothèque.book_manage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
				<title>图书管理系统-图书管理</title>
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
				<a href="">管理员</a><span>丨</span>
				<%--<a href="" class="sep">消息通知</a>--%>
			</div>
			
		</div>
	</div>

    <form id="form1" runat="server">
        <br />
        <h1 style="color: darkslategray; font-size: 32px; margin-left:50px;">图书管理</h1>
        <br />

         <p style="font-size: 20px;margin-left:50px;">
    &nbsp;
            <asp:Label ID="Label1" runat="server" Text="图书编号："></asp:Label>
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
    &nbsp;
            <asp:Label ID="Label2" runat="server" Text="图书名称："></asp:Label>
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        </p>

        <p style="font-size: 20px;margin-left:50px;">
    &nbsp;
            <asp:Label ID="Label4" runat="server" Text="图书作者："></asp:Label>
            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
    &nbsp;
            <asp:Label ID="Label3" runat="server" Text="图书状态："></asp:Label>
            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
        </p>

        <p style="font-size: 20px;margin-left:50px;">
    &nbsp;
            <asp:Label ID="Label5" runat="server" Text="图书类型："></asp:Label>
            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
    </p>
    <br />
    <br />
    
    <p style="font-size: 15px;margin-left:55px;height: 23px; width: 980px;">
        <asp:Button ID="Button10" runat="server" Text="按编号查询" onclick="Button10_Click" Width="46px" />
        <asp:Button ID="Button11" runat="server" Text="修改" onclick="Button11_Click" Width="46px" />
        <asp:Button ID="Button12" runat="server" Text="删除" onclick="Button12_Click" Width="54px" />
        <asp:Button ID="Button13" runat="server" Text="添加" onclick="Button13_Click" Width="52px" />
        <asp:Button ID="Button14" runat="server" Text="返回" onclick="Button14_Click" Width="53px" />
        <asp:Button ID="Button15" runat="server" Text="所有图书" onclick="Button15_Click" Width="68px" />
        <asp:Button ID="Button16" runat="server" Text="出借情况" onclick="Button16_Click" Width="68px" />
    </p>

    <div style="margin-left:50px;margin-top:20px;">
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
    </div>

    <div style="margin-left:50px;margin-top:20px;">
        <asp:GridView ID="GridView2" runat="server" Width="739px" CellPadding="4" ForeColor="#333333" GridLines="None">
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
