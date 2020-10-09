<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/style/dist/css/bootstrap.min.css">

<title>材料计算器</title>
</head>
<body>
	<div class="container">
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
					<!-- <li class="nav-item dropdown"><a
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

		<!--新增表单  -->
		<form style="margin-bottom: 30px; margin-top: 30px;"
			class="needs-validation" novalidate>


			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputTuzhimingcheng">名称</label> <input type="text"
						class="form-control form-control-lg" id="inputTuzhimingcheng"
						name="tuzhimingcheng" placeholder="图纸名称" required>
					<div class="invalid-feedback">必填</div>
				</div>
				<div class="form-group col-md-6">
					<label for="inputPrice">图号</label> <input type="text"
						class="form-control form-control-lg" id="inputPrice" name="price"
						placeholder="图纸编号" required>
					<div class="invalid-feedback">必填</div>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputShape">形状选择</label> <select
						onchange="change_shape(this.value)" id="inputShape" name="shape"
						class="form-control  form-control-lg" required>
						<option selected value="yuanbangliao">圆棒料</option>
						<option value="yuanguanliao">圆管料</option>
						<option value="banliao">板料</option>
						<option value="fangguanliao">方管</option>
						<option value="liujiaobang">六角棒</option>
					</select>
					<div class="invalid-feedback">必填</div>
				</div>

				<div class="form-group row col-md-6">
					<div class="col-md-6">
						<label for="inputMaterial">材料选择</label> <select
							onchange="change_material(this.value)" id="inputMaterial"
							name="material" class="form-control  form-control-lg" required>
							<option selected value="7.85">碳钢：7.85g/cm3</option>
							<option value="7.9">不锈钢：7.9g/cm3</option>
							<option value="2.8">硬铝：2.8g/cm3</option>
							<option value="8.5">黄铜：8.5g/cm3</option>
							<option value="8.9">紫铜：8.9g/cm3</option>
						</select>
						<div class="invalid-feedback">必填</div>
					</div>
					<div class="col-md-6">
						<label for="inputDensity">密度（g/cm3）</label> <input type="text"
							class="form-control form-control-lg" id="inputDensity"
							name="density" pattern="^[0-9.]+[0-9]*$" required>
						<div class="invalid-feedback">必填</div>
					</div>
				</div>
			</div>
			<!--形状大小 -->
			<div class="form-row" id="idshapeSize">
				<div class="form-group col-md-6">
					<label for="input_changdu">长度（毫米）</label> <input type="number"
						class="form-control form-control-lg" id="input_changdu"
						name="changdu" pattern="^[1-9]+[0-9]*$" required>
					<div class="invalid-feedback">必填，数字类型，单位是毫米</div>
				</div>
				<div class="form-group col-md-6">
					<label for="input_waijing">外径（毫米）</label> <input type="number"
						class="form-control  form-control-lg" id="input_waijing"
						name="waijing" pattern="^[1-9]+[0-9]*$" required>
					<div class="invalid-feedback">必填，数字类型，单位是毫米</div>
				</div>

			</div>
		 

			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputNum">数量</label> <input type="number"
						class="form-control  form-control-lg" id="inputNum" name="num"
						pattern="^[1-9]+[0-9]*$" required>
					<div class="invalid-feedback">必填</div>
				</div>
				<div class="form-group col-md-6">
					<label for="inputPrice">单价</label> <input type="text"
						class="form-control  form-control-lg" id="inputPrice" name="price"
						pattern="^[0-9.]+[0-9]*$" required>
					<div class="invalid-feedback">必填，只能填数字或者带小数点的数字</div>
				</div>

			</div>

			<div class="form-row">

				<div class="form-group col-md-6">
					<label for="input_zhongliang">重量（公斤）</label> <input type="number"
						class="form-control form-control-lg" id="input_zhongliang"
						name="zhongliang" pattern="^[0-9.]+[0-9]*$" required>
					<div class="invalid-feedback">必填</div>
				</div>

				<div class="form-group col-md-6">
					<label for="input_tiji">体积（cm3）</label> <input type="number"
						class="form-control form-control-lg" id="input_tiji" name="tiji"
						pattern="^[0-9.]+[0-9]*$" required>
					<div class="invalid-feedback">必填</div>
				</div>
			</div>


			<div class="form-row">
				<div class="form-group col-md-2">
					<label for="input_zongjia">总价</label> <input type="text"
						class="form-control  form-control-lg" name="zongjia" id="input_zongjia">
				</div>
				<!--tip 总价和单价自动转换为汉字大写  -->
			</div>
			<button type="button" class="btn btn-outline-dark">计算</button>
			<span></span>
			<button type="submit" class="btn btn-primary">保存</button>
		</form>


	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script type="text/javascript" src="/style/dist/js/jquery.slim.min.js"></script>
	<script type="text/javascript" src="/style/dist/js/popper.min.js"></script>
	<script type="text/javascript" src="/style/dist/js/bootstrap.min.js"></script>

	<script>
		// Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
			'use strict';
			window.addEventListener('load',
					function() {
						// Fetch all the forms we want to apply custom Bootstrap validation styles to
						var forms = document
								.getElementsByClassName('needs-validation');
						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {

										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}

										form.classList.add('was-validated');
									}, false);
								});
					}, false);
		})();

		var shapeMap = new Map();
		shapeMap.set("fangguanliao", [ {
			"flag" : "changdu",
			"name" : "长度"
		}, {
			"flag" : "kuandu",
			"name" : "宽度"
		}, {
			"flag" : "gaodu",
			"name" : "高度"
		}, {
			"flag" : "neikuan",
			"name" : "内宽"
		}, {
			"flag" : "neigao",
			"name" : "内高"
		} ]);
		shapeMap.set("yuanbangliao", [ {
			"flag" : "changdu",
			"name" : "长度"
		}, {
			"flag" : "waijing",
			"name" : "外径"
		} ]);
		//圆管料
		shapeMap.set("yuanguanliao", [ {
			"flag" : "changdu",
			"name" : "长度"
		}, {
			"flag" : "waijing",
			"name" : "外径"
		}, {
			"flag" : "neijing",
			"name" : "内径"
		}, {
			"flag" : "bihou",
			"name" : "壁厚"
		} ]);
		//板料
		shapeMap.set("banliao", [ {
			"flag" : "changdu",
			"name" : "长度"
		}, {
			"flag" : "kuandu",
			"name" : "宽度"
		},{
			"flag" : "houdu",
			"name" : "厚度"
		} ]);
		//六角棒
		shapeMap.set("liujiaobang", [ {
			"flag" : "changdu",
			"name" : "长度"
		}, {
			"flag" : "duibian",
			"name" : "对边"
		} ]);
		function change_material(newVal) {
			$("#inputDensity").val(newVal)
		}
		function change_shape(newVal) {
			//idshapeSize
			var sizeEle = shapeMap.get(newVal);
			if (!!sizeEle) {
				var sizeHtml = "";
				for (var i = 0; i < sizeEle.length; i++) {
					sizeHtml += '<div class="form-group col-md-6"> <label for="input_'+sizeEle[i].flag+'">'
							+ sizeEle[i].name
							+ '（毫米）</label> <input type="number" class="form-control form-control-lg" id="input_'+sizeEle[i].flag+'" name="'+sizeEle[i].flag+'" pattern="^[1-9]+[0-9]*$" required> <div class="invalid-feedback">必填，数字类型，单位是毫米</div> </div>'
				}
				$("#idshapeSize").html(sizeHtml)
			}
		}
	</script>
</body>
</html>