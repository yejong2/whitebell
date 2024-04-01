package kr.co.warebridge.certificate.service;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.junit.jupiter.api.Test;

import kr.co.warebridge.AbstractRootContextTest;
import kr.co.warebridge.certificate.dao.CertificateDAO;
import kr.co.warebridge.employee.dao.EmployeeDAO;
import kr.co.warebridge.vo.CertificateVO;
import kr.co.warebridge.vo.EmployeeVO;
import lombok.extern.slf4j.Slf4j;


@Slf4j
class CertificateServiceImplTest extends AbstractRootContextTest {
	
	@Inject
	private CertificateDAO dao;
	
	@Inject
	private EmployeeDAO emp;
	
	@Test
	void test() {
		EmployeeVO user = emp.selectEmployee("0000");
		
		log.info("recom : {}",user);
		List<Map<String, String>> recom = dao.selectCer(user);
		assertNotNull(recom);
		log.info("recom : {}",recom);
	}

}
