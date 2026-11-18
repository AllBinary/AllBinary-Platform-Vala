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
// package org.allbinary.emulator

public class InitEmulatorFactory : JObject {
    private static InitEmulatorFactory? instance;
    private static bool staticSet_instance = false;
    private static InitEmulatorFactory staticGet_instance() {
        if (!InitEmulatorFactory.staticSet_instance) {
            InitEmulatorFactory.staticSet_instance = true;
            InitEmulatorFactory.instance = new InitEmulatorFactory();
        }
        return InitEmulatorFactory.instance;
    }
    private bool initEmulator;

    // Java field initializers run after the base constructor
    private void initFieldsInitEmulatorFactory() {
    this.initEmulator = false;
    }

    public InitEmulatorFactory() {
        base();
        this.initFieldsInitEmulatorFactory();
    }
    

    public static InitEmulatorFactory getInstance() {
        return InitEmulatorFactory.staticGet_instance();
    }
    

    public virtual void setInitEmulator(bool initEmulator) {
        this.initEmulator = initEmulator;
    }
    

    public virtual bool isInitEmulator() {
        return this.initEmulator;
    }
}

