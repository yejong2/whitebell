package kr.or.ddit.paging.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.common.paging.BootstrapFormBasePaginationRenderer;
import kr.or.ddit.common.paging.PaginationInfo;
import kr.or.ddit.common.paging.PaginationRenderer;
import kr.or.ddit.prod.dao.ProdDAO;
import kr.or.ddit.prod.service.ProdService;
import kr.or.ddit.vo.ProdVO;

@Controller
@RequestMapping("/paging")
public class PagingSampleController {
	@Inject
	private ProdService service;
	
	@RequestMapping("spa")
	public String spaView() {
		return "paging/spaView";
	}
	
	@RequestMapping(value= "spa", produces=MediaType.APPLICATION_JSON_VALUE)
	public String jsonData(
			@RequestParam(name="page", required=false, defaultValue="1") int currentPage
			, @RequestParam Map<String, Object> detailCondition, Model model
	) {
		PaginationInfo paging = new PaginationInfo();
		paging.setCurrentPage(currentPage);
		paging.setDetailCondition(detailCondition);
		List<ProdVO> prodList = service.retrieveProdList(paging);
		
		PaginationRenderer renderer = new BootstrapFormBasePaginationRenderer("#searchForm");
		
		String pagingHTML = renderer.renderPagination(paging);
		
		model.addAttribute("prodList", prodList);
		model.addAttribute("pagingHTML", pagingHTML);
		model.addAttribute("condition", detailCondition);
		
		return "jsonView";
	}
}

















