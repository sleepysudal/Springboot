package boot.data.service;

import java.util.List;


import boot.data.dto.MemberDto;

public interface MemberServiceInter {
	public void insertMember(MemberDto dto);
	public List<MemberDto>getAllMembers();
	public int getSerchId(String id); //아이디 존재 여부
	public String getName(String id);
	public int loginPassCheck(String id, String pass);
	public MemberDto getDataById(String id);
	public void deleteData(String num);
	public void updatePhoto(String num, String photo); //num에 의한 사진변경
	public void updateMember(MemberDto dto);
	public MemberDto getDataByNum(String num);
	
}
	

