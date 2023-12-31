package boot.data.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import boot.data.dto.MemBoardDto;

@Mapper
public interface MemBoardMapperInter {
	public int getTotalCount();
	public int updatereadcount(String num);
	public void insertBoard(MemBoardDto dto);
	public MemBoardDto getData(String num);
	public int getMaxNum();
	public List<MemBoardDto>getlist(HashMap<String, Integer>map);
	public void updateBoard(MemBoardDto dto);
	public void deleteBoard(String num);
}
