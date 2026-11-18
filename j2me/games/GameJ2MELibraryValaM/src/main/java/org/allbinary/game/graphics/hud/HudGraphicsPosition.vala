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
// package org.allbinary.game.graphics.hud
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.PointFactory

public class HudGraphicsPosition : JObject {
    public static HudGraphicsPosition? NULL_HUD_GRAPHICS_POSITION;
    private static bool staticSet_NULL_HUD_GRAPHICS_POSITION = false;
    public static HudGraphicsPosition staticGet_NULL_HUD_GRAPHICS_POSITION() {
        if (!HudGraphicsPosition.staticSet_NULL_HUD_GRAPHICS_POSITION) {
            HudGraphicsPosition.staticSet_NULL_HUD_GRAPHICS_POSITION = true;
            HudGraphicsPosition.NULL_HUD_GRAPHICS_POSITION = new HudGraphicsPosition(PointFactory.getInstance().ZERO_ZERO, 9);
        }
        return HudGraphicsPosition.NULL_HUD_GRAPHICS_POSITION;
    }
    private int32 anchor;
    private GPoint point;

    // Java field initializers run after the base constructor
    private void initFieldsHudGraphicsPosition() {
    this.anchor = 0;
    this.point = PointFactory.getInstance().ZERO_ZERO;
    }
    

    public HudGraphicsPosition(GPoint point, int32 anchor) {
        base();
        this.initFieldsHudGraphicsPosition();
        this.setAnchor(anchor);
        this.setPoint(point);
    }
    

    public virtual int32 getAnchor() {
        return this.anchor;
    }
    

    private void setAnchor(int32 anchor) {
        this.anchor = anchor;
    }
    

    public virtual GPoint getPoint() {
        return this.point;
    }
    

    public virtual void setPoint(GPoint point) {
        this.point = point;
    }
}

