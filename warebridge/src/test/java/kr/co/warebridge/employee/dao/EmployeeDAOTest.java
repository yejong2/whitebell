package kr.co.warebridge.employee.dao;

import static org.junit.jupiter.api.Assertions.*;

import javax.inject.Inject;

import org.junit.jupiter.api.Test;

import kr.co.warebridge.AbstractRootContextTest;
import kr.co.warebridge.vo.EmployeeVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class EmployeeDAOTest extends AbstractRootContextTest{
	@Inject
	EmployeeDAO dao;
	EmployeeVO emp;

	@Test
	void testSelectEmployee() {
		emp = new EmployeeVO();
		String empNo = "2019-00001";
		String empCmpId="dreaminfosystem";
		
//		emp = dao.selectEmployee(empNo, empCmpId);
//		log.info(emp.toString());
//		
		String addr = emp.getEmpAddr();
		String gen = emp.getEmpGen();
		String rrno  = emp.getEmpRrno();
		String addr1 = addr.substring(0,2);
		String rrno1 = rrno.substring(0,2);
		
		log.info("addr:{}, gen:{}, rrno:{}",addr1,gen,rrno1);
		
	}



}
