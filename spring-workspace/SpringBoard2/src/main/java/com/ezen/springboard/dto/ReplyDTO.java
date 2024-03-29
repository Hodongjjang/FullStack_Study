package com.ezen.springboard.dto;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyDTO {
   
   private Integer reply_id; 
   private Integer board_id; 
   private String reply_writer;
   private String reply_content;
   private String reply_password;
   private Integer good_count;
   private Integer bad_count;
   private Date reply_date;

}