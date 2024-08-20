package v2.mvc.spring.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import v2.mvc.spring.dao.BlogDAO;
import v2.mvc.spring.service.BlogService;

@Service
public class BlogServiceImpl implements BlogService {
	
	//생성자 주입 : 생성자를 통해 의존성을 주입하는것을 생성자 주입이라 합니다
	private BlogDAO blogDAO;
	
	@Autowired
	public BlogServiceImpl(BlogDAO blogDAO) {
		this.blogDAO = blogDAO;
	}
	//생성자의 매개변수로 빈으로 관리되는 클래스를 정의해 두면 스프링이 빈 인스턴스를 생성하고 
	//클래스를 생성할때 생성자의 매개변수로 전달을 해줍니다

	@Override //자동으로 만들어준 스텁 메서드를 변경해서 실제 서비스내용으로 변경
	public int create(Map<String, Object> map) {
	    int seq = this.blogDAO.insert(map);
		return seq;
	}

	@Override
	public Map<String, Object> read(int blogContSeq) {
	Map<String, Object> blogCont = this.blogDAO.selectOne(blogContSeq);
		return blogCont;
	}

}
