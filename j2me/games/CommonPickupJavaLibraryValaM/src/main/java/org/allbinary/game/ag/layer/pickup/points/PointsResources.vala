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

public class PointsResources : JObject {
    private static PointsResources? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static PointsResources staticGet_SINGLETON() {
        if (!PointsResources.staticSet_SINGLETON) {
            PointsResources.staticSet_SINGLETON = true;
            PointsResources.SINGLETON = new PointsResources();
        }
        return PointsResources.SINGLETON;
    }
    public string RESOURCE;
    public string RESOURCE_2;
    public string RESOURCE_3;
    public string RESOURCE_4;

    // Java field initializers run after the base constructor
    private void initFieldsPointsResources() {
    this.RESOURCE = "points_drop_20_by_20.png";
    this.RESOURCE_2 = "points_2_drop_20_by_20.png";
    this.RESOURCE_3 = "points_3_drop_20_by_20.png";
    this.RESOURCE_4 = "points_4_drop_20_by_20.png";
    }
    

    public PointsResources() {
        base();
        this.initFieldsPointsResources();
    }
    

    public static PointsResources getInstance() {
        return PointsResources.staticGet_SINGLETON();
    }
}

