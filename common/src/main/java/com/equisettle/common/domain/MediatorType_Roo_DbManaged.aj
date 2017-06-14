// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.equisettle.common.domain;

import com.equisettle.common.domain.Mediator;
import com.equisettle.common.domain.MediatorType;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;

privileged aspect MediatorType_Roo_DbManaged {
    
    @OneToMany(mappedBy = "mediatorTypeId")
    private Set<Mediator> MediatorType.mediators;
    
    @Column(name = "MEDIATOR_TYPE", length = 255)
    private String MediatorType.mediatorType;
    
    public Set<Mediator> MediatorType.getMediators() {
        return mediators;
    }
    
    public void MediatorType.setMediators(Set<Mediator> mediators) {
        this.mediators = mediators;
    }
    
    public String MediatorType.getMediatorType() {
        return mediatorType;
    }
    
    public void MediatorType.setMediatorType(String mediatorType) {
        this.mediatorType = mediatorType;
    }
    
}