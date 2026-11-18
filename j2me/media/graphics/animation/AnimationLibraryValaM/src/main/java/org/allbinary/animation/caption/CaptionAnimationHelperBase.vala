/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.animation.caption
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.graphics.color.BasicColor

public class CaptionAnimationHelperBase : Animation {
    public static CaptionAnimationHelperBase? INSTANCE;
    private static bool staticSet_INSTANCE = false;
    public static CaptionAnimationHelperBase staticGet_INSTANCE() {
        if (!CaptionAnimationHelperBase.staticSet_INSTANCE) {
            CaptionAnimationHelperBase.staticSet_INSTANCE = true;
            CaptionAnimationHelperBase.INSTANCE = new CaptionAnimationHelperBase();
        }
        return CaptionAnimationHelperBase.INSTANCE;
    }

    public CaptionAnimationHelperBase() {
        base();
    }
    

    public virtual bool isShowing() {
        return false;
    }
    

    public virtual void tick() {
    }
    

    public virtual void update(string message, BasicColor basicColor) {
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
    }
}

