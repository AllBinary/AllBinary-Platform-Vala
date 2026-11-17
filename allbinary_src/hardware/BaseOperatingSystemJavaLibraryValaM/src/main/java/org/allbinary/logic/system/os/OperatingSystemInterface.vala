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
// package org.allbinary.logic.system.os
// import org.allbinary.logic.java.character.CharacterSet

public interface OperatingSystemInterface : JObject {
    

    public abstract string getName();
    

    public abstract string getVersion();
    

    public abstract string getArch();
    

    public abstract CharacterSet getCharacterSet();
    

    public abstract bool isOverScan();
    

    public abstract int32 getOverScanXPercent();
    

    public abstract int32 getOverScanYPercent();
    

    public abstract bool isScalable();
    

    public abstract bool isAutoHide();
    

    public abstract string toString();
}

