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
// package org.allbinary.game.ag.vector

public class MineVectorData : JObject {
    public static int32[,,]? points;
    private static bool staticSet_points = false;
    public static int32[,,] staticGet_points() {
        if (!MineVectorData.staticSet_points) {
            MineVectorData.staticSet_points = true;
            MineVectorData.points = new int32[,,] {{{10, 5}, {2, 6}, {1000, 1000}, {2, 2}, {10, 9}, {1000, 1000}, {10, 2}, {2, 9}, {1000, 1000}, {2, 5}, {10, 6}, {1000, 1000}, {7, 9}, {5, 2}, {1000, 1000}, {7, 2}, {5, 9}, {1000, 1000}}};
        }
        return MineVectorData.points;
    }
    

    public MineVectorData() {
        base();
    }
}

