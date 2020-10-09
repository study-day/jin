package com.jin.eledger.service;

import java.util.List;

import com.jin.eledger.pojo.Eledger;

public interface EledgerService {
	public String add(Eledger eledger);
	public void update(Eledger eledger);
	public void delete(Eledger eledger);
	public Eledger queryById(Eledger eledger);
	public List<Eledger> queryList(Eledger eledger);
	//分页查询
	public List<Eledger> queryPage(Eledger eledger);
}
