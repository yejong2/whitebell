package kr.co.warebridge.repository;

import java.io.IOException;
import java.io.PrintWriter;

import org.apache.commons.net.PrintCommandListener;
import org.apache.commons.net.ftp.FTPClient;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Value;

import kr.co.warebridge.AbstractRootContextTest;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class FTPCreateFolder extends AbstractRootContextTest {
	
	@Value("#{appInfo.ftpHost}")
    private String server;
    
    @Value("#{appInfo.ftpPort}")
    private int port;
    
    @Value("#{appInfo.ftpUser}")
    private String username;
    
    @Value("#{appInfo.ftpPassword}")
    private String password;
	
    private FTPClient ftp;
	
	@Test
	void test() throws IOException {
		ftp = new FTPClient();
		ftp.setControlEncoding("UTF-8");
		ftp.addProtocolCommandListener(new PrintCommandListener(new PrintWriter(System.out), true));
    	ftp.connect(server,port);
    	ftp.login(username, password);   
    	String now = ftp.printWorkingDirectory();
    	String path = "02.28.txt";
    	String name = now+"/"+path;
    	String result = "";
    	String extension = "";
		if(name.contains(".")) {
			String[] nm = name.split("\\.");
			for(int i=0;i<nm.length-1;i++) {
				result += nm[i];
			}
			extension = nm[nm.length - 1].toLowerCase();
		}
		log.info("{}",result);
		log.info("{}",extension);

	}
	

}
