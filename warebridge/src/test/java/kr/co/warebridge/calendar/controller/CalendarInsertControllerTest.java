package kr.co.warebridge.calendar.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;

import org.apache.commons.io.CopyUtils;
import org.junit.jupiter.api.Test;

import kr.co.warebridge.vo.schedule.ScheduleVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class CalendarInsertControllerTest {

	@Test
	void test() {
		LocalDateTime time = LocalDateTime.now();
		LocalDateTime newDat = time.plusDays(3);
		log.info("time : {}",time);
		log.info("newDat : {}",newDat);
		LocalDate nowDay = time.toLocalDate();
		LocalDate newDay = newDat.toLocalDate();
		
		int result = nowDay.compareTo(newDay);
		log.info("{}",result);
	}
	
	
	@Test
	void test1() {
		ScheduleVO first = new ScheduleVO();
	}
}
