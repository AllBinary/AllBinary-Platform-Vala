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
// import org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface
// import org.allbinary.util.ABHashtable

public interface HardwareInterface : JObject {
    

    public abstract HardwareComponentInterface getComponent(int32 index);
    

    public abstract string toString();
    

    public abstract bool compareTo(HardwareInterface hardwareInterface);
    

    public abstract ABHashtable difference(HardwareInterface hardwareInterface);
}

