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
// package org.allbinary.system
// import org.allbinary.logic.string.StringMaker

//ActualPlatform
public class Memory : JObject {

    public Memory() {
        base();
    }
    

    public static string getInfo() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("Memory: Free: ");
        stringBuffer.appendlong(((int64) (Runtime.getRuntime().freeMemory())));
        stringBuffer.append(" Max: ");
        stringBuffer.appendlong(((int64) (Runtime.getRuntime().maxMemory())));
        stringBuffer.append(" Total: ");
        stringBuffer.appendlong(((int64) (Runtime.getRuntime().totalMemory())));
        return stringBuffer.toString();
    }
}

