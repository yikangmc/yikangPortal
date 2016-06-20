package com.yikang.protal.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.apache.taglibs.standard.lang.jstl.test.beans.PublicInterface2;
import org.aspectj.util.FileUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;

import com.yikang.base.utils.FileUploadUtils;

/**
 * 文件上传控制器
 * 
 * @author yikangmc
 *
 */
@Controller
public class FileUploadConvertController {

	private Logger logger = Logger.getLogger(FileUploadConvertController.class);

	@RequestMapping
	@ResponseBody
	public String fileUpload(@RequestParam(value = "files") MultipartFile[] files, HttpServletRequest request) {
		logger.info("进来了");
		// MultipartHttpServletRequest multipartRequest
		// =(MultipartHttpServletRequest) request;
		//
		// MultipartFile file = multipartRequest.getFile("files");
		//
		// Map<String, MultipartFile> fileMap =multipartRequest.getFileMap();

		if (files.length > 0) {
			for (MultipartFile multipartFile : files) {
				String oldFileName = multipartFile.getOriginalFilename();
				String newFile=com.yikang.base.utils.FileUtil.getUniqueFileName(oldFileName);
				File file1 = new File("D:\\tmp\\"+newFile);
				try {
					FileUtils.writeByteArrayToFile(file1, multipartFile.getBytes());
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

		}
		return "";
	}

}
