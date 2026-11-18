/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.logic.io

public class AbIOSystem : JObject {
    private static AbIOSystem? instance;
    private static bool staticSet_instance = false;
    private static AbIOSystem staticGet_instance() {
        if (!AbIOSystem.staticSet_instance) {
            AbIOSystem.staticSet_instance = true;
            AbIOSystem.instance = new AbIOSystem();
        }
        return AbIOSystem.instance;
    }
    private string type;

    // Java field initializers run after the base constructor
    private void initFieldsAbIOSystem() {
    this.type = "java.io";
    }

    public AbIOSystem() {
        base();
        this.initFieldsAbIOSystem();
    }
    

    public static AbIOSystem getInstance() {
        return AbIOSystem.staticGet_instance();
    }
    

    public virtual string getType() {
        return this.type;
    }
    

    public virtual bool isType(string type) {
        if (JString.compareTo(this.type, type) == 0) {
            return true;
        } else {
            return false;
        }
    }
}

