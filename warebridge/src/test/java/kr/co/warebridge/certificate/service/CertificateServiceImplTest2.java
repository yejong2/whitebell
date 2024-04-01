package kr.co.warebridge.certificate.service;

import java.util.Map;

import javax.inject.Inject;

import org.junit.jupiter.api.Test;

import kr.co.warebridge.AbstractRootContextTest;
import kr.co.warebridge.certificate.dao.CertificateDAO;
import kr.co.warebridge.vo.EmployeeVO;


class CertificateServiceImplTest2 extends AbstractRootContextTest{

	@Inject
	CertificateDAO dao;
	
	@Test
	void test() {
		String cer = "품질경영";
		EmployeeVO user = new EmployeeVO();
		user.setEmpNo("0000");
		user.setEmpCmpId("dreaminfosystem");
		Map<String, String> check = dao.checkDuplicaion(cer);
		if(check == null) {
			dao.insertCer(cer);
		}
		dao.insertEmpCer(user, cer);
	}

}
