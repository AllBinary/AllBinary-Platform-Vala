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
// package org.allbinary.game.combat.destroy
// import org.allbinary.string.CommonStrings

public class DestroyableBaseBehavior : JObject, DestroyableInterface, NamedInterface {
    private static DestroyableBaseBehavior? instance;
    private static bool staticSet_instance = false;
    private static DestroyableBaseBehavior staticGet_instance() {
        if (!DestroyableBaseBehavior.staticSet_instance) {
            DestroyableBaseBehavior.staticSet_instance = true;
            DestroyableBaseBehavior.instance = new DestroyableBaseBehavior();
        }
        return DestroyableBaseBehavior.instance;
    }

    public DestroyableBaseBehavior() {
        base();
    }
    

    public static DestroyableBaseBehavior getInstance() {
        return DestroyableBaseBehavior.staticGet_instance();
    }
    

    public virtual string getName() {
        return JObject.className(this);
    }
    

    public virtual bool isDestroyed() {
        JSystem.fatal(new JException("Exception", CommonStrings.getInstance().NOT_IMPLEMENTED));
    }
    

    public virtual void setDestroyed(bool destroyed) {
    }
}

