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
// import org.allbinary.logic.string.StringUtil

public class PickedUpLayerTypeFactory : JObject {
    private static PickedUpLayerTypeFactory? instance;
    private static bool staticSet_instance = false;
    private static PickedUpLayerTypeFactory staticGet_instance() {
        if (!PickedUpLayerTypeFactory.staticSet_instance) {
            PickedUpLayerTypeFactory.staticSet_instance = true;
            PickedUpLayerTypeFactory.instance = new PickedUpLayerTypeFactory();
        }
        return PickedUpLayerTypeFactory.instance;
    }
    public PickedUpLayerType NONE;
    public PickedUpLayerType BEAM;
    public PickedUpLayerType MINE;
    public PickedUpLayerType PROJECTILE;
    public PickedUpLayerType ENHANCEMENT;
    public PickedUpLayerType MORPH;
    public PickedUpLayerType PART;
    public PickedUpLayerType HEAL;
    public PickedUpLayerType LIFE;
    public PickedUpLayerType POINTS;

    // Java field initializers run after the base constructor
    private void initFieldsPickedUpLayerTypeFactory() {
    this.NONE = new PickedUpLayerType(StringUtil.getInstance().NULL_STRING);
    this.BEAM = new PickedUpLayerType("BEAM");
    this.MINE = new PickedUpLayerType("MINE");
    this.PROJECTILE = new PickedUpLayerType("PROJECTILE");
    this.ENHANCEMENT = new PickedUpLayerType("Enhancement");
    this.MORPH = new PickedUpLayerType("Morph");
    this.PART = new PickedUpLayerType("Part");
    this.HEAL = new PickedUpLayerType("Heal");
    this.LIFE = new PickedUpLayerType("Life");
    this.POINTS = new PickedUpLayerType("Points");
    }

    public PickedUpLayerTypeFactory() {
        base();
        this.initFieldsPickedUpLayerTypeFactory();
    }
    

    public static PickedUpLayerTypeFactory getInstance() {
        return PickedUpLayerTypeFactory.staticGet_instance();
    }
}

