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
// package org.allbinary.game.input
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

public class J2MEGameKey : Input {
    

    public J2MEGameKey(int32 key, string keyName) {
        base(key, keyName);
        int32 id = this.getId();
        if (id >= 0) {
            InputFactory inputFactory = InputFactory.getInstance();
            inputFactory.add(id, this);
        }
    }
    

    public override string toString() {
        return new StringMaker().append("J2MEGameKey: ").append(base.toString()).toString();
    }
    

    public static string getString(int32 keyCode) {
        Input input = InputFactory.getInstance().getInstanceById(keyCode);
        if (input != null) {
            return input.getName();
        } else {
            return StringUtil.getInstance().EMPTY_STRING;
        }
    }
}

