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
// import org.allbinary.direction.DirectionFactory

public class LayerPlacementTypeFactory : JObject {
    private static LayerPlacementTypeFactory? instance;
    private static bool staticSet_instance = false;
    private static LayerPlacementTypeFactory staticGet_instance() {
        if (!LayerPlacementTypeFactory.staticSet_instance) {
            LayerPlacementTypeFactory.staticSet_instance = true;
            LayerPlacementTypeFactory.instance = new LayerPlacementTypeFactory();
        }
        return LayerPlacementTypeFactory.instance;
    }
    public LayerPlacementType MAP;
    public LayerPlacementType LEFT;
    public LayerPlacementType DOWN;
    public LayerPlacementType UP;
    public LayerPlacementType RIGHT;

    // Java field initializers run after the base constructor
    private void initFieldsLayerPlacementTypeFactory() {
    this.MAP = new LayerPlacementType(Integer.MAX_VALUE);
    this.LEFT = new LayerPlacementType(DirectionFactory.getInstance().LEFT.getValue());
    this.DOWN = new LayerPlacementType(DirectionFactory.getInstance().DOWN.getValue());
    this.UP = new LayerPlacementType(DirectionFactory.getInstance().UP.getValue());
    this.RIGHT = new LayerPlacementType(DirectionFactory.getInstance().RIGHT.getValue());
    }

    public LayerPlacementTypeFactory() {
        base();
        this.initFieldsLayerPlacementTypeFactory();
    }
    

    public static LayerPlacementTypeFactory getInstance() {
        return LayerPlacementTypeFactory.staticGet_instance();
    }
}

