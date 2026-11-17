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
// package org.allbinary.util
// import jsinterop.annotations.JsType
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringMaker
// import jsinterop.annotations.JsConstructor

public class BasicArrayListS : BasicArrayList {
    

    public BasicArrayListS(int32 size) {
        base(NullUtil.getInstance().NULL_OBJECT_ARRAY);
        if (size < 0) {
            JSystem.fatal(new JException("IllegalArgumentException", new StringMaker().append("Init Size Exception: ").appendint(size).toString()));
        }
        this.objectArray = new JObject[size];
    }
}

