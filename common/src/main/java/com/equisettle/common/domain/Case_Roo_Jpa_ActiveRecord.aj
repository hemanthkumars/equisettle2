// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.equisettle.common.domain;

import com.equisettle.common.domain.Case;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Case_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Case.entityManager;
    
    public static final List<String> Case.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Case.entityManager() {
        EntityManager em = new Case().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Case.countCases() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Case o", Long.class).getSingleResult();
    }
    
    public static List<Case> Case.findAllCases() {
        return entityManager().createQuery("SELECT o FROM Case o", Case.class).getResultList();
    }
    
    public static List<Case> Case.findAllCases(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Case o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Case.class).getResultList();
    }
    
    public static Case Case.findCase(Integer caseId) {
        if (caseId == null) return null;
        return entityManager().find(Case.class, caseId);
    }
    
    public static List<Case> Case.findCaseEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Case o", Case.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Case> Case.findCaseEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Case o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Case.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Case.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Case.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Case attached = Case.findCase(this.caseId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Case.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Case.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Case Case.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Case merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
