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
// package org.allbinary.logic.communication.log.config.type

public class LogConfigType : JObject {
    private string name;
    private string description;

    // Java field initializers run after the base constructor
    private void initFieldsLogConfigType() {
    
    
    }
    

    public LogConfigType(string name, string description) {
        base();
        this.initFieldsLogConfigType();
        this.name = name;
        this.description = description;
    }
    

    public virtual string getName() {
        return this.name;
    }
    

    public virtual string getDescription() {
        return this.description;
    }
    

    public virtual void setName(string value) {
        this.name = value;
    }
    

    public virtual void setDescription(string value) {
        this.description = value;
    }
}

