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
// package org.allbinary.layer
// import org.allbinary.game.identification.GroupInterfaceCompositeInterface
// import org.allbinary.graphics.paint.PaintableInterface

public interface LayerInterface : JObject, NamedInterface, PaintableInterface, GroupInterfaceCompositeInterface, PositionInterface {
    

    public abstract int32 getHeight();
    

    public abstract int32 getWidth();
    

    public abstract int32 getHalfHeight();
    

    public abstract int32 getHalfWidth();
    

    public abstract int32 getXP();
    

    public abstract int32 getYP();
    

    public abstract int32 getZP();
    

    public abstract int32 getX2();
    

    public abstract int32 getY2();
    

    public abstract int32 getZ2();
    

    public abstract bool isVisible();
    

    public abstract void moveDXYZ(int32 dx, int32 dy, int32 dz);
    

    public abstract void setVisible(bool visible);
    

    public abstract bool implmentsTickableInterface();
    

    public abstract bool implmentsCollidableInterface();
    

    public abstract bool implmentsGameInputInterface();
    

    public abstract bool implmentsArtificialIntelligenceCompositeInterface();
    

    public abstract int32 getType();
}

