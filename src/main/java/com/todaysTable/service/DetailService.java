package com.todaysTable.service;

import java.util.List;

import com.todaysTable.vo.MenuVO;
import com.todaysTable.vo.StoreVO;

public interface DetailService {
	public StoreVO selectStoreInfo(int store_no);
	public double getAvgGrade(int store_no);
	public String getCanPark(int store_no);
	public List<MenuVO> selectMenuList(int store_no);
	public String getNickName(String id);
}