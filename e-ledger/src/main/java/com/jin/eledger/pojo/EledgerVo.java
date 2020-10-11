package com.jin.eledger.pojo;

import java.util.Date;

public class EledgerVo {
	private String ledgerId;
	private String tuzhibianhao;
	private String tuzhimingcheng;
	private String xingzhuang;
	private String guige;
	private Byte cailiao;
	private String midu;
	private Integer shuliang;
	private String danjia;
	private String tiji;
	private String zhongliang;
	private String zongjia;
	private String IP;
	private Date create_time;
	private String create_uesr;
	private Date update_time;
	
	private String xingzhuang_desc;
	private String 	cailiao_desc;

	
	public String getXingzhuang_desc() {
		return xingzhuang_desc;
	}
	public void setXingzhuang_desc(String xingzhuang_desc) {
		this.xingzhuang_desc = xingzhuang_desc;
	}
	public String getCailiao_desc() {
		return cailiao_desc;
	}
	public void setCailiao_desc(String cailiao_desc) {
		this.cailiao_desc = cailiao_desc;
	}
	public String getLedgerId() {
		return ledgerId;
	}
	public void setLedgerId(String ledgerId) {
		this.ledgerId = ledgerId;
	}
	public String getTuzhibianhao() {
		return tuzhibianhao;
	}
	public void setTuzhibianhao(String tuzhibianhao) {
		this.tuzhibianhao = tuzhibianhao;
	}
	public String getTuzhimingcheng() {
		return tuzhimingcheng;
	}
	public void setTuzhimingcheng(String tuzhimingcheng) {
		this.tuzhimingcheng = tuzhimingcheng;
	}
 
	public String getGuige() {
		return guige;
	}
	public void setGuige(String guige) {
		this.guige = guige;
	}
 
	public String getXingzhuang() {
		return xingzhuang;
	}
	public void setXingzhuang(String xingzhuang) {
		this.xingzhuang = xingzhuang;
	}
	public Byte getCailiao() {
		return cailiao;
	}
	public void setCailiao(Byte cailiao) {
		this.cailiao = cailiao;
	}
	public String getMidu() {
		return midu;
	}
	public void setMidu(String midu) {
		this.midu = midu;
	}
	public Integer getShuliang() {
		return shuliang;
	}
	public void setShuliang(Integer shuliang) {
		this.shuliang = shuliang;
	}
	public String getDanjia() {
		return danjia;
	}
	public void setDanjia(String danjia) {
		this.danjia = danjia;
	}
	public String getTiji() {
		return tiji;
	}
	public void setTiji(String tiji) {
		this.tiji = tiji;
	}
	public String getZhongliang() {
		return zhongliang;
	}
	public void setZhongliang(String zhongliang) {
		this.zhongliang = zhongliang;
	}
	public String getZongjia() {
		return zongjia;
	}
	public void setZongjia(String zongjia) {
		this.zongjia = zongjia;
	}
	public String getIP() {
		return IP;
	}
	public void setIP(String iP) {
		IP = iP;
	}
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}
	public String getCreate_uesr() {
		return create_uesr;
	}
	public void setCreate_uesr(String create_uesr) {
		this.create_uesr = create_uesr;
	}
	public Date getUpdate_time() {
		return update_time;
	}
	public void setUpdate_time(Date update_time) {
		this.update_time = update_time;
	}
	
	
	
	
	
	
/**
 * CREATE TABLE `jin_ledger` (
	`
	ledgerId` VARCHAR(35) NOT NULL COMMENT '账单ID',
	`tuzhibianhao` VARCHAR(50) NULL DEFAULT NULL COMMENT '图纸编号',
	`tuzhimingcheng` VARCHAR(50) NULL DEFAULT NULL COMMENT '图纸名称',
	`xingzhuang` TINYINT(2) NULL DEFAULT NULL COMMENT '形状',
	`guige` VARCHAR(300) NULL DEFAULT NULL COMMENT '规格大小，json字符串，毫米',
	`cailiao` TINYINT(2) NULL DEFAULT NULL COMMENT '材料',
	`midu` VARCHAR(300) NULL DEFAULT NULL COMMENT '密度',
	`shuliang` INT(11) NULL DEFAULT NULL COMMENT '数量',
	`danjia` VARCHAR(50) NULL DEFAULT NULL COMMENT '单价，元',
	`tiji` VARCHAR(300) NULL DEFAULT NULL COMMENT '体积cm3',
	`zhongliang` VARCHAR(300) NULL DEFAULT NULL COMMENT '重量kg',
	`zongjia` VARCHAR(300) NULL DEFAULT NULL COMMENT '总价，元',
	`IP` VARCHAR(15) NULL DEFAULT NULL COMMENT 'ip',
	`create_time` DATETIME NULL DEFAULT NULL COMMENT '创建时间',
	`create_uesr` VARCHAR(35) NULL DEFAULT NULL COMMENT '创建人',
	`update_time` DATETIME NULL DEFAULT NULL COMMENT '更新时间',
	PRIMARY KEY (`ledgerId`)
)
COMMENT='电子账单表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

 */
}
