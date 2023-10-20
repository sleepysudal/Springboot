package Spring.mvc.tea;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan("mycar.data") //패키지등록
@EntityScan("mycar.data") //테이블이 어디에 등록되잇는지  dto인식
@EnableJpaRepositories("mycar.data")//dao 인식 mycar라는 패키지에 있는 dao 를 빈에 자동으로 해줘 !
public class SpringBootJpaApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootJpaApplication.class, args);
	}

}
