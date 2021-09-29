package com.f.s5.ticket;

import java.sql.Date;

public class MothDTO {

   private String movieName;
   private String theater;
   private Date watchDate;

   public String getMovieName() {
      return movieName;
   }

   public void setMovieName(String movieName) {
      this.movieName = movieName;
   }

   public String getTheater() {
      return theater;
   }

   public void setTheater(String theater) {
      this.theater = theater;
   }

   public Date getWatchDate() {
      return watchDate;
   }

   public void setWatchDate(Date watchDate) {
      this.watchDate = watchDate;
   }

}