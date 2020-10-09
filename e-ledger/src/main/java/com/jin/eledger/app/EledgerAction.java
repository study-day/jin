package com.jin.eledger.app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * 电子账单类
 *
 */
@Controller
@RequestMapping("e-ledger")
public class EledgerAction {

	/**
	 * 新增账单
	 * @return
	 */
	@RequestMapping("xzzd")
	public String xzzd(){
		return "xzzd";
	}
}
