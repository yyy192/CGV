package com.f.s5.ticket;

import java.sql.Date;

public class MothDTO {

   private String movieName;
   private String theater;
   private Date watchDate;
   private String ageCut;
   private String genre;
   private String runTime;
   private Date openDate;
   
   

   public String getAgeCut() {
      return ageCut;
   }
   
   public void setAgeCut(String ageCut) {
      this.ageCut = ageCut;
   }
   
   public String getGenre() {
      return genre;
   }
   
   public void setGenre(String genre) {
      this.genre = genre;
   }
   
   public String getRunTime() {
      return runTime;
   }
   
   public void setRunTime(String runTime) {
      this.runTime = runTime;
   }
   
   public Date getOpenDate() {
      return openDate;
   }
   
   public void setOpenDate(Date openDate) {
      this.openDate = openDate;
   }
   
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