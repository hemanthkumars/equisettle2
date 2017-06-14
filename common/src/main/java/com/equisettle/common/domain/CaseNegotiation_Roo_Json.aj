// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.equisettle.common.domain;

import com.equisettle.common.domain.CaseNegotiation;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect CaseNegotiation_Roo_Json {
    
    public String CaseNegotiation.toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
    
    public String CaseNegotiation.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(this);
    }
    
    public static CaseNegotiation CaseNegotiation.fromJsonToCaseNegotiation(String json) {
        return new JSONDeserializer<CaseNegotiation>()
        .use(null, CaseNegotiation.class).deserialize(json);
    }
    
    public static String CaseNegotiation.toJsonArray(Collection<CaseNegotiation> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String CaseNegotiation.toJsonArray(Collection<CaseNegotiation> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<CaseNegotiation> CaseNegotiation.fromJsonArrayToCaseNegotiations(String json) {
        return new JSONDeserializer<List<CaseNegotiation>>()
        .use("values", CaseNegotiation.class).deserialize(json);
    }
    
}
