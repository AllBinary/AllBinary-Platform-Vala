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
// import org.allbinary.animation.Animation

public class IconLayerFactory : JObject {

    public IconLayerFactory() {
        base();
    }
    

    public static IconLayer getInstance3(Animation animationInterface, int32 width, int32 height) {
        return new IconLayer(animationInterface, width, height);
    }
}

