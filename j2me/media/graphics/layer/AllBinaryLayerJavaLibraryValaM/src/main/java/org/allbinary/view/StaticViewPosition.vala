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
// package org.allbinary.view

public class StaticViewPosition : ViewPosition {
    

    public StaticViewPosition(int32 x, int32 y, int32 z) {
        base(x, y, z);
    }
    

    public override int32 getX() {
        return this.getRawX();
    }
    

    public override int32 getY() {
        return this.getRawY();
    }
    

    public override int32 getZ() {
        return this.getRawZ();
    }
}

