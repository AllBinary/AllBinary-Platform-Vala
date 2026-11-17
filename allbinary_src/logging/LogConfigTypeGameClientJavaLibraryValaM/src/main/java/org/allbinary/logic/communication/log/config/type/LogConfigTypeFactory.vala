/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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

public class LogConfigTypeFactory : JObject {
    private static LogConfigTypeFactory? instance;
    private static bool staticSet_instance = false;
    private static LogConfigTypeFactory staticGet_instance() {
        if (!LogConfigTypeFactory.staticSet_instance) {
            LogConfigTypeFactory.staticSet_instance = true;
            LogConfigTypeFactory.instance = new LogConfigTypeFactory();
        }
        return LogConfigTypeFactory.instance;
    }
    private string NO_DESCRIPTION;
    public LogConfigType OS;
    public LogConfigType FACTORYERROR;

    // Java field initializers run after the base constructor
    private void initFieldsLogConfigTypeFactory() {
    this.NO_DESCRIPTION = "No Description";
    this.OS = new LogConfigType("Operating System", this.NO_DESCRIPTION);
    this.FACTORYERROR = new LogConfigType("Factory Error", this.NO_DESCRIPTION);
    }
    

    public static LogConfigTypeFactory getInstance() {
        return LogConfigTypeFactory.staticGet_instance();
    }
    

    public LogConfigTypeFactory() {
        base();
        this.initFieldsLogConfigTypeFactory();
        LogConfigTypes.LOGGING.add(this.OS);
        LogConfigTypes.LOGGING.add(this.FACTORYERROR);
    }
}

