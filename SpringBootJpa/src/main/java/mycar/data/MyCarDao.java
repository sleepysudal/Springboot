package mycar.data;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Repository;

@Repository
public class MyCarDao {
	
	@Autowired
	MyCarDaoInter carInter;
	
	//insert
	public void insertMycar(MyCarDto dto)
	{
		carInter.save(dto); //id타입의 유무에 따라 자동으로 insert 인지 update인지 갈린다
		
	}
	//전체출력
	public List<MyCarDto>getAllDatas()
	{
		//return carInter.findAll();
		return carInter.findAll(Sort.by(Sort.Direction.DESC,"carprice")); //가격이 높은순으로 나열
	}
	//num에 대한 값(dto)반환
	public MyCarDto getData(Long num)
	{
		return carInter.getReferenceById(num);
	}
	//update
	public void updateMyCar(MyCarDto dto)
	{
		carInter.save(dto);
	}
	
	//delete
	public void deleteMyCar(Long num)
	{
		carInter.deleteById(num);
	}
	
	
}
