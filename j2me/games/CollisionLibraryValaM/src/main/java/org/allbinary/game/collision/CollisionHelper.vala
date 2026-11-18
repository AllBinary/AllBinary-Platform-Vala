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
// package org.allbinary.game.collision
// import org.allbinary.game.layer.CollidableCompositeLayer
// import org.allbinary.layer.AllBinaryLayer

public class CollisionHelper : JObject {
    public AllBinaryLayer sourceLayerInterface;

    // Java field initializers run after the base constructor
    private void initFieldsCollisionHelper() {
    
    }
    

    public CollisionHelper(AllBinaryLayer sourceLayerInterface) {
        base();
        this.initFieldsCollisionHelper();
        this.sourceLayerInterface = sourceLayerInterface;
    }
    

    public virtual bool isCollidable(CollidableCompositeLayer layerInterface) {
        return true;
    }
    

    public virtual AllBinaryLayer getOwnerLayerInterface() {
        return this.sourceLayerInterface;
    }
    

    public virtual void setOwnerLayerInterface(AllBinaryLayer sourceLayerInterface) {
        this.sourceLayerInterface = sourceLayerInterface;
    }
}

