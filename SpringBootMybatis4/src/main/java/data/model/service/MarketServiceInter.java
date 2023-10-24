package data.model.service;

import java.util.List;

import data.model.dto.MarketDto;

//섹션끼리 나눠진 추상메서드를 받기위해 임플리먼트하는게 인터페이스 
public interface MarketServiceInter {
	
	public int getTotalCount();
	public List<MarketDto> getAllSangpums();
	public void insertMarket(MarketDto dto);
	public MarketDto getData(String num);
	public void updateMarket(MarketDto dto);
	public void deleteMarket(String num);
}
