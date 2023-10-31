package boot.data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import boot.data.dto.MemberDto;

@Mapper
public interface MemberMapperInter {
	
	public void insertMember(MemberDto dto);
	public List<MemberDto>getAllMembers();
	public int getSerchId(String id); //아이디 존재 여부
	public String getName(String id);
	public int loginPassCheck(Map<String, String>map);
	public MemberDto getDataById(String id);
	public void deleteData(String num);
	public void updatePhoto(Map<String, String>map); //num에 의한 사진변경
	public void updateMember(MemberDto dto);
	public MemberDto getDataByNum(String num);
}
