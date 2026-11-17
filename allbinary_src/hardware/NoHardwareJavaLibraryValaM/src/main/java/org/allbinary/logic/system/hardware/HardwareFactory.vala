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
// package org.allbinary.logic.system.hardware
// import org.allbinary.logic.system.os.OperatingSystemInterface

public class HardwareFactory : JObject {
    private static HardwareFactory? instance;
    private static bool staticSet_instance = false;
    private static HardwareFactory staticGet_instance() {
        if (!HardwareFactory.staticSet_instance) {
            HardwareFactory.staticSet_instance = true;
            HardwareFactory.instance = new HardwareFactory();
        }
        return HardwareFactory.instance;
    }
    private HardwareInterface SINGLETON;

    // Java field initializers run after the base constructor
    private void initFieldsHardwareFactory() {
    this.SINGLETON = NoHardware.getInstance();
    }
    

    public static HardwareFactory getInstance() {
        return HardwareFactory.staticGet_instance();
    }
    

    public HardwareFactory() {
        base();
        this.initFieldsHardwareFactory();
    }
    

    public virtual HardwareInterface getInstance1(OperatingSystemInterface os) {
        {
            return this.SINGLETON;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

