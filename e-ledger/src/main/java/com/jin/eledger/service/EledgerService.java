package com.jin.eledger.service;

import java.util.List;


import com.jin.eledger.pojo.EledgerVo;

public interface EledgerService {
	public String add(EledgerVo eledger);
	public void update(EledgerVo eledger);
	public void delete(EledgerVo eledger);
	public EledgerVo queryById(EledgerVo eledger);
	public List<EledgerVo> queryList(EledgerVo eledger);
	//分页查询
	public List<EledgerVo> queryPage(EledgerVo eledger);
}
