package com.yikang.protal.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yikang.base.response.ResponseMessage;
import com.yikang.common.utils.MatchHtmlElementAttrValue;
import com.yikang.common.utils.UserUtils;
import com.yikang.protal.entity.FormPosts;
import com.yikang.protal.entity.User;
import com.yikang.protal.service.ForumPostService;
import com.yikang.protal.service.UserService;

@Controller
public class ForumPostController {
	
	
	@Autowired
	private ForumPostService forumPostService;
	
	@Autowired
	private UserService userService;
	
	
	/**
	 * @author liushuaic
	 * @date 2016-07-29 10:35
	 * @desc 添加文章
	 * **/
	public ResponseMessage<String> insertPerformenceForumPost(HttpServletRequest req, String title,String htmlContent,
			Long[] taglibIds,String recommendPicUrl){
		
		ResponseMessage<String> responseMessage=new ResponseMessage<String>();
		
		try{}catch(Exception e){
			e.printStackTrace();
		}
		
		Long userId=UserUtils.getUserId(req);
		String contents=htmlContent;
		User user=userService.getUserByUserId(userId);
		String[] images=new String[0];
		if(null != contents && contents.length()>0){
			List<String> imageArray=MatchHtmlElementAttrValue.getImgSrc(contents);
			String[] args={};
			images=imageArray.toArray(args.clone());
		}

		String content=htmlContent;
		String forumPostHtmlDetailContent=htmlContent;
		content=content.replaceAll("<br>", "\n");
		content=content.replaceAll("&nbsp;", " ");
		content=content.replaceAll("&ldquo;", "");
		content=MatchHtmlElementAttrValue.replaseAndCharachter(content);
		String detailContent=MatchHtmlElementAttrValue.replaceAllHtmlTagContent(content);
		String forumPostDetailContent=detailContent;

		String subContent=forumPostDetailContent.replaceAll("\n","").replaceAll(" ","").replace("\r","");
		String contentStr=subContent.length()>100?subContent.substring(0,100):subContent;

		forumPostService.insertPerformencePublishForumPosts(title,content,forumPostHtmlDetailContent,taglibIds,recommendPicUrl,userId,images);
		
		return responseMessage;
		
	}
	
	
	
	@RequestMapping
	public String majorsAnswer(ModelMap modelMap,String forumPostUUid){
		FormPosts formPosts=forumPostService.getForumPostsByForumPostUuid(forumPostUUid);
		modelMap.put("formPosts", formPosts);
		return "appPage/majorsAnswer";
	}
	
	

}
