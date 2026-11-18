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
// import org.allbinary.logic.NullUtil

public class PlatformKeyFactory : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!PlatformKeyFactory.staticSet_instance) {
            PlatformKeyFactory.staticSet_instance = true;
            PlatformKeyFactory.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return PlatformKeyFactory.instance;
    }

    public PlatformKeyFactory() {
        base();
    }
    

    public static PlatformKeyFactory getInstance() {
        if (PlatformKeyFactory.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            PlatformKeyFactory.instance = new PlatformKeyFactory();
        }
        return ((PlatformKeyFactory) PlatformKeyFactory.staticGet_instance());
    }
    

    public virtual string getString(int32 keyCode) {
        return J2MEGameKey.getString(keyCode);
    }
    

    public virtual bool isSubmission(Input input) {
        return J2MEKeyFactory.getInstance().isSubmission(input);
    }
    

    public virtual bool isDelete(Input input) {
        return J2MEKeyFactory.getInstance().isDelete(input);
    }
    

    public virtual bool isBackSpace(Input input) {
        return J2MEKeyFactory.getInstance().isBackSpace(input);
    }
    

    public virtual bool isLeft(Input input) {
        return J2MEKeyFactory.getInstance().isLeft(input);
    }
    

    public virtual bool isRight(Input input) {
        return J2MEKeyFactory.getInstance().isRight(input);
    }
    

    public virtual bool isUp(Input input) {
        return J2MEKeyFactory.getInstance().isUp(input);
    }
    

    public virtual bool isDown(Input input) {
        return J2MEKeyFactory.getInstance().isDown(input);
    }
    

    public virtual bool isEnter(Input input) {
        return J2MEKeyFactory.getInstance().isEnter(input);
    }
}

