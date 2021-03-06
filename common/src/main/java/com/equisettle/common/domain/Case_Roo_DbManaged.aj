// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.equisettle.common.domain;

import com.equisettle.common.domain.Case;
import com.equisettle.common.domain.CaseDocument;
import com.equisettle.common.domain.CaseNegotiation;
import com.equisettle.common.domain.CaseStatus;
import com.equisettle.common.domain.CaseType;
import com.equisettle.common.domain.Client;
import com.equisettle.common.domain.Mediator;
import java.util.Calendar;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Case_Roo_DbManaged {
    
    @OneToMany(mappedBy = "caseId")
    private Set<CaseDocument> Case.caseDocuments;
    
    @OneToMany(mappedBy = "caseId")
    private Set<CaseNegotiation> Case.caseNegotiations;
    
    @ManyToOne
    @JoinColumn(name = "MEDIATOR_ID", referencedColumnName = "MEDIATOR_ID")
    private Mediator Case.mediatorId;
    
    @ManyToOne
    @JoinColumn(name = "CASE_TYPE_ID", referencedColumnName = "CASE_TYPE_ID")
    private CaseType Case.caseTypeId;
    
    @ManyToOne
    @JoinColumn(name = "CASE_INITIATED_CLIENT_ID", referencedColumnName = "CLIENT_ID")
    private Client Case.caseInitiatedClientId;
    
    @ManyToOne
    @JoinColumn(name = "CASE_ON_CLIENT_ID", referencedColumnName = "CLIENT_ID")
    private Client Case.caseOnClientId;
    
    @ManyToOne
    @JoinColumn(name = "CASE_STATUS_ID", referencedColumnName = "CASE_STATUS_ID")
    private CaseStatus Case.caseStatusId;
    
    @ManyToOne
    @JoinColumn(name = "CLIENT_ID_WHO_VOWS_MONEY", referencedColumnName = "CLIENT_ID")
    private Client Case.clientIdWhoVowsMoney;
    
    @ManyToOne
    @JoinColumn(name = "CLIENT_ID_WHO_CLAIMS_MONEY", referencedColumnName = "CLIENT_ID")
    private Client Case.clientIdWhoClaimsMoney;
    
    @Column(name = "CASE_TITLE", length = 255)
    private String Case.caseTitle;
    
    @Column(name = "CASE_DESCRIPTION", length = 255)
    private String Case.caseDescription;
    
    @Column(name = "CASE_ADDRESS", length = 255)
    private String Case.caseAddress;
    
    @Column(name = "MAX_NEGOTIATION_ATTEMPTS_ALLOWED")
    private Integer Case.maxNegotiationAttemptsAllowed;
    
    @Column(name = "AUDIT_CREATED_DT_TIME")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Case.auditCreatedDtTime;
    
    public Set<CaseDocument> Case.getCaseDocuments() {
        return caseDocuments;
    }
    
    public void Case.setCaseDocuments(Set<CaseDocument> caseDocuments) {
        this.caseDocuments = caseDocuments;
    }
    
    public Set<CaseNegotiation> Case.getCaseNegotiations() {
        return caseNegotiations;
    }
    
    public void Case.setCaseNegotiations(Set<CaseNegotiation> caseNegotiations) {
        this.caseNegotiations = caseNegotiations;
    }
    
    public Mediator Case.getMediatorId() {
        return mediatorId;
    }
    
    public void Case.setMediatorId(Mediator mediatorId) {
        this.mediatorId = mediatorId;
    }
    
    public CaseType Case.getCaseTypeId() {
        return caseTypeId;
    }
    
    public void Case.setCaseTypeId(CaseType caseTypeId) {
        this.caseTypeId = caseTypeId;
    }
    
    public Client Case.getCaseInitiatedClientId() {
        return caseInitiatedClientId;
    }
    
    public void Case.setCaseInitiatedClientId(Client caseInitiatedClientId) {
        this.caseInitiatedClientId = caseInitiatedClientId;
    }
    
    public Client Case.getCaseOnClientId() {
        return caseOnClientId;
    }
    
    public void Case.setCaseOnClientId(Client caseOnClientId) {
        this.caseOnClientId = caseOnClientId;
    }
    
    public CaseStatus Case.getCaseStatusId() {
        return caseStatusId;
    }
    
    public void Case.setCaseStatusId(CaseStatus caseStatusId) {
        this.caseStatusId = caseStatusId;
    }
    
    public Client Case.getClientIdWhoVowsMoney() {
        return clientIdWhoVowsMoney;
    }
    
    public void Case.setClientIdWhoVowsMoney(Client clientIdWhoVowsMoney) {
        this.clientIdWhoVowsMoney = clientIdWhoVowsMoney;
    }
    
    public Client Case.getClientIdWhoClaimsMoney() {
        return clientIdWhoClaimsMoney;
    }
    
    public void Case.setClientIdWhoClaimsMoney(Client clientIdWhoClaimsMoney) {
        this.clientIdWhoClaimsMoney = clientIdWhoClaimsMoney;
    }
    
    public String Case.getCaseTitle() {
        return caseTitle;
    }
    
    public void Case.setCaseTitle(String caseTitle) {
        this.caseTitle = caseTitle;
    }
    
    public String Case.getCaseDescription() {
        return caseDescription;
    }
    
    public void Case.setCaseDescription(String caseDescription) {
        this.caseDescription = caseDescription;
    }
    
    public String Case.getCaseAddress() {
        return caseAddress;
    }
    
    public void Case.setCaseAddress(String caseAddress) {
        this.caseAddress = caseAddress;
    }
    
    public Integer Case.getMaxNegotiationAttemptsAllowed() {
        return maxNegotiationAttemptsAllowed;
    }
    
    public void Case.setMaxNegotiationAttemptsAllowed(Integer maxNegotiationAttemptsAllowed) {
        this.maxNegotiationAttemptsAllowed = maxNegotiationAttemptsAllowed;
    }
    
    public Calendar Case.getAuditCreatedDtTime() {
        return auditCreatedDtTime;
    }
    
    public void Case.setAuditCreatedDtTime(Calendar auditCreatedDtTime) {
        this.auditCreatedDtTime = auditCreatedDtTime;
    }
    
}
