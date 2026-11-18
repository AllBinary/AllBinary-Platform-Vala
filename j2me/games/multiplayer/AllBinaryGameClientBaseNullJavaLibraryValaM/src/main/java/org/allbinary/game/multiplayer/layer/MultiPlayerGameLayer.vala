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
// package org.allbinary.game.multiplayer.layer
// import org.allbinary.game.identification.Group
// import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
// import org.allbinary.graphics.Rectangle
// import org.allbinary.view.ViewPositionBase

public class MultiPlayerGameLayer : CollidableDestroyableDamageableLayer, MultiPlayerGameLayerInterface {
    

    public MultiPlayerGameLayer(RemoteInfo remoteInfo, Group[] groupInterface, string name, Rectangle layerInfo, ViewPositionBase viewPosition) {
        base(groupInterface, name, layerInfo, viewPosition);
    }
    

    public virtual MultiplayerBehavior getMultiplayerBehavior() {
        return MultiplayerBehavior.NULL_MULTIPLAYER_BEHAVIOR;
    }
    

    public virtual void setPingInfo(bool show) {
    }
    

    public virtual void setFiring(int16 firing) {
    }
    

    public virtual int16 getFiring() {
        return 0;
    }
}

