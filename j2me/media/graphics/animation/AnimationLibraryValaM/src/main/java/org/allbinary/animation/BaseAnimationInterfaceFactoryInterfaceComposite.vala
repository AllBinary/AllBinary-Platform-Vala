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
// package org.allbinary.animation
// import org.allbinary.media.ScaleProperties

public class BaseAnimationInterfaceFactoryInterfaceComposite : JObject, AnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    private BasicAnimationInterfaceFactoryInterface[] basicAnimationInterfaceFactoryInterfaceArray;

    // Java field initializers run after the base constructor
    private void initFieldsBaseAnimationInterfaceFactoryInterfaceComposite() {
    
    }
    

    public BaseAnimationInterfaceFactoryInterfaceComposite(BasicAnimationInterfaceFactoryInterface[] basicAnimationInterfaceFactoryInterfaceArray) {
        base();
        this.initFieldsBaseAnimationInterfaceFactoryInterfaceComposite();
        this.basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray;
    }
    

    public virtual Animation getInstance1(int32 instanceId) {
        return NullAnimationFactory.getFactoryInstance().getInstance1(0);
    }
    

    public virtual BasicAnimationInterfaceFactoryInterface[] getBasicAnimationInterfaceFactoryInterfaceArray() {
        return this.basicAnimationInterfaceFactoryInterfaceArray;
    }
    

    public virtual void setBasicAnimationInterfaceFactoryInterfaceArray(BasicAnimationInterfaceFactoryInterface[] basicAnimationInterfaceFactoryInterfaceArray) {
        this.basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray;
    }
    

    public virtual void setInitialScale(ScaleProperties scaleProperties) {
    }
}

