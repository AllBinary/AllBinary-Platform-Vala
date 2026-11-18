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
// package org.allbinary.game.ag.life
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.health.Health
// import org.allbinary.game.health.HealthBarAnimation
// import org.allbinary.game.health.HealthBarTwodAnimation
// import org.allbinary.game.health.HealthInterface
// import org.allbinary.game.health.HealthListenerInterface
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.layer.AllBinaryLayer

public class HealthIncludingLifeBar : Paintable, HealthListenerInterface {
    private HealthBarAnimation animationInterface;
    private Life life;
    private HealthInterface healthInterface;
    public AllBinaryLayer allbinaryLayer;

    // Java field initializers run after the base constructor
    private void initFieldsHealthIncludingLifeBar() {
    
    
    
    
    }
    

    public static HealthIncludingLifeBar createHealthIncludingLifeBar(AllBinaryLayer layerInterface, Life life, Health healthInterface, int32 location, int32 direction) {
        return new HealthIncludingLifeBar(layerInterface, life, healthInterface, new HealthBarTwodAnimation(layerInterface, location), direction);
    }
    

    public HealthIncludingLifeBar(AllBinaryLayer layerInterface, Life life, Health healthInterface, HealthBarAnimation animationInterface, int32 direction) {
        base();
        this.initFieldsHealthIncludingLifeBar();
        this.allbinaryLayer = layerInterface;
        this.animationInterface = animationInterface;
        this.life = life;
        this.healthInterface = healthInterface;
        this.healthInterface.addListener(this);
        this.onHealthChange();
    }
    

    public virtual void onHealthChange() {
        this.animationInterface.onHealthChange(((this.healthInterface.getHealth() + (this.healthInterface.getMaxHealth() * ((int32) (this.life.@get())))) * this.allbinaryLayer.getWidth()) / (this.healthInterface.getMaxHealth() + (this.healthInterface.getMaxHealth() * ((int32) (this.life.getStartLives())))));
    }
    

    public override void paint(Graphics graphics) {
        this.animationInterface.paintXY(graphics, 0, 0);
    }
    

    public override void paintThreed(Graphics graphics) {
        this.animationInterface.paintThreedXYZ(graphics, 0, 0, 0);
    }
}

