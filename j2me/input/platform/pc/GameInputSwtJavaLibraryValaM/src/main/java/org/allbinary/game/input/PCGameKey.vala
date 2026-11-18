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
// import org.allbinary.logic.string.StringUtil

public class PCGameKey : Input {
    

    public PCGameKey(int32 keyCode, string name) {
        base(keyCode, name);
        int32 id = this.getId();
        if (id >= 0) {
            InputFactory.getInstance().add(id, this);
        }
    }
    

    public override string toString() {
        return JString.ofString("PCGameKey: ") + JString.ofString(base.toString());
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

