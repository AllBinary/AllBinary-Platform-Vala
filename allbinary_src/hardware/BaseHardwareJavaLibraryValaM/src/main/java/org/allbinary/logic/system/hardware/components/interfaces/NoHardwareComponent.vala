/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic.system.hardware.components.interfaces
// import org.allbinary.logic.string.StringUtil

public class NoHardwareComponent : JObject, HardwareComponentInterface {
    private static NoHardwareComponent? instance;
    private static bool staticSet_instance = false;
    private static NoHardwareComponent staticGet_instance() {
        if (!NoHardwareComponent.staticSet_instance) {
            NoHardwareComponent.staticSet_instance = true;
            NoHardwareComponent.instance = new NoHardwareComponent();
        }
        return NoHardwareComponent.instance;
    }

    public NoHardwareComponent() {
        base();
    }
    

    public static NoHardwareComponent getInstance() {
        return NoHardwareComponent.staticGet_instance();
    }
    

    public virtual bool compareTo(HardwareComponentInterface componentInterface) {
        if (this == componentInterface) {
            return true;
        }
        return false;
    }
    

    public override string toString() {
        return StringUtil.getInstance().NULL_STRING;
    }
}

