<%@ page language="java" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/style/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/style/layui/css/layui.css">
<script type="text/javascript" src="/style/dist/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/style/dist/js/popper.min.js"></script>
<script type="text/javascript" src="/style/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/style/layui/layui.js"></script>

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

	<!-- 查询字段 -->

	<fieldset style="margin: 20px 20px 0px 20px;">
		<div class="form-row">
			<div class="form-group  col-md-2">
				<label for="input_tuzhimingcheng">名称</label> <input type="text"
					class="form-control form-control-lg" id="input_tuzhimingcheng"
					name="tuzhimingcheng" placeholder="图纸名称">

			</div>
			<div class="form-group  col-md-2">
				<label for="input_tuzhibianhao">图号</label> <input type="text"
					class="form-control form-control-lg" id="input_tuzhibianhao"
					name="tuzhibianhao" placeholder="图纸编号">

			</div>

			<div class="form-group  col-md-2">
				<label for="input_xingzhuang">形状选择</label> <select
					onchange="change_shape(this.value)" id="input_xingzhuang"
					name="xingzhuang" class="form-control  form-control-lg">
					<option selected value="yuanbangliao">圆棒料</option>
					<option value="yuanguanliao">圆管料</option>
					<option value="banliao">板料</option>
					<option value="fangguanliao">方管</option>
					<option value="liujiaobang">六角棒</option>
				</select>

			</div>


			<div class="col-md-2">
				<label for="input_cailiao">材料选择</label> <select
					onchange="change_material(this.value)" id="input_cailiao"
					name="cailiao" class="form-control  form-control-lg">
					<option selected value="1">碳钢：7.85g/cm3</option>
					<option value="2">不锈钢：7.9g/cm3</option>
					<option value="3">硬铝：2.8g/cm3</option>
					<option value="4">黄铜：8.5g/cm3</option>
					<option value="5">紫铜：8.9g/cm3</option>
				</select>

			</div>
			<div class="form-group col-md-2">
				<label for="input_shuliang">数量</label> <input type="number"
					class="form-control  form-control-lg" id="input_shuliang"
					name="shuliang">

			</div>
			<div class="form-group col-md-2">
				<label for="input_danjia">单价</label> <input type="text"
					class="form-control  form-control-lg" id="input_danjia"
					name="danjia">

			</div>
		</div>

		<!--形状大小 -->

		<div class="form-row">

			<div class="form-group col-md-2">
				<label for="input_createTime_start">开始时间</label> <input type="text"
					class="form-control form-control-lg" id="input_createTime_start"
					name="createTime_start">

			</div>

			<div class="form-group col-md-2">
				<label for="input_createTime_end">结束时间</label> <input type="text"
					class="form-control form-control-lg" id="input_createTime_end"
					name="createTime_end">
			</div>
			<div class="form-group col-md-2">
			<label for="input_createTime_end">&nbsp</label>
			<!--style="margin-top:26px"  -->
				<button type="button"   class="btn btn-primary btn-lg btn-block">查询</button>
			</div>
		</div>
		
	</fieldset>
	<!-- 表格 -->

	<table id="test" lay-filter="test" style="margin: 0 20px"></table>

</body>

<script type="text/html" id="toolbarDemo">
  <div class="layui-btn-container">
    <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
    <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
    <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
    <button class="layui-btn layui-btn-sm" lay-event="reload">重载</button>
  </div>
</script>



<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-primary  layui-btn-xs" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="del" >删除</a>
</script>

 
 

 

 

 


<script type="text/javascript">
	layui.use('table', function() {
		var table = layui.table;
		//return;

		//渲染
		window.ins1 = table.render({
			elem : '#test',
			height : 650
			//,width: 600
			,
			title : '用户数据表',
			url : 'cxzd'
			//,size: 'lg'
			,
			page : {

			}

			,
			autoSort : false
			//,loading: false
			,
			totalRow : false,//合计
			limit : 30,
			toolbar : '#toolbarDemo',
			defaultToolbar : [ 'filter', 'exports', 'print', {
				title : '帮助',
				layEvent : 'LAYTABLE_TIPS',
				icon : 'layui-icon-tips'
			} ],
			cols : [ [ {
				type : 'checkbox',
				fixed : 'left'
			}, {
				field : 'ledgerid',
				title : 'ID',
				width : 80,
				hide : true
			}, {
				field : 'tuzhibianhao',
				title : '图纸编号',
				width : 120
			}, {
				field : 'tuzhimingcheng',
				title : '图纸名称',
				width : 120
			}, {
				field : 'xingzhuang',
				title : '形状',
				width : 120
			}, {
				field : 'guige',
				title : '规格',
				width : 120
			}, {
				field : 'cailiao',
				title : '材料',
				width : 120
			}, {
				field : 'midu',
				title : '密度',
				width : 120
			}, {
				field : 'shuliang',
				title : '单价(元)',
				width : 120
			}, {
				field : 'danjia',
				title : '单价',
				width : 120
			}, {
				field : 'tiji',
				title : '体积(cm3)',
				width : 120
			}, {
				field : 'zhongliang',
				title : '重量(kg)',
				width : 80,
			}, {
				field : 'zongjia',
				title : '总价(元)',
				width : 80
			}, {
				field : 'create_time',
				title : '创建时间',
				width : 120
			}, {
				fixed : 'right',
				title : '操作',
				toolbar : '#barDemo',
				width : 150
			} ] ]
		/*
		,response: {
		  statusName: 'status'
		  ,statusCode: 200
		}
		,parseData: function(res){
		  return {
		    "status": res.status
		    ,"msg": res.message
		    ,"count": res.total
		    ,"data": res.data.list
		  };
		}
		 */
		});

		//工具栏事件
		table.on('toolbar(test)', function(obj) {
			var checkStatus = table.checkStatus(obj.config.id);
			switch (obj.event) {
			case 'add':
				layer.msg('添加');
				break;
			case 'update':
				layer.msg('编辑');
				break;
			case 'delete':
				layer.msg('删除');
				break;
			case 'getCheckData':
				var data = checkStatus.data;
				layer.alert(JSON.stringify(data));
				break;
			case 'getCheckLength':
				var data = checkStatus.data;
				layer.msg('选中了：' + data.length + ' 个');
				break;
			case 'isAll':
				layer.msg(checkStatus.isAll ? '全选' : '未全选')
				break;
			case 'LAYTABLE_TIPS':
				layer.alert('Table for layui-v' + layui.v);
				break;
			case 'reload':
				table.reload('test', {
					page : {
						curr : 5
					}
				//,height: 300
				//,url: 'x'
				}, 'data');
				break;
			}
			;
		});

		table.on('row(test)', function(obj) {
			console.log(obj);
			//layer.closeAll('tips');
		});

	});

	/* 开始时间，结束时间 */
	layui.use('laydate', function() {
		var laydate = layui.laydate;

		//执行一个laydate实例
		laydate.render({
			elem : '#input_createTime_start' //指定元素
		});
		laydate.render({
			elem : '#input_createTime_end' //指定元素
		});
	});
</script>
</html>

