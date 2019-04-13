package spring.web.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import spring.web.vo.UserVO;

@Repository("userDAO")
public class UserDAO {

	public int join(SqlSessionTemplate session, UserVO uv) {
		int result = session.insert("usersql.insertUser", uv);
		return result;
	}

}
