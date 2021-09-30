package com.f.s5.movies;

import java.sql.Date;

public class MoviesDTO {

   private String movieName;
   private String ageCut;
   private String rate;
   private String direc;
   private String actor;
   private String genre;
   private String runTime;
   private Date openDate;
   private String info;
   private String stillCutFile;
   private String StillCutOri;

   public String getMovieName() {
      return movieName;
   }

   public void setMovieName(String movieName) {
      this.movieName = movieName;
   }

   public String getAgeCut() {
      return ageCut;
   }

   public void setAgeCut(String ageCut) {
      this.ageCut = ageCut;
   }

   public String getRate() {
      return rate;
   }

   public void setRate(String rate) {
      this.rate = rate;
   }

   public String getDirec() {
      return direc;
   }

   public void setDirec(String direc) {
      this.direc = direc;
   }

   public String getActor() {
      return actor;
   }

   public void setActor(String actor) {
      this.actor = actor;
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

   public String getInfo() {
      return info;
   }

   public void setInfo(String info) {
      this.info = info;
   }

   public String getStillCutFile() {
      return stillCutFile;
   }

   public void setStillCutFile(String stillCutFile) {
      this.stillCutFile = stillCutFile;
   }

   public String getStillCutOri() {
      return StillCutOri;
   }

   public void setStillCutOri(String stillCutOri) {
      StillCutOri = stillCutOri;
   }

}