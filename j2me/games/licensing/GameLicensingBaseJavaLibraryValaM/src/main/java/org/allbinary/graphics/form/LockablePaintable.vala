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
// package org.allbinary.graphics.form
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.logic.system.security.licensing.LockedResources
// import org.allbinary.logic.system.security.licensing.LockedUtil

public class LockablePaintable : ItemPaintable {
    private Animation animation;
    private int32 lockedIndex;

    // Java field initializers run after the base constructor
    private void initFieldsLockablePaintable() {
    this.animation = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().@get(LockedResources.getInstance().LOCKED_DEMO_GAME_FEATURE_RESOURCE).getInstance1(0);
    
    }
    

    public LockablePaintable(int32 lockedIndex) {
        base();
        this.initFieldsLockablePaintable();
        this.lockedIndex = lockedIndex;
    }
    

    public override void paint(Graphics graphics, int32 currentIndex, int32 x, int32 y) {
        if (LockedUtil.getInstance().isLocked() && currentIndex >= this.getLockedIndex()) {
            this.getAnimation().paintXY(graphics, x, y);
        }
    }
    

    public virtual int32 getLockedIndex() {
        return this.lockedIndex;
    }
    

    public virtual Animation getAnimation() {
        return this.animation;
    }
}

