package com.f.s5.theaters;

import java.util.List;

import com.f.s5.ticket.MothDTO;

public class TheatersDTO {

   private String theater;
   private String timeTable1;
   private String timeTable2;
   private String timeTable3;
   private String timeTable4;
   private List<MothDTO> moths;

   
   public List<MothDTO> getMoths() {
	return moths;
}

	public void setMoth(List<MothDTO> moths) {
		this.moths = moths;
	}
	
	public String getTheater() {
	      return theater;
	   }

   public void setTheater(String theater) {
      this.theater = theater;
   }

   public String getTimeTable1() {
      return timeTable1;
   }

   public void setTimeTable1(String timeTable1) {
      this.timeTable1 = timeTable1;
   }

   public String getTimeTable2() {
      return timeTable2;
   }

   public void setTimeTable2(String timeTable2) {
      this.timeTable2 = timeTable2;
   }

   public String getTimeTable3() {
      return timeTable3;
   }

   public void setTimeTable3(String timeTable3) {
      this.timeTable3 = timeTable3;
   }

   public String getTimeTable4() {
      return timeTable4;
   }

   public void setTimeTable4(String timeTable4) {
      this.timeTable4 = timeTable4;
   }

}