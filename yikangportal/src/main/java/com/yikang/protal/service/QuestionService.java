package com.yikang.protal.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.aspectj.weaver.patterns.TypePatternQuestions.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.yikang.base.response.ResponseMessage;
import com.yikang.common.error.ExceptionConstants;
import com.yikang.common.utils.MatchHtmlElementAttrValue;
import com.yikang.protal.common.page.PageParameter;
import com.yikang.protal.entity.QuestionAnswer;
import com.yikang.protal.manager.QuestionAnswerManager;
import com.yikang.protal.manager.QuestionManager;

@Service(value="questionService")
public class QuestionService {
	
	@Autowired
	private QuestionManager questionManager;
	
	@Autowired
	private QuestionAnswerManager questionAnswerManager;
	
	
	
	/**
	 * @author liushuaic
	 * @date 2016-05-09 17:00
	 * @desc 发布问题
	 * 
	 * **/
	public ResponseMessage<String> insertQuestion(Map<String,Object> paramMap){
		ResponseMessage<String> resData=new ResponseMessage<String>();
		if(
				paramMap.containsKey("title")
				&&paramMap.containsKey("content")
				&&paramMap.containsKey("taglibIds")
				&&paramMap.containsKey("images")
			){
				
			String title=paramMap.get("title").toString();
			String content=paramMap.get("content").toString();
			List taglibIds=(List)paramMap.get("taglibIds");
			//Long[] tagIds=ParamMapUtils.converObjectArrayToLong(taglibIds);
			Long userId=Long.valueOf(paramMap.get("userId").toString());
			List imagesArray=(List)paramMap.get("images");
			//String[] images=ParamMapUtils.converObjectArrayToString(imagesArray);
			
			//questionManager.insertQuestion(title, content, tagIds, userId,images);
			
		}else{
			
			resData.setStatus(ExceptionConstants.parameterException.parameterException.errorCode);
			resData.setMessage(ExceptionConstants.parameterException.parameterException.errorMessage);
			
		}
		
		return resData;
	}
	
	/**
	 * 
	 * @author liushuaic
	 * @date 2016-05-09 17:02
	 * @desc 问题 支持与取消
	 * 
	 * */
	public ResponseMessage<Integer> updateQuestionStar(Map<String,Object> paramMap){
		ResponseMessage<Integer> resData=new ResponseMessage<Integer>();
		if(
			paramMap.containsKey("questionAnswerId")
			&& paramMap.containsKey("userId")
		){
			Long questionAnswerId=Long.valueOf(paramMap.get("questionAnswerId").toString());
			Long userId=Long.valueOf(paramMap.get("userId").toString());
			int isStar=questionAnswerManager.updateQustionAnswerStar(questionAnswerId, userId);
			resData.setData(isStar);
		}else{
			resData.setStatus(ExceptionConstants.parameterException.parameterException.errorCode);
			resData.setMessage(ExceptionConstants.parameterException.parameterException.errorMessage);
		}
		return resData;
	}
	
	
	/**
	 * @author liushuaic
	 * @date 2016-05-10 16:30
	 * @desc 添加问题回复
	 * */
	public ResponseMessage<String> addQuestionAnswer(Map<String,Object> paramMap){
		ResponseMessage<String> resData=new ResponseMessage<String>();
		
		if(
			paramMap.containsKey("questionId")
			&& paramMap.containsKey("detailContent")
			&& paramMap.containsKey("htmlDetailContent")
			&& paramMap.containsKey("userId")
		){
			Long questionId=Long.valueOf(paramMap.get("questionId").toString());
			Long createUserId=Long.valueOf(paramMap.get("userId").toString());
			String detailContent=paramMap.get("detailContent").toString();
			String htmlDetailContent=paramMap.get("htmlDetailContent").toString();
			String[] images=new String[0];
			
			String content=detailContent.length()>100?detailContent.substring(0,100):detailContent;
			
			List<String> imageArray=MatchHtmlElementAttrValue.getImgSrc(htmlDetailContent);
			images=imageArray.toArray(images);
			questionAnswerManager.insertSelective(questionId, content,detailContent,htmlDetailContent, createUserId,images);
		}else{
			resData.setStatus(ExceptionConstants.parameterException.parameterException.errorCode);
			resData.setMessage(ExceptionConstants.parameterException.parameterException.errorMessage);
		}
		
		return resData;
	}
	
	
	/**
	 * @author liushuaic
	 * @date 2016-05-11 14:29
	 * @desc 查询问题详情
	 * **/
	public ResponseMessage<Question> getQuestionDetailByQuestionId(Map<String,Object> paramMap){
		ResponseMessage<Question> resData=new ResponseMessage<Question>();
		if(paramMap.containsKey("questionId")){
			
			Long questionId=Long.valueOf(paramMap.get("questionId").toString());
			Long userId=null;
			if(paramMap.containsKey("userId") && (!StringUtils.isEmpty(paramMap.get("userId")))){
				userId=Long.valueOf(paramMap.get("userId").toString());
			}
			//Question question=questionManager.getQuestionDetailByQuestionId(questionId,userId);
			//resData.setData(question);
		}else{
			resData.setStatus(ExceptionConstants.parameterException.parameterException.errorCode);
			resData.setMessage(ExceptionConstants.parameterException.parameterException.errorMessage);
		}
		
		return resData;
	}
	/**
	 * @author liushuaic
	 * @date 2016-06-07 14:29
	 * @desc 获取热门回复
	 * **/
	public ResponseMessage<List<QuestionAnswer>> getHotQuestionAnswer(Map<String,Object> paramMap){
		ResponseMessage<List<QuestionAnswer>> resData=new ResponseMessage<List<QuestionAnswer>>();
		Long userId=null;
		if(paramMap.containsKey("userId")){
			 userId=Long.valueOf(paramMap.get("userId").toString());
		}
		List<QuestionAnswer> questionAnswers=questionManager.getHotQuestionAnswer(userId);
		resData.setData(questionAnswers);
		return resData;
	}
	
	
	/**
	 * @author liushuaic
	 * @date 2016-05-19 16:20
	 * @desc 获取某一个标签下的所有问题
	 * **/
	public ResponseMessage<List<Question>> getQuestionsByTaglibId(Map<String,Object> paramMap){
		ResponseMessage<List<Question>> resData=new ResponseMessage<List<Question>>();
		if(
				paramMap.containsKey("taglibId")
			&&  paramMap.containsKey("page")
		){
			
			Map<String,Object> resultMap=new HashMap<String,Object>();
			PageParameter page=new PageParameter();
			if(paramMap.containsKey("page")){
				int currentPage=Integer.valueOf(paramMap.get("page").toString());
				page.setCurrentPage(currentPage);
			}
			Long taglibId=Long.valueOf(paramMap.get("taglibId").toString());
//			List<Question> questions=questionManager.getQuestionByTaglibid(taglibId,page);
//			resultMap.put("result", questions);
//			resultMap.put("page", page);
//			resData.setData(questions);
		}else{
			resData.setStatus(ExceptionConstants.parameterException.parameterException.errorCode);
			resData.setMessage(ExceptionConstants.parameterException.parameterException.errorMessage);
		}
		return resData;
	}
	
	
	/**
	 * @author liushuaic
	 * @date 2016-06-07 11:26
	 * @desc 获取某一个用户创建的问题列表
	 * **/
	public ResponseMessage<List<Question>> getQuestionByCreateUserId(Map<String,Object> paramMap){
		ResponseMessage<List<Question>> resData=new ResponseMessage<List<Question>>();
		if(paramMap.containsKey("userId")){
			Long userId=Long.valueOf(paramMap.get("userId").toString());
//			List<Question> questions=questionManager.getQuestionByCreateUserId(userId);
//			resData.setData(questions);
		}else{
			resData.setStatus(ExceptionConstants.parameterException.parameterException.errorCode);
			resData.setMessage(ExceptionConstants.parameterException.parameterException.errorMessage);
		}
		return resData;
	}
	
	

	
}
