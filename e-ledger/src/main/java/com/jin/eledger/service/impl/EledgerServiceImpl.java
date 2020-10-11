package com.jin.eledger.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jin.eledger.dao.LedgerMapper;
import com.jin.eledger.pojo.EledgerPo;
import com.jin.eledger.pojo.EledgerVo;
import com.jin.eledger.service.EledgerService;

@Service
public class EledgerServiceImpl implements EledgerService{

	@Autowired
	private LedgerMapper ledgerMapper; 
	
	@Override
	public String add(EledgerVo eledger) {
		// TODO Auto-generated method stub
		EledgerPo eledgerPo = new EledgerPo();
		String ledgerid = UUID.randomUUID().toString();
		eledgerPo.setLedgerid(ledgerid);
		BeanUtils.copyProperties(eledger, eledgerPo);
		ledgerMapper.insert(eledgerPo);
		return ledgerid;
	}

	@Override
	public void update(EledgerVo eledger) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(EledgerVo eledger) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public EledgerVo queryById(EledgerVo eledger) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<EledgerVo> queryList(EledgerVo eledger) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<EledgerVo> queryPage(EledgerVo eledger) {
		// TODO Auto-generated method stub
		return null;
	}
}
