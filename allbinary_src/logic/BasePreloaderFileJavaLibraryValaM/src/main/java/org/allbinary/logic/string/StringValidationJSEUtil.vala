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
// package org.allbinary.logic.string

public class StringValidationJSEUtil : JObject {
    

    public StringValidationJSEUtil() {
        base();
    }
    

    public static bool isBlank(string string) {
        int32 len = JString.length(string);
        for (int32 i = 0; i < len; i++) {
            uint16 c = JString.charAt(string, i);
            if (Character.isWhitespace(c) == false) {
                return false;
            }
        }
        return true;
    }
}

