package com.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.equisettle.common.domain.Client;
import com.equisettle.common.util.EncryptAndDecrypt;
import com.util.SessionManager;
import com.util.UserContext;

@RequestMapping("/client/")
@Controller
public class ClientController {
	
	@RequestMapping(value = "login/authenticateLogin", method = RequestMethod.POST,produces = "application/json")
	 @ResponseBody
	 public String login(HttpServletRequest request,HttpServletResponse reresponse)  {
		JSONObject input= new JSONObject(request.getParameter("input"));
		String userName=input.getString("userName");
		String password=input.getString("password");
		password=EncryptAndDecrypt.encrypt(password);
		Client client=Client.authenticateLogin(userName, password);
		JSONObject output= new JSONObject();
		if(client==null){
			output.put("error", "true");
			output.put("message", "Invalid Username or Password");
		}else{
			output.put("error", "false");
			output.put("message", "Login Successfull");
			UserContext userContext= new UserContext();
			userContext.setClient(client);
			SessionManager.putUserContext(request, userContext);
			output.put("JSESSIONID", request.getSession().getId());
			//output.put("clientName",client.get);
			
		}
		
		
		
		return output.toString();
	}
	
}
