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
		}, {
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


		var xingzhuangCodeMap = new Map();
		xingzhuangCodeMap.set("yuanbangliao","圆棒料");
		xingzhuangCodeMap.set("yuanguanliao","圆管料");
		xingzhuangCodeMap.set("banliao","板料");
		xingzhuangCodeMap.set("fangguanliao","方管");
		xingzhuangCodeMap.set("liujiaobang","六角棒");


		var cailiaoMap = new Map();
		cailiaoMap.set("1", "7.85")
		cailiaoMap.set("2", "7.9")
		cailiaoMap.set("3", "2.8")
		cailiaoMap.set("4", "8.5")
		cailiaoMap.set("5", "8.9")

		var cailiaoCodeMap = new Map();
		cailiaoCodeMap.set(1,"碳钢：7.85g/cm3")
		cailiaoCodeMap.set(2,"不锈钢：7.9g/cm3")
		cailiaoCodeMap.set(3,"硬铝：2.8g/cm3")
		cailiaoCodeMap.set(4,"黄铜：8.5g/cm3")
		cailiaoCodeMap.set(5,"紫铜：8.9g/cm3")



/*消息提醒*/
		toastr.options = {

			"closeButton": true, //是否显示关闭按钮

			"debug": false, //是否使用debug模式

			"positionClass": "toast-top-full-width",//弹出窗的位置

			"showDuration": "300",//显示的动画时间

			"hideDuration": "1000",//消失的动画时间

			"timeOut": "5000", //展现时间

			"extendedTimeOut": "1000",//加长展示时间

			"showEasing": "swing",//显示时的动画缓冲方式

			"hideEasing": "linear",//消失时的动画缓冲方式

			"showMethod": "fadeIn",//显示时的动画方式

			"hideMethod": "fadeOut" //消失时的动画方式

		};