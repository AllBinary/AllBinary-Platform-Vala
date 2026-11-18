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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.layer.AllBinaryLayer

public class HealthBar : Paintable, HealthListenerInterface {
    private HealthBarAnimation animationInterface;
    private HealthInterface healthInterface;
    public AllBinaryLayer allbinaryLayer;

    // Java field initializers run after the base constructor
    private void initFieldsHealthBar() {
    
    
    
    }
    

    public HealthBar(AllBinaryLayer layerInterface, Health healthInterface, HealthBarAnimation animationInterface, int32 direction) {
        base();
        this.initFieldsHealthBar();
        this.allbinaryLayer = layerInterface;
        this.animationInterface = animationInterface;
        this.healthInterface = healthInterface;
        this.healthInterface.addListener(this);
        this.onHealthChange();
    }
    

    public virtual void onHealthChange() {
        this.animationInterface.onHealthChange(this.healthInterface.getHealth() * this.allbinaryLayer.getWidth() / this.healthInterface.getMaxHealth());
    }
    

    public override void paint(Graphics graphics) {
        this.animationInterface.paintXY(graphics, 0, 0);
    }
    

    public override void paintThreed(Graphics graphics) {
        this.animationInterface.paintThreedXYZ(graphics, 0, 0, 0);
    }
}

