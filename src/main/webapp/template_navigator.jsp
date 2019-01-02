<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
    #a_designation{/*网站名称*/
        color:darkgrey;font-size:200%;
    }
    a{
        text-decoration: none;
    }
    .a_basic {
            color: #222;
            font-size: 14px;
            font-family: 微软雅黑,宋体,sans-serif,arial,'Helvetica Neue',Helvetica;
            margin-right: 28px;
    }
    .a_basic:hover{
         color:palevioletred;
    }

    .td_menu a{
        text-align: center;
    	display:block;
    	width:94px;
        font-size: 16px;
        font-family: 微软雅黑,宋体,sans-serif,arial,'Helvetica Neue',Helvetica;
        color: white;
        padding-top: 3px;
        padding-bottom: 3px;
        margin-bottom: 5px;
    }
    .td_menu a:hover{
        color: palevioletred;
        background-color: white;

    }
    .td_menu{
        width:94px;
        height:46px;
    }


</style>
</head>
<body>
    <div style="margin-right:auto;margin-left:auto;width:980px"><!--整个头部框-->
        <div style="width:980px; height:80px"><!--头部上框-->
            <div style="float:left;margin-top:20px;height:40px;">
                <a id="a_designation" href="index.jsp">育婴</a><!--网站名称-->
            </div>
            <table style="float:right">
                <tr style="height:15px;margin-top:30px; display:block;">
                    <td><a class="a_basic" href="">昵称</a></td>
                    <td><a class="a_basic" href="">个人中心</a></td>
                    <td><a class="a_basic" href="">消息</a></td>
                    <td><a class="a_basic" href="">注册</a></td>
                    <td><a class="a_basic" href="">登录/注销</a></td>
                </tr>
            </table>
        </div>
        <div style="width:980px;height:46px;background:palevioletred"><!--头部下框-->
            <table>
                <tr style="display:block;height:46px;">
                    <td style="margin-left:20px;" class="td_menu"><a class="a_menu" href="">首页</a></td>
                    <td class="td_menu"><a class="a_menu" href="">帖子中心</a></td>
                    <td class="td_menu"><a class="a_menu" href="">发帖子</a></td>
                    <td class="td_menu"><a class="a_menu" href="">我的帖子</a></td>
                </tr>
            </table>
        </div>
    </div>

</body>
</html>