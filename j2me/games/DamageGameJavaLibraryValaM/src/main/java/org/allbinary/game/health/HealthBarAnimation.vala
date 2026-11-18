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
// package org.allbinary.game.health
// import org.allbinary.animation.Animation
// import org.allbinary.game.graphics.hud.BasicHudFactory
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.layer.AllBinaryLayer

public class HealthBarAnimation : Animation {
    private BasicColorFactory basicColorFactory;
    public int32 x2;
    public int32 thickness;
    private int32 location;
    public AllBinaryLayer allbinaryLayer;

    // Java field initializers run after the base constructor
    private void initFieldsHealthBarAnimation() {
    this.basicColorFactory = BasicColorFactory.getInstance();
    this.x2 = 0;
    this.thickness = 0;
    
    
    }
    

    public HealthBarAnimation(AllBinaryLayer layerInterface, int32 location) {
        base();
        this.initFieldsHealthBarAnimation();
        this.allbinaryLayer = layerInterface;
        this.location = location;
        BasicHudFactory basicHudFactory = BasicHudFactory.getInstance();
        if (this.location != basicHudFactory.TOPLEFT && this.location != basicHudFactory.BOTTOMLEFT) {
            JSystem.fatal(new JException("Exception", "Location Not Valid"));
        }
        if (layerInterface.getWidth() > 40) {
            this.thickness = 3;
        } else if (layerInterface.getWidth() > 20) {
            this.thickness = 2;
        } else {
            this.thickness = 1;
        }
    }
    

    public virtual void onHealthChange(int32 newX2) {
        this.x2 = newX2;
        int32 quarter = (this.allbinaryLayer.getWidth() >> 2);
        if (this.x2 > quarter * 3) {
            this.basicColor = this.basicColorFactory.GREEN;
            this.colorP = this.basicColor.intValue();
        } else if (this.x2 > quarter * 2) {
            this.basicColor = this.basicColorFactory.YELLOW;
            this.colorP = this.basicColor.intValue();
        } else if (this.x2 > quarter) {
            this.basicColor = this.basicColorFactory.ORANGE;
            this.colorP = this.basicColor.intValue();
        } else {
            this.basicColor = this.basicColorFactory.RED;
            this.colorP = this.basicColor.intValue();
        }
    }
    

    public virtual int32 getY() {
        BasicHudFactory basicHudFactory = BasicHudFactory.getInstance();
        if (this.location == basicHudFactory.TOPLEFT) {
            return this.allbinaryLayer.getViewPosition().getY() - 4;
        } else if (this.location == basicHudFactory.BOTTOMLEFT) {
            return this.allbinaryLayer.getViewPosition().getY2() + 4;
        }
        return -1;
    }
}

