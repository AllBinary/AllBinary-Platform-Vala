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
// package org.allbinary.game.layer.pickup
// import org.allbinary.animation.Animation
// import org.allbinary.layer.AllBinaryLayer

public class PickedUpLayerInterfaceFactory : PickedUpLayerInterfaceFactoryBase {
    private PickedUpLayerType pickedUpLayerType;
    private IconLayer iconLayer;
    private Animation animationInterface;

    // Java field initializers run after the base constructor
    private void initFieldsPickedUpLayerInterfaceFactory() {
    
    
    
    }
    

    public PickedUpLayerInterfaceFactory(PickedUpLayerType pickeUpLayerType, IconLayer iconLayer, Animation animationInterface) {
        base();
        this.initFieldsPickedUpLayerInterfaceFactory();
        this.pickedUpLayerType = pickeUpLayerType;
        this.animationInterface = animationInterface;
        this.iconLayer = iconLayer;
    }
    

    public override AllBinaryLayer getIconLayer() {
        return this.iconLayer;
    }
    

    public override Animation getAnimationInterface() {
        return this.animationInterface;
    }
    

    public override PickedUpLayerType getPickedUpLayerType() {
        return this.pickedUpLayerType;
    }
}

