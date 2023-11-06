package boot.data.service;

import java.util.List;

import boot.data.dto.MemBoardDto;

public interface MemBoardServiceInter {
	public int getTotalCount();
	public int updatereadcount(String num);
	public void insertBoard(MemBoardDto dto);
	public MemBoardDto getData(String num);
	public int getMaxNum(); //새로운 글 업데이트 시 제일큰 수가 최근글이니까 그것을 조회위함
	public List<MemBoardDto>getlist(int start,int perpage);
	public void updateBoard(MemBoardDto dto);
	public void deleteBoard(String num);
}
