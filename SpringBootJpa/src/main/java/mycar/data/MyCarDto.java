package mycar.data;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Entity
@Table(name="mycar") //자동으로 mysql에 mycar라는 테이블 만들어줌 엔티티랑 테이블 같이쓰면
@Data //setter getter 안쓰고 data 어노테이션으로 롬복 소환
public class MyCarDto {
	
	@Id  //각 엔티티를 구별할수있는 식별아이디임
	@GeneratedValue(strategy = GenerationType.AUTO) //이거도 식별자임 기본키 프라이머리키 설정해줌
	private long num;
	
	@Column(name="carname") // 각각의 컬럼 추가
	private String carname;
	
	@Column // 이름 같으면 생략가능
	private int carprice;
	
	@Column // 이름 같으면 생략가능
	private String carcolor;
	
	@Column // 이름 같으면 생략가능
	private String carguip;
	
	@CreationTimestamp //엔티티가 생성되는 시간으로 자동 등록
	@Column(updatable = false) //수정시 이 컬럼은 수정하지 않겠다는 뜻
	//updatable = false 없을시 날짜가 null로 찍힐것
	private Timestamp guipday;
}
