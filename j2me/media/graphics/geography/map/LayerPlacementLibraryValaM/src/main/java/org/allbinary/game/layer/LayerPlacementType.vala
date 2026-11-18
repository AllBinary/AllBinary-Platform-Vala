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

public class LayerPlacementType : JObject {
    private int32 type;

    // Java field initializers run after the base constructor
    private void initFieldsLayerPlacementType() {
    
    }
    

    public LayerPlacementType(int32 type) {
        base();
        this.initFieldsLayerPlacementType();
        this.type = type;
    }
    

    public virtual int32 getType() {
        return this.type;
    }
    

    public virtual void setType(int32 type) {
        this.type = type;
    }
}

