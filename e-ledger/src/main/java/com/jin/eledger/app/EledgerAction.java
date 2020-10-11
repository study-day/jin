package com.jin.eledger.app;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.jin.eledger.pojo.EledgerVo;
import com.jin.eledger.pojo.Guige;
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
