package kr.co.warebridge.inquiry.service;

import static org.junit.jupiter.api.Assertions.*;

import javax.inject.Inject;

import org.junit.jupiter.api.Test;

import kr.co.warebridge.AbstractRootContextTest;
import kr.co.warebridge.common.paging.PaginationInfo;
import kr.co.warebridge.inquiry.dao.InquiryDAO;

class InquiryServiceImplTest extends AbstractRootContextTest{
	
	@Inject
	private InquiryDAO dao;
	
	
	@Test
	void test() {
		PaginationInfo paging = new PaginationInfo();
		paging.setTotalRecord(20);
		paging.setCurrentPage(1);
		dao.selectList(paging);
	
	}
	

}
