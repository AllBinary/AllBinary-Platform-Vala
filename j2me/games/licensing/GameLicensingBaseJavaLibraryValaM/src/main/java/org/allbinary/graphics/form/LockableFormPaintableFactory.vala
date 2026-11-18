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

public class LockableFormPaintableFactory : ItemPaintableFactory {
    private int32 lockedIndex;

    // Java field initializers run after the base constructor
    private void initFieldsLockableFormPaintableFactory() {
    
    }
    

    public LockableFormPaintableFactory(int32 lockedIndex) {
        base();
        this.initFieldsLockableFormPaintableFactory();
        this.lockedIndex = lockedIndex;
    }
    

    public override ItemPaintable getInstanceItemPaintable(PaintableForm paintableForm) {
        return new LockablePaintable(this.lockedIndex);
    }
}

