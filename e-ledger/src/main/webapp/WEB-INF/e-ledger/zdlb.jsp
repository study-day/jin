<%@ page language="java" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- dhx -->
<link rel="stylesheet" href="/style/dist/css/suite.min.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/style/dist/css/bootstrap.min.css">


<title>材料计算器</title>
</head>
<body>


	<!-- Content here -->
	<!-- topnav -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">材料计算器</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">账单
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">记账</a></li>
				<!-- 		<!-- <li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Dropdown </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Action</a> <a
								class="dropdown-item" href="#">Another action</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Something else here</a>
						</div></li>
					<li class="nav-item"><a class="nav-link disabled" href="#"
						tabindex="-1" aria-disabled="true">Disabled</a></li> -->
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>
	<!-- 表格 -->

	<div style="height: 500px; width: 100%"  id="grid_container"></div>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<!-- 	<script type="text/javascript" src="/style/dist/js/jquery.slim.min.js"></script> -->
	<script type="text/javascript" src="/style/dist/js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="/style/dist/js/popper.min.js"></script>
	<script type="text/javascript" src="/style/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/style/dist/js/suite.min.js"></script>



</body>
<script type="text/javascript">
	// creating dhtmlxGrid
	// creating dhtmlxGrid

	// creating dhtmlxGrid
	var grid = new dhx.Grid("grid_container", {
		columns : [ {
			width : 150,
			id : "ledgerId",
			header : [ {
				text : "ledgerId"
			} ]
		}, {
			width : 150,
			id : "tuzhibianhao",
			header : [ {
				text : "图号"
			} ]
		}, {
			width : 150,
			id : "tuzhimingcheng",
			header : [ {
				text : "名称"
			} ]
		}, {
			width : 150,
			id : "xingzhuang",
			header : [ {
				text : "形状"
			} ]
		}, {
			width : 150,
			id : "guige",
			header : [ {
				text : "规格"
			} ]
		}, {
			width : 150,
			id : "cailiao",
			header : [ {
				text : "材料"
			} ]
		}, {
			width : 150,
			id : "midu",
			header : [ {
				text : "密度"
			} ]
		}, {
			width : 150,
			id : "shuliang",
			header : [ {
				text : "数量"
			} ]
		}, {
			width : 150,
			id : "danjia",
			header : [ {
				text : "单价"
			} ]
		}, {
			width : 150,
			id : "zhongliang",
			header : [ {
				text : "总量"
			} ]
		}, {
			width : 150,
			id : "tiji",
			header : [ {
				text : "体积"
			} ]
		}, {
			width : 150,
			id : "zongjia",
			header : [ {
				text : "总价"
			} ]
		}, {
			width : 150,
			id : "create_time",
			header : [ {
				text : "创建时间"
			} ]
		} ],
		headerRowHeight : 50
	});
	grid.data.load("cxzd");
 

/* 	$(function() {
		$.ajax({
			url : "cxzd",
			data : {},
			type : "POST",
			dataType : "json",
			success : function(data2) {
				console.log(data2.list)
				grid.data.parse(data2.list);
			}
		});
	}) */
</script>
</html>

