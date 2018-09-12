package com.bean;

import java.util.*;

public class Articleinfo {

  
  private int id;

 
  private String title;


  private int istop;

  private int isgood;

  private int isdone;

  private int remarknum;

  private int visitnum;

  private int userid;

  private int paykiss;

  private int typeid;

  private Date releasetime;

  private String topic_markdown_content;
  private String topic_markdown_html;
  
  public String getTopic_markdown_content() {
	return topic_markdown_content;
 }
   public void setTopic_markdown_content(String topic_markdown_content) {
	this.topic_markdown_content = topic_markdown_content;
 }
  public String getTopic_markdown_html() {
	return topic_markdown_html;
  }
   public void setTopic_markdown_html(String topic_markdown_html) {
	this.topic_markdown_html = topic_markdown_html;
   }

  public int getId() {
    return id;
  }
  public void setId(int id){
    this.id = id;
  }
  public String getTitle() {
    return title;
  }
  public void setTitle(String title){
    this.title = title;
  }
 
public int getIstop() {
    return istop;
  }
  public void setIstop(int istop){
    this.istop = istop;
  }
  public int getIsgood() {
    return isgood;
  }
  public void setIsgood(int isgood){
    this.isgood = isgood;
  }
  public int getIsdone() {
    return isdone;
  }
  public void setIsdone(int isdone){
    this.isdone = isdone;
  }
  public int getRemarknum() {
    return remarknum;
  }
  public void setRemarknum(int remarknum){
    this.remarknum = remarknum;
  }
  public int getVisitnum() {
    return visitnum;
  }
  public void setVisitnum(int visitnum){
    this.visitnum = visitnum;
  }
  public int getUserid() {
    return userid;
  }
  public void setUserid(int userid){
    this.userid = userid;
  }
  public int getPaykiss() {
    return paykiss;
  }
  public void setPaykiss(int paykiss){
    this.paykiss = paykiss;
  }

  
  public int getTypeid() {
	return typeid;
}
public void setTypeid(int typeid) {
	this.typeid = typeid;
}
public Date getReleasetime() {
    return releasetime;
  }
  public void setReleasetime(Date releasetime){
    this.releasetime = releasetime;
  }
}
