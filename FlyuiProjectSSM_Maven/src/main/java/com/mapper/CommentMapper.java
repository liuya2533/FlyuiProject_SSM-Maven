package com.mapper;

import java.util.List;
import java.util.Map;

import com.bean.Commentinfo;

public interface CommentMapper {

	//����һ������
    int addNewReply(Commentinfo commentinfo);
    //��ȡ����id���ӵĵ�ȫ������
  	List<Map<String,Object>> getCommentById(int id); 
    //��ȡ����һ����������������ǰ5������
  	List<Map<String,Object>> getThisWeekComment();
}
