package com.jin.eledger.app;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageInfo;
import com.jin.eledger.pojo.EledgerVo;
import com.jin.eledger.pojo.Guige;
import com.jin.eledger.pojo.LayuiPage;
import com.jin.eledger.pojo.ReponseResult;
import com.jin.eledger.service.EledgerService;

/**
 * 
 * 电子账单类
 *
 */
@Controller
@RequestMapping("e-ledger")
public class EledgerAction {

	@Autowired
	private EledgerService eledgerService;
	/**
	 * 新增账单
	 * @return
	 */
	@RequestMapping("xzzd")
	public String xzzd(){
		return "xzzd";
	}

	
	@RequestMapping("zdlb")
	public String zdlb(){
		return "zdlb";
	}
	
	@ResponseBody
	@RequestMapping("cxzd")
	public LayuiPage<EledgerVo> cxzd(EledgerVo eledger,int page,int limit){
		return eledgerService.queryPage(eledger, page, limit);
	}
	
	
	/**
	 * 新增账单
	 * @return
	 */
	@RequestMapping("save")
	public String save(Guige guige,EledgerVo eledgerVo,HttpServletRequest request){
		String guigeJson = JSONObject.toJSONString(guige);
		eledgerVo.setGuige(guigeJson);
		eledgerService.add(eledgerVo);
		ReponseResult result = new ReponseResult();
		result.setCode((byte)1);
		result.setMsg("保存成功");
		request.setAttribute("result", JSONObject.toJSONString(result));
		return "xzzd";
	}
}
