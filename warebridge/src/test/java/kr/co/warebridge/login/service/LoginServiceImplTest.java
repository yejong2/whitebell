package kr.co.warebridge.login.service;

import static org.junit.jupiter.api.Assertions.*;

import javax.inject.Inject;

import org.junit.jupiter.api.Test;

import kr.co.warebridge.AbstractRootContextTest;
import kr.co.warebridge.employee.dao.EmployeeDAO;
import kr.co.warebridge.vo.EmployeeVO;

class LoginServiceImplTest extends AbstractRootContextTest{
	
	@Inject
	private EmployeeDAO dao;
	
	@Test
	void test() {
		EmployeeVO sample = dao.selectEmployeeForLogin("0000");
		assertNotNull(sample);
	}

}
