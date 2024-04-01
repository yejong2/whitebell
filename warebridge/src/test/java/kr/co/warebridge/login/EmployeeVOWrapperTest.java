package kr.co.warebridge.login;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;
import java.util.stream.Collectors;

import javax.inject.Inject;

import org.junit.jupiter.api.Test;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import kr.co.warebridge.AbstractRootContextTest;
import kr.co.warebridge.employee.dao.EmployeeDAO;
import kr.co.warebridge.vo.EmployeeVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class EmployeeVOWrapperTest extends AbstractRootContextTest{
	
	@Inject
	private EmployeeDAO dao;
	
	@Test
	void test() {
		EmployeeVO realUser = dao.selectEmployeeForLogin("0000");
		List<String> a = realUser.getEmpRole();
		log.info("a:{}",a);
		realUser.getEmpRole().stream().map(SimpleGrantedAuthority::new)
		.collect(Collectors.toList());
	}

}
