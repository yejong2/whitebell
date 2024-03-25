package kr.or.ddit.file.controller;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.http.ContentDisposition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.ResourceHttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.HandlerMethodReturnValueHandler;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.web.servlet.HandlerAdapter;
import org.springframework.web.servlet.mvc.method.annotation.HttpEntityMethodProcessor;
import org.springframework.web.servlet.mvc.method.annotation.StreamingResponseBody;
import org.springframework.web.servlet.mvc.method.annotation.StreamingResponseBodyReturnValueHandler;

import kr.or.ddit.file.util.CompressUtils;

/**
 * {@link HandlerAdapter} 가 컨트롤러 메소드를 호출할때 사용하는 두가지 주요 전략  {@link HandlerMethodArgumentResolver}, {@link HandlerMethodReturnValueHandler}
 * 
 * @see HandlerMethodArgumentResolver
 * @see HandlerMethodReturnValueHandler
 * @see HttpEntityMethodProcessor
 * @see ResourceHttpMessageConverter
 * 
 */
@Controller
@RequestMapping("/file")
public class FileDownloadController {
	
	@Value("#{appInfo.fileFolder}")
	private Resource folderRes;
	@Value("#{appInfo.fileFolder}")
	private File fileFolder;
	
	@RequestMapping
	public String viewer(Model model) {
		String[] children = fileFolder.list();
		model.addAttribute("files", children);
		return "file/fileView";
	}
	
	/**
	 * @param filename
	 * @return 파일 전송을 위해 {@link Resource} 구현체를 HttpEntity body 로 세팅하면  {@link ResourceHttpMessageConverter} 에 의해 response body 에 stream copy 되어 전송됨. 
	 * @see ResponseEntity
	 */
	@RequestMapping("single")
	public ResponseEntity<StreamingResponseBody> singleDownloadCase1(@RequestParam("what") String filename) {
		File file = new File(fileFolder, filename);
		if(!file.exists())
			throw new ResponseStatusException(HttpStatus.NOT_FOUND, "파일이 없음.");
		
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		headers.setContentLength(file.length());
		headers.setContentDisposition(
				ContentDisposition.attachment()
								.filename(file.getName(), StandardCharsets.UTF_8)
								.build()
		);
		return ResponseEntity.ok()
					.headers(headers)
					.body(new StreamingResponseBody() {
							@Override
							public void writeTo(OutputStream os) throws IOException {
								try {
									FileUtils.copyFile(file, os);
									os.flush();
								}finally {
									os.close();
								}
							}
					});
	}
	/**
	 * <pre>
	 * 연속적인 스트리밍 데이터를 전송해야 하는 경우, StreamingResponseBody 구조를 사용하기도 함.
	 * 
	 * 주의사항
	 * 1. 비동기 응답 전송을 위해 등록된 모든 필터와  Front Controller에 <async-support>true</async-support> 설정이 추가되어야 함.
	 * 2. HandlerAdapter 에 비동기 응답 전송과 관련한  timeout 이나 thread executor 를 설정하기도 함. 
	 *    참고, servlet-context.xml 의 <mvc:async-support default-timeout="60000"/>
	 *    
	 * </pre>   
	 * @param filenames
	 * @return  
	 * @throws IOException 
	 * @see StreamingResponseBody
	 * @see StreamingResponseBodyReturnValueHandler
	 */
	@RequestMapping("multiple")
	public ResponseEntity<StreamingResponseBody> multipleDownloadAfterCompress(@RequestBody String[] filenames) throws IOException {
		if(!checkExists(filenames)) {
			throw new ResponseStatusException(HttpStatus.NOT_FOUND, "파일이 없음.");
		}else if(filenames.length==1){
			return singleDownloadCase1(filenames[0]);
		}else {
			File[] files = Arrays.stream(filenames)
					.map(name->new File(fileFolder, name))
					.toArray(File[]::new);
			return CompressUtils.compressAndGenerateResponseEntity(files, "download.zip");
		}
	}

	private boolean checkExists(String[] filenames) {
		return Arrays.stream(filenames)
					.allMatch((fn)->new File(fileFolder, fn).exists());
	}
	
}











