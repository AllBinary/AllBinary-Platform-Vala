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
// package org.allbinary.layer.relationship
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.RelativeRelationship
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.util.BasicArrayList

public class RelativeLayerRelationship : RelativeRelationship {
    private AllBinaryLayer layer;

    // Java field initializers run after the base constructor
    private void initFieldsRelativeLayerRelationship() {
    this.layer = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    }
    

    public RelativeLayerRelationship(AllBinaryLayer layer, GPoint point, BasicArrayList typesAllowedList) {
        base(point, typesAllowedList);
        this.initFieldsRelativeLayerRelationship();
        this.layer = layer;
    }
    

    public override int32 getX() {
        return this.layer.getXP() + base.getX();
    }
    

    public override int32 getY() {
        return this.layer.getYP() + base.getY();
    }
    

    public override int32 getZ() {
        return this.layer.getZP() + base.getZ();
    }
}

