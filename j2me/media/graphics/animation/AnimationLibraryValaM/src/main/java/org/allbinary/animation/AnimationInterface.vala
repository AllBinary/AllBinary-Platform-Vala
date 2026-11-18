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
// package org.allbinary.animation
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.paint.LocationPaintableInterface

public interface AnimationInterface : JObject, LocationPaintableInterface {
    

    public abstract void nextFrame();
    

    public abstract void paintThreedXYZ(Graphics graphics, int32 x, int32 y, int32 z);
}

