<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <a href="ajax/chattotalhistory.mvc?phone=15964245533">点击</a>
    <a href="ajax/chatWithWho.mvc?phone=15964245533">点击查看他自己跟谁聊托</a>
    
        <a href="ajax/insertPostingHistory.mvc?type=0&&content=dsflkjklhhhjk开始觉得很难接受的回复你菊花更多脚后跟ijdaghkjhagndjg已经打过风格化急啊个回归疾风">发表文章</a>
            <a href="ajax/uploadimage.mvc">图片发布地址</a>
            <img alt="" src="userPhoto/2.jpg">
            
        <a href="ajax/turn_personal.mvc">跳转个人中心</a>
             <a href="ajax/deletePosting.mvc?id=7">删除帖子</a>
       
        
        
        
====================================================================================

    Welcome<br/><input id="text" type="text"/>
    <button onclick="send()">发送消息</button>
    <hr/>
    <!--userno:发送消息人的编号-->
    发送人:<div id="userno">15964245555</div>
    接收人：<input type="text" id="usernoto"><br>
    <button onclick="closeWebSocket()">关闭WebSocket连接</button>
    <hr/>
    <div id="message"></div>



<script type="text/javascript">
    var websocket = null;
    var userno=document.getElementById('userno').innerHTML;
    //判断当前浏览器是否支持WebSocket
    if ('WebSocket' in window) {
        websocket = new WebSocket("ws://localhost:8080/ssm_grimm/websocket/"+userno);
    }
    else {
        alert('当前浏览器 Not support websocket')
    }


    //连接发生错误的回调方法
    websocket.onerror = function () {
        setMessageInnerHTML("WebSocket连接发生错误");
    };


    //连接成功建立的回调方法
    websocket.onopen = function () {
        setMessageInnerHTML("WebSocket连接成功");
    }


    //接收到消息的回调方法
    websocket.onmessage = function (event) {
        setMessageInnerHTML(event.data);
    }


    //连接关闭的回调方法
    websocket.onclose = function () {
        setMessageInnerHTML("WebSocket连接关闭");
    }


    //监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常。
    window.onbeforeunload = function () {
        closeWebSocket();
    }


    //将消息显示在网页上
    function setMessageInnerHTML(sendMessage) {
        document.getElementById('message').innerHTML += sendMessage + '<br/>';
    }


    //关闭WebSocket连接
    function closeWebSocket() {
        websocket.close();
    }


    //发送消息
    function send() {
        var message = document.getElementById('text').value;//要发送的消息内容
    
        document.getElementById('message').innerHTML += ("发送人："+userno+'<br/>'+"---"+message) + '<br/>';
        document.getElementById('message').style.color="red";
        var ToSendUserno=document.getElementById('usernoto').value; //接收人编号：4567
        message=message+"|"+ToSendUserno//将要发送的信息和内容拼起来，以便于服务端知道消息要发给谁
        websocket.send(message);
    }

</script>
</body>
</html>