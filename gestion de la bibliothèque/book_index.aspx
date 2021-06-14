<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_index.aspx.cs" Inherits="gestion_de_la_bibliothèque.book_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>图书管理系统</title>
	<link rel="shortcut icon" href="favicon1.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/iconfont.css">
	<link rel="stylesheet" href="css/review.css">
	<script src="js/jquery-1.12.4.js"></script>
	<script src="js/review.js"></script>
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
				<<a href="">用户</a><span>丨</span>
				<a href="" class="sep">消息通知</a>
			</div>
			
		</div>
	</div>

    <form id="form1" runat="server">

        <br />
        <h1 style="color: darkslategray; font-size: 32px; margin-left:50px;">图书索引</h1>
        <br />


        <p style="font-size: 20px;margin-left:50px;">
        &nbsp;
                <asp:Label ID="Label1" runat="server" Text="输入图书类型："></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="查询" onclick="Button1_Click" Width="46px" />
 </p>

   <p style="font-size: 20px;margin-left:50px;">
        &nbsp;
                <asp:Label ID="Label2" runat="server" Text="输入图书名称："></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="查询" onclick="Button2_Click" Width="46px" />
        </p>

       <p style="font-size: 20px;margin-left:50px;">
       &nbsp;
                <asp:Label ID="Label3" runat="server" Text="输入图书作者："></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" Text="查询" onclick="Button3_Click" Width="46px" />
           </p>

           <p style="font-size: 15px;margin-left:55px;height: 23px; width: 980px;">
                <asp:Button ID="Button4" runat="server" Text="查看所有图书" onclick="Button4_Click" Width="104px" />

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
    </form>
</body>
</html>

