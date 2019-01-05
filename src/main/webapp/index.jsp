<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>育婴门户网站</title>
<style>
/*当对象内文本溢出时显示省略标记*/
table{
   
    table-layout:fixed;/* 只有定义了表格的布局算法为fixed，下面td的定义才能起作用。 */
}
td{
    width:100%;
    word-break:keep-all;/* 不换行 */
    white-space:nowrap;/* 不换行 */
    overflow:hidden;/* 内容超出宽度时隐藏超出部分的内容 */
    text-overflow:ellipsis;/* 当对象内文本溢出时显示省略标记(...) ；需与overflow:hidden;一起使用。*/
}

	
* {margin:0; padding:0;}
.flexslider {
	margin: 0px auto 20px;
	position: relative;
	width: 100%;
	height: 482px;
	overflow: hidden;
	zoom: 1;
	margin-left: 0
}

.flexslider .slides li {
	width: 100%;
	height: 100%;
}

.flex-direction-nav a {
	width: 70px;
	height: 70px;
	line-height: 99em;
	overflow: hidden;
	margin: -35px 0 0;
	display: block;
	background: url(images/ad_ctr.png) no-repeat;
	position: absolute;
	top: 50%;
	z-index: 10;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity=0);
	-webkit-transition: all .3s ease;
	border-radius: 35px;
}

.flex-direction-nav .flex-next {
	background-position: 0 -70px;
	right: 0;
}

.flex-direction-nav .flex-prev {
	left: 0;
}

.flexslider:hover .flex-next {
	opacity: 0.8;
	filter: alpha(opacity=25);
}

.flexslider:hover .flex-prev {
	opacity: 0.8;
	filter: alpha(opacity=25);
}

.flexslider:hover .flex-next:hover,
.flexslider:hover .flex-prev:hover {
	opacity: 1;
	filter: alpha(opacity=50);
}

.flex-control-nav {
	width: 100%;
	position: absolute;
	bottom: 10px;
	text-align: center;
}

.flex-control-nav li {
	margin: 0 2px;
	display: inline-block;
	zoom: 1;
	*display: inline;
}

.flex-control-paging li a {
	background: url(images/dot.png) no-repeat 0 -16px;
	display: block;
	height: 16px;
	overflow: hidden;
	text-indent: -99em;
	width: 16px;
	cursor: pointer;
}

.flex-control-paging li a.flex-active,
.flex-control-paging li.active a {
	background-position: 0 0;
}

.flexslider .slides a img {
	width: 100%;
	height: 482px;
	display: block;
}
#banner_tabs{



}
</style>
</head>
<script src="js/jquery.min.js"></script>
<script src="js/slider.js"></script>
<script type="text/javascript">
$(function() {
	var bannerSlider = new Slider($('#banner_tabs'), {
		time: 5000,
		delay: 400,
		event: 'hover',
		auto: true,
		mode: 'fade',
		controller: $('#bannerCtrl'),
		activeControllerCls: 'active'
	});
	$('#banner_tabs .flex-prev').click(function() {
		bannerSlider.prev()
	});
	$('#banner_tabs .flex-next').click(function() {
		bannerSlider.next()
	});
})
</script>
<body>

<c:import url="template_navigator.jsp"></c:import>
<div><!-- 导航栏下的body大框 -->

</div>


<div id="banner_tabs" class="flexslider" style="width: 72%;margin-right:auto;margin-left:auto;text-align: center;">
	<ul class="slides">
		<li>
			<a title="" target="_blank" href="#">
				<img width="1920" height="482" alt="" style="background: url(images/banner1.jpg) no-repeat center;" src="images/alpha.png">
			</a>
		</li>
		<li>
			<a title="" href="#">
				<img width="1920" height="482" alt="" style="background: url(images/banner2.jpg) no-repeat center;" src="images/alpha.png">
			</a>
		</li>
		<li>
			<a title="" href="#">
				<img width="1920" height="482" alt="" style="background: url(images/banner3.jpg) no-repeat center;" src="images/alpha.png">
			</a>
		</li>
	</ul>
	<ul class="flex-direction-nav">
		<li><a class="flex-prev" href="javascript:;">Previous</a></li>
		<li><a class="flex-next" href="javascript:;">Next</a></li>
	</ul>
	<ol id="bannerCtrl" class="flex-control-nav flex-control-paging">
		<li><a>1</a></li>
		<li><a>2</a></li>
		<li><a>2</a></li>
	</ol>
</div>

      ===========================================================热门帖子
      
      <table class="table table-striped table-bordered table-hover"
								id="dataTables-example" style="width:100%; height:100%">
								<thead>
									<tr>
									   
										<th>id</th>
										<th>content</th>
										
										<th>rank</th>
										

									</tr>
								</thead>
								<tbody>
								
	                              <c:forEach items="${hotpostlist}" var="hostinf">

										<tr class="odd gradeX">    	<td>  
                                         <form action="" method="post" id="postid${hostinf.id}">
                                         	
                                   <input type="text" id="postid" name="postid"  value="${hostinf.id}" readonly="readonly" style="border:none""/> 
                                        
                                         </form>
										 </td>
										<td  id="testDIV"><a href="showPostDetail.mvc" class="postid${hostinf.id} postid"> ${hostinf.content}</a></td>    
										   
											 <td>${hostinf.num}</td>
											 </tr> 
					
									</c:forEach>
								</tbody>
							</table>
<script type="text/javascript">
 
 $(function(){
 
  $(".postid").click(function(){
  
   var href = $(this).attr("href");
    var classfora= $(this).attr("class");
    var formid=classfora.split(" ");
 
   $("#"+formid[0]).attr("action", href).submit();	
 
   return false;
 
  });
 
 })
 
</script>

</body>
</html>