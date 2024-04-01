package kr.co.warebridge;

import java.time.LocalDateTime;

import org.junit.jupiter.api.Test;

import lombok.extern.slf4j.Slf4j;

@Slf4j
class Test4Method {

	@Test
	void test() {
		String a = "/b/c/d/e/f/";
		String[] b = a.split("/");
//		String result = "";
//		
//		for(int i=0;i<b.length-1;i++) {
//			result +=b[i]+"/";
//		}
//		
		
		for(int i=0;i<b.length;i++) {
			log.info("{}",b[i]);
		}
		
	}
	@Test
	void test1() {
		int k = 11;
		String a = String.format("a : %s", k);
		log.info(a);
	}

	@Test
	void test2() {
//		String a = "2024-03-20T05:07:40.757Z";
		String a = "2024-03-20T05:07:40";
		LocalDateTime mine = LocalDateTime.parse(a);
		LocalDateTime kk = LocalDateTime.now();
		log.info("mine : {}",mine);
		log.info("kk : {}",kk);
	}
}
