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
// package org.allbinary.game.ag.layer.pickup.points
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerFactoryInterface

public class PointsLayerFactory : JObject, AllBinaryLayerFactoryInterface {
    private int32 points;

    // Java field initializers run after the base constructor
    private void initFieldsPointsLayerFactory() {
    
    }
    

    public PointsLayerFactory(int32 points) {
        base();
        this.initFieldsPointsLayerFactory();
        this.points = points;
    }
    

    public virtual AllBinaryLayer getInstance() {
        return new PointsLayer(this.points);
    }
}

