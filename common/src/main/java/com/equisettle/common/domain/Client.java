package com.equisettle.common.domain;
import java.util.Date;
import java.util.List;

import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;


import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "client")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "case1s", "case1s1", "case1s2", "case1s3", "caseNegotiations", "caseNegotiations1", "countryId" })
@RooJson
public class Client {
	@Column(name = "LAST_LOGGED_IN")
    private Date lastLoggedIn;
    
    @Column(name = "AUDIT_CREATED_DT_TIME")
    private Date auditCreatedDtTime;
	
	
	  public Date getLastLoggedIn() {
		return lastLoggedIn;
	}


	public void setLastLoggedIn(Date lastLoggedIn) {
		this.lastLoggedIn = lastLoggedIn;
	}


	public Date getAuditCreatedDtTime() {
		return auditCreatedDtTime;
	}


	public void setAuditCreatedDtTime(Date auditCreatedDtTime) {
		this.auditCreatedDtTime = auditCreatedDtTime;
	}


	
	    
	    
	public static Client authenticateLogin(String userName,String password){
		List<Client> list=entityManager().createQuery("SELECT sa FROM Client  sa WHERE sa.userName="+userName+" AND sa.password="+password+"  ").getResultList();
		if(list.isEmpty()){
			return null;
		}else{
			return list.get(0);
		}
		
	}
}
