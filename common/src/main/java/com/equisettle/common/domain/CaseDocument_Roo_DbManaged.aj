// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.equisettle.common.domain;

import com.equisettle.common.domain.Case;
import com.equisettle.common.domain.CaseDocument;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect CaseDocument_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "CASE_ID", referencedColumnName = "CASE_ID")
    private Case CaseDocument.caseId;
    
    @Column(name = "CASE_DOCUMENT_URL", length = 255)
    private String CaseDocument.caseDocumentUrl;
    
    @Column(name = "AUDIT_CREATED_DT_TIME")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar CaseDocument.auditCreatedDtTime;
    
    public Case CaseDocument.getCaseId() {
        return caseId;
    }
    
    public void CaseDocument.setCaseId(Case caseId) {
        this.caseId = caseId;
    }
    
    public String CaseDocument.getCaseDocumentUrl() {
        return caseDocumentUrl;
    }
    
    public void CaseDocument.setCaseDocumentUrl(String caseDocumentUrl) {
        this.caseDocumentUrl = caseDocumentUrl;
    }
    
    public Calendar CaseDocument.getAuditCreatedDtTime() {
        return auditCreatedDtTime;
    }
    
    public void CaseDocument.setAuditCreatedDtTime(Calendar auditCreatedDtTime) {
        this.auditCreatedDtTime = auditCreatedDtTime;
    }
    
}
