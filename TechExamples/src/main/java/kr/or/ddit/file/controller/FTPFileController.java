package kr.or.ddit.file.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

import javax.inject.Inject;

import org.apache.commons.net.ftp.FTPFile;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.web.servlet.mvc.method.annotation.StreamingResponseBody;

import kr.or.ddit.fancytree.AbstractFancytreeNode;
import kr.or.ddit.file.util.CompressUtils;
import kr.or.ddit.ftp.FTPFileWrapper;
import kr.or.ddit.ftp.service.FTPFileService;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/file/ftp")
@Slf4j
public class FTPFileController {
	@Inject
	private FTPFileService service;
	
	@RequestMapping
	public String view() {
		return "file/ftpView";
	}
	
	@RequestMapping(produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<AbstractFancytreeNode<FTPFile>> json(@RequestParam(defaultValue="/") String path) throws Exception {
		List<FTPFile> fileList = service.traversing(path);
		return fileList.stream()
						.map(FTPFileWrapper::new)
						.collect(Collectors.toList());
	}
	
	/**
	 * 동시에 여러개의 파일을 FTP 서버로부터 중계해야 하는 경우, 해당 요층이 비동기로 발생할때 파일에 대한 정보를 json payload 형태로 받을 수도 있음. 
	 * @param path
	 * @return
	 * @throws Exception
	 */
	@PostMapping("download")
	public ResponseEntity<StreamingResponseBody> downloadCase1(@RequestBody String[] path) throws Exception {
		if(!checkExists(path)) {
			throw new ResponseStatusException(HttpStatus.NOT_FOUND, "파일이 없음.");
		}else {
			File dir = service.receiveFiles(path);
			return CompressUtils.compressAndGenerateResponseEntity(dir);
		}
	}

	private boolean checkExists(String[] keyPaths) throws Exception {
		try {
			for(String path : keyPaths) {
				service.traversing(path);
			}
			return true;
		}catch (IOException e) {
			log.error(e.getMessage(), e);
			return false;
		}
	}
	
}










