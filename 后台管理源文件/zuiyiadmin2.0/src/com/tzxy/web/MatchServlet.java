package com.tzxy.web;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import com.tzxy.domain.Match;
import com.tzxy.service.matchService;

@WebServlet("/MatchServlet")
public class MatchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MatchServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String img = request.getParameter("img");
		try {
			DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
			diskFileItemFactory.setSizeThreshold(3*1024*1024);
			ServletFileUpload fileUpload = new ServletFileUpload(diskFileItemFactory);
			fileUpload.setHeaderEncoding("utf-8");
			List<FileItem> list = fileUpload.parseRequest(request);
			Map<String, Object> map=new HashMap<String, Object>();
			String fileName=null;
			for (FileItem fileItem : list) {
				if(fileItem.isFormField()) {
					String name=fileItem.getFieldName();
					String value=fileItem.getString("utf-8");
					map.put(name, value);
				}else {
					fileName=fileItem.getName();
					fileName=fileName.substring(fileName.lastIndexOf("\\")+1);
					InputStream is=fileItem.getInputStream();
					String path=this.getServletContext().getRealPath("/backstage2/img");
					
					
					OutputStream os=new FileOutputStream(path+"\\"+fileName);
					IOUtils.copy(is, os);
					int length=0;
					byte[] b=new byte[1024];
					while((length=is.read(b))!=-1) {
						os.write(b, 0, length);
					}
					is.close();
					os.close();
				}
			}
			Match match = new Match();
			BeanUtils.populate(match, map);
			match.setPhoto("/backstage2/img/"+fileName);
			long l=System.currentTimeMillis();
			Date date=new Date(l);
			SimpleDateFormat dateformat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			
			matchService matchService = new matchService();
			boolean flag=matchService.insertMatch(match);
			
			if(flag) {
				response.sendRedirect(request.getContextPath()+"/backstage2/ht_bsxxfb.jsp");
			}else {
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
