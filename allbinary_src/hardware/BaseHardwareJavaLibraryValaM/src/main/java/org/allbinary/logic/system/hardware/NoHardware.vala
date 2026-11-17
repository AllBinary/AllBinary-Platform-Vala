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
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface
// import org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent
// import org.allbinary.util.ABHashtable

public class NoHardware : JObject, HardwareInterface {
    private static HardwareInterface? instance;
    private static bool staticSet_instance = false;
    private static HardwareInterface staticGet_instance() {
        if (!NoHardware.staticSet_instance) {
            NoHardware.staticSet_instance = true;
            NoHardware.instance = new NoHardware();
        }
        return NoHardware.instance;
    }

    public NoHardware() {
        base();
    }
    

    public static HardwareInterface getInstance() {
        return NoHardware.staticGet_instance();
    }
    

    public virtual HardwareComponentInterface getComponent(int32 index) {
        return NoHardwareComponent.getInstance();
    }
    

    public override string toString() {
        return "No Hardware";
    }
    

    public virtual bool compareTo(HardwareInterface hardwareInterface) {
        return true;
    }
    

    public virtual ABHashtable difference(HardwareInterface hardwareInterface) {
        return StdUtil.getInstance().NULL_TABLE;
    }
}

