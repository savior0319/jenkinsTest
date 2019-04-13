package spring.web.service;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.web.dao.UserDAO;
import spring.web.vo.UserVO;

@Service("userService")
public class UserService {

	@Resource(name = "userDAO")
	UserDAO ud;

	@Autowired
	private SqlSessionTemplate session;

	public int join(UserVO uv) {
		int result = ud.join(session, uv);
		return result;
	}

}
