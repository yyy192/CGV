package com.f.s5.ticket;

public class TicketDTO {

   private String id;
   private String ticketNum;
   private String movieName;
   private String theater;
   private String timeTableSelete;
   private String seat;
   private String price;

   public String getId() {
      return id;
   }

   public void setId(String id) {
      this.id = id;
   }

   public String getTicketNum() {
      return ticketNum;
   }

   public void setTicketNum(String ticketNum) {
      this.ticketNum = ticketNum;
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

   public String getTimeTableSelete() {
      return timeTableSelete;
   }

   public void setTimeTableSelete(String timeTableSelete) {
      this.timeTableSelete = timeTableSelete;
   }

   public String getSeat() {
      return seat;
   }

   public void setSeat(String seat) {
      this.seat = seat;
   }

   public String getPrice() {
      return price;
   }

   public void setPrice(String price) {
      this.price = price;
   }

}