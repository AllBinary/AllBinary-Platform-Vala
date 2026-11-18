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
// package org.allbinary.game.layer

public class BasicLayerPlacement : JObject {
    private LayerPlacementType layerType;
    private int32 width;
    private int32 height;

    // Java field initializers run after the base constructor
    private void initFieldsBasicLayerPlacement() {
    
    
    
    }
    

    public BasicLayerPlacement(LayerPlacementType layerType, int32 width, int32 height) {
        base();
        this.initFieldsBasicLayerPlacement();
        this.layerType = layerType;
        this.width = width;
        this.height = height;
    }
    

    public virtual int32 getWidth() {
        return this.width;
    }
    

    public virtual int32 getHeight() {
        return this.height;
    }
    

    public virtual LayerPlacementType getLayerType() {
        return this.layerType;
    }
    

    public virtual void setLayerType(LayerPlacementType layerType) {
        this.layerType = layerType;
    }
}

