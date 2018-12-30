<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
body, html {
	margin: 0;
	width: 100%;
	height: 100%;
	padding: 0
}


#iframe_content {
	width: 100%;
	height: 90%
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>


<link rel="stylesheet" href="/ssm_grimm/assets/materialize/css/materialize.min.css"
	media="screen,projection" />
<!-- Bootstrap Styles-->
<link href="/ssm_grimm/assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="/ssm_grimm/assets/css/font-awesome.css" rel="stylesheet" />
<!-- Morris Chart Styles-->
<link href="/ssm_grimm/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
<!-- Custom Styles-->
<link href="/ssm_grimm/assets/css/custom-styles.css" rel="stylesheet" />
<script type="text/javascript">

function deleteuser(aa){
	
	
	  $.ajax({ 

	    data:{"connect":aa
	    
	    
	    },
	  

	    type:"POST", 
	    async: false,

	    dataType: 'json',

	    url:"/ssm_grimm/ajax/deleteUser.mvc", 

	    success:function(data){ 
	    	if(data.state==0)
	    		{
	    		
	    		
	    		alert("不能修改自己");
	    		
	    		}
	    	if(data.state==1)
    		{
	    		window.parent.location.href='/ssm_grimm/ajax/getUserList.mvc';
    		}
    	
	    	if(data.state==2)
    		{alert("修改失败");
    		
    		}
	    	if(data.state==3)
    		{alert("恢复成功");
    		window.parent.location.href='/ssm_grimm/ajax/getUserList.mvc';
    		
    		}
	    	if(data.state==4)
    		{alert("恢复失败");
    		
    		
    		}
    	
	    	
	    
             
	    },

	     error:function(data){ 

	        alert("后台问题"); 

	    }

	    }); 
 
   }

</script>
</head>
<body style="height:100%">


	<div id="page-inner" style="width:100%; height:100%">

		<div class="row" style="width:100%; height:100%">
			<div class="col-md-12" style="width:100%; height:100%">
				<!-- Advanced Tables -->
				<div class="card" style="width:100%; height:100%"">
					<div class="card-action">用户列表</div>
					<div class="card-content" style="width:100%; height:100%">
						<div class="table-responsive" style="width:100%; height:100%">
							<table class="table table-striped table-bordered table-hover"
								id="dataTables-example" style="width:100%; height:100%">
								<thead>
									<tr>
									   
										<th>手机号</th>
										<th>名字</th>
										
										<th>性別</th>
									
										
										<th>用户状态</th>
										<th>删除</th>

									
									

									</tr>
								</thead>
								<tbody>
								
	                              <c:forEach items="${userlist}" var="user">

										<tr class="odd gradeX">

											 <td>${user.phone}</td>
										     <td>${user.uName}</td>
										   
											 <td>${user.ugender}</td>
											 
					<c:if test="${user.ustate==0}">
				 <td>普通用户</td>
					</c:if> 
						<c:if test="${user.ustate==1}">
				 <td>管理员用户</td>
					</c:if> 
						<c:if test="${user.ustate==2}">
				 <td>被注销</td>
					</c:if> 
					
						<c:if test="${user.ustate==2}">
				<td id="${user.uconnect}" onclick="deleteuser(this.id)">恢复用戶</td>
					</c:if> 
							<c:if test="${user.ustate!=2}">
				<td id="${user.uconnect}" onclick="deleteuser(this.id)">删除用戶</td>
					</c:if> 
										
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>

					</div>
				</div>
				<!--End Advanced Tables -->
			</div>
		</div>
		<!-- /. ROW  -->

		<!-- /. ROW  -->

		<!-- /. ROW  -->


	</div>
	<!-- /. PAGE INNER  -->

	<!-- /. PAGE WRAPPER  -->
	<!-- /. WRAPPER  -->
	<!-- JS Scripts-->


	<!-- jQuery Js -->
	<script src="/ssm_grimm/assets/js/jquery-1.10.2.js"></script>

	<!-- Bootstrap Js -->
	<script src="/ssm_grimm/assets/js/bootstrap.min.js"></script>

	<script src="/ssm_grimm/assets/materialize/js/materialize.min.js"></script>

	<!-- Metis Menu Js -->
	<script src="/ssm_grimm/assets/js/jquery.metisMenu.js"></script>
	<!-- Morris Chart Js -->
	<script src="/ssm_grimm/assets/js/morris/raphael-2.1.0.min.js"></script>
	<!--<script src="assets/js/morris/morris.js"></script>  -->


	<script src="/ssm_grimm/assets/js/easypiechart.js"></script>
	<script src="/ssm_grimm/assets/js/easypiechart-data.js"></script>

	<script src="/ssm_grimm/assets/js/Lightweight-Chart/jquery.chart.js"></script>
	<!-- DATA TABLE SCRIPTS -->
	<script src="/ssm_grimm/assets/js/dataTables/jquery.dataTables3.js"></script>
	<script src="/ssm_grimm/assets/js/dataTables/dataTables.bootstrap.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').dataTable();
		})
	</script>



	<!-- Custom Js -->
	<!--<script src="assets/js/custom-scripts.js"></script> -->
	<!-- 点击弹出输入框 -->








</body>
</html>






































