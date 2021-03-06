package com.equisettle.common.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "case_type")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "case1s" })
@RooJson
public class CaseType {
}
