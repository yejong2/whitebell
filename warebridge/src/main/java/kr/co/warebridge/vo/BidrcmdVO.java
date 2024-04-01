package kr.co.warebridge.vo;

import java.text.DecimalFormat;
import java.time.LocalDate;

import lombok.Data;

@Data
public class BidrcmdVO {
	private Integer brRank;
	private String brCmpIndustry;
	private String brCmpCptl;
	private LocalDate brRcmdymd;
	private String brBiBidno;
	private String bidViewAmount;
	
	private BidinfoVO bidinfo;
	
	public String getBidViewAmount() {
		long amount = bidinfo.getBiBidamout();
		DecimalFormat decimalFormat = new DecimalFormat("#,###");
		return decimalFormat.format(amount);
	}
}
