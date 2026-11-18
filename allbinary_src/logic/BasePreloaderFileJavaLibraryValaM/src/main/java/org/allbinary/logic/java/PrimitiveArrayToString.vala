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
// package org.allbinary.logic.java
// import org.allbinary.logic.string.StringMaker

public class PrimitiveArrayToString : JObject {

    public PrimitiveArrayToString() {
        base();
    }
    

    public static string toString1(float[] floats) {
        StringMaker stringBuffer = new StringMaker();
        for (int32 index = 0; index < floats.length; index++) {
            stringBuffer.appendfloat(floats[index]);
        }
        return stringBuffer.toString();
    }
}

