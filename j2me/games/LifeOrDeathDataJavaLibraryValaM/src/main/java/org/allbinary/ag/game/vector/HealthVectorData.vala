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
// package org.allbinary.ag.game.vector

public class HealthVectorData : JObject {
    public static int32[,,]? points;
    private static bool staticSet_points = false;
    public static int32[,,] staticGet_points() {
        if (!HealthVectorData.staticSet_points) {
            HealthVectorData.staticSet_points = true;
            HealthVectorData.points = new int32[,,] {{{2, 1}, {3, 2}, {3, 2}, {4, 1}, {4, 1}, {5, 1}, {5, 1}, {6, 2}, {6, 2}, {6, 3}, {6, 3}, {3, 6}, {3, 6}, {0, 3}, {0, 3}, {0, 2}, {0, 2}, {1, 1}, {1, 1}, {2, 1}, {1000, 1000}}};
        }
        return HealthVectorData.points;
    }

    public HealthVectorData() {
        base();
    }
}

