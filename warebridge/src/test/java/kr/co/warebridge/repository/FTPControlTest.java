package kr.co.warebridge.repository;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.apache.commons.net.PrintCommandListener;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPFile;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Value;

import kr.co.warebridge.AbstractRootContextTest;
import kr.co.warebridge.repository.service.RepositoryServiceImpl;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class FTPControlTest extends AbstractRootContextTest{
	
	@Value("#{appInfo.ftpHost}")
    private String server;
    
    @Value("#{appInfo.ftpPort}")
    private int port;
    
    @Value("#{appInfo.ftpUser}")
    private String username;
    
    @Value("#{appInfo.ftpPassword}")
    private String password;
	
    private FTPClient ftp;
    
    private RepositoryServiceImpl impl;
	
	@Test
	void test() throws IOException {
		ftp = new FTPClient();
		ftp.setControlEncoding("UTF-8");
		ftp.addProtocolCommandListener(new PrintCommandListener(new PrintWriter(System.out), true));
    	ftp.connect(server,port);
    	ftp.login(username, password);   
    	FTPFile[] fileList = ftp.listFiles();
    	List<FTPVO> a = Arrays.stream(fileList).map(f -> new FTPVO(f)).collect(Collectors.toList());
    	a.sort(new FolderFirstComparator());
//    	Arrays.sort(a, new FolderFirstComparator());
    	for(FTPVO f : a) {
    		log.info("{}",f);
    	}
	}
	
	@Test
	void test1() throws IOException {
		ftp = new FTPClient();
		ftp.setControlEncoding("UTF-8");
		ftp.addProtocolCommandListener(new PrintCommandListener(new PrintWriter(System.out), true));
    	ftp.connect(server,port);
    	ftp.login(username, password);  
    	FTPFile[] fileList = ftp.mlistDir("/A/a");
    	for(FTPFile b : fileList) {
    		log.info("{}",b.getName());
    	}
    	String dir = ftp.printWorkingDirectory();
    	log.info("{}",dir);
	}
	
	@Test
	void test2() throws IOException {
		ftp = new FTPClient();
		ftp.setControlEncoding("UTF-8");
		ftp.addProtocolCommandListener(new PrintCommandListener(new PrintWriter(System.out), true));
    	ftp.connect(server,port);
    	ftp.login(username, password);  
    	FTPFile[] fileList = ftp.mlistDir("/");
    	FTPVO vo = new FTPVO(fileList[0]);
    	Instant a = vo.getTimestampInstant();
    	Long milli = a.toEpochMilli();
    	LocalDateTime b = LocalDateTime.ofInstant(a, ZoneId.systemDefault());
//    	LocalDate q = LocalDate.ofInstant(a, ZoneId.systemDefault());
//    	log.info("off : {}",q);
	}

	@Test
	void test3() throws IOException {
		ftp = new FTPClient();
		ftp.setControlEncoding("UTF-8");
		ftp.addProtocolCommandListener(new PrintCommandListener(new PrintWriter(System.out), true));
		ftp.connect(server,port);
		ftp.login(username, password);  
		FTPFile[] fileList = ftp.listFiles();
		for(FTPFile file : fileList) {
			log.info("type : {}",file.getType());
		}
		
	}
	
	@Test
	void test4() throws IOException{
		ftp = new FTPClient();
		ftp.setControlEncoding("UTF-8");
		ftp.addProtocolCommandListener(new PrintCommandListener(new PrintWriter(System.out), true));
		ftp.connect(server,port);
		ftp.login(username, password);
		InputStream file = ftp.retrieveFileStream("/새 폴더/asdf/호랑이.jpg");
	}
	
	@Test
	void test5() throws IOException{
		ftp = new FTPClient();
		ftp.setControlEncoding("UTF-8");
		ftp.addProtocolCommandListener(new PrintCommandListener(new PrintWriter(System.out), true));
		ftp.connect(server,port);
		ftp.login(username, password);
		ftp.setFileType(FTPClient.BINARY_FILE_TYPE);
		
		String name1 = "/b.txt";
		String name2 = "/c.zip";
		
		InputStream is1 = ftp.retrieveFileStream(name1);
		ftp.completePendingCommand();
		InputStream is2 = ftp.retrieveFileStream(name2);
		
		assertNotNull(is1);
		assertNotNull(is2);
		
	}
	@Test
	void test6() throws IOException{
		ftp = new FTPClient();
		ftp.setControlEncoding("UTF-8");
		ftp.addProtocolCommandListener(new PrintCommandListener(new PrintWriter(System.out), true));
		ftp.connect(server,port);
		ftp.login(username, password);
		ftp.setFileType(FTPClient.BINARY_FILE_TYPE);
		String path = "/새 폴더/가나다라/";
		FTPFile[] files = ftp.listFiles(path);
		for(FTPFile file : files) {
			log.info(file.getName());
		}
	}
	@Test
	void test7() throws IOException {
		ftp = new FTPClient();
		ftp.setControlEncoding("UTF-8");
		ftp.addProtocolCommandListener(new PrintCommandListener(new PrintWriter(System.out), true));
		ftp.connect(server,port);
		ftp.login(username, password);
		ftp.setFileType(FTPClient.BINARY_FILE_TYPE);
		impl = new RepositoryServiceImpl();
		String path = "/새 폴더/가나다라";
		impl.removeFilesInFolder(path);
	}

	@Test
	void test8() throws IOException {
		File file = new File("D:\\tempDirs\\FTP_14230569082735115229");
		assertNotNull(file);
	}

	@Test
	void test9() throws IOException {
		ftp = new FTPClient();
		ftp.setControlEncoding("UTF-8");
		ftp.addProtocolCommandListener(new PrintCommandListener(new PrintWriter(System.out), true));
		ftp.connect(server,port);
		ftp.login(username, password);
		ftp.setFileType(FTPClient.BINARY_FILE_TYPE);
		FTPFile file = ftp.mlistFile("/b.txt");
		long timeMillis = file.getTimestamp().getTimeInMillis();
		LocalDateTime date = LocalDateTime.ofInstant(file.getTimestampInstant(), ZoneId.systemDefault());
		log.info("timeStamp : {}",date.toLocalDate());
//		LocalDate
		
	}
	
	
	public class FolderFirstComparator implements Comparator<FTPVO> {
	    @Override
	    public int compare(FTPVO file1, FTPVO file2) {
	        // Folders come before files
	        if (file1.file.isDirectory() && !file2.file.isDirectory()) {
	            return -1; // file1 comes first (folder)
	        } else if (!file1.file.isDirectory() && file2.file.isDirectory()) {
	            return 1; // file2 comes first (folder)
	        } else {
	            return file1.getName().compareToIgnoreCase(file2.getName());
	        }
	    }
	}
}
