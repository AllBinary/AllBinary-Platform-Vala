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
// package org.allbinary.game.ag.layer.hud.basic.health
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.game.graphics.hud.BasicHud
// import org.allbinary.game.health.Health
// import org.allbinary.game.health.HealthListenerInterface
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.NoTimeDelayHelper
// import org.allbinary.time.TimeDelayHelper

public class HealthHudWidget : BasicHud, PaintableInterface, HealthListenerInterface {
    private int32 healthScale;
    public Animation animationInterface;
    public Health healthInterface;
    public int32 max;
    private int32[] xArray;
    private GameTickTimeDelayHelper gameTickTimeDelayHelper;
    private TimeDelayHelper timeDelayHelper;
    private TimeDelayHelper slowBeatTimeDelayHelper;
    private TimeDelayHelper mediumBeatTimeDelayHelper;
    private TimeDelayHelper fastBeatTimeDelayHelper;

    // Java field initializers run after the base constructor
    private void initFieldsHealthHudWidget() {
    
    
    
    this.max = 0;
    
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    this.timeDelayHelper = NoTimeDelayHelper.SINGLETON;
    this.slowBeatTimeDelayHelper = new TimeDelayHelper(1280);
    this.mediumBeatTimeDelayHelper = new TimeDelayHelper(640);
    this.fastBeatTimeDelayHelper = new TimeDelayHelper(320);
    }
    

    public HealthHudWidget(Animation animationInterface, Health healthInterface, int32 location, int32 direction) {
        base(location, direction, 2, BasicColorFactory.getInstance().WHITE);
        this.initFieldsHealthHudWidget();
        this.animationInterface = animationInterface;
        this.healthInterface = healthInterface;
        this.healthInterface.addListener(this);
        this.healthScale = (this.healthInterface.getMaxHealth() / 6) + 1;
        this.onHealthChange();
        this.updateMaxWidth = healthInterface.getMaxHealth() * 16;
        this.updateMaxHeight = 16;
        this.xArray = new int32[30];
        this.update();
    }
    

    private void update() {
        if (this.xArray != null) {
            for (int32 index = 0; index < this.xArray.length; index++) {
                this.xArray[index] = this.getX() + (index * 16);
            }
        }
    }
    

    public override void setX(int32 x) {
        base.setX(x);
        this.update();
    }
    

    public virtual void onHealthChange() {
        this.max = (this.healthInterface.getHealth() / this.healthScale);
        this.timeDelayHelper = NoTimeDelayHelper.SINGLETON;
        if (this.max <= 1 && this.healthInterface.isAlive()) {
            this.max = 1;
            if (this.healthScale - this.healthInterface.getHealth() > (this.healthScale * 2) / 3) {
                this.timeDelayHelper = this.slowBeatTimeDelayHelper;
            } else if (this.healthScale - this.healthInterface.getHealth() > this.healthScale / 3) {
                this.timeDelayHelper = this.mediumBeatTimeDelayHelper;
            } else {
                this.timeDelayHelper = this.fastBeatTimeDelayHelper;
            }
        }
    }
    

    public virtual void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        for (int32 index = 0; index < this.max; index++) {
            if (this.timeDelayHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
                this.animationInterface.paintXY(graphics, this.xArray[index], this.getY());
            }
        }
    }
    

    public virtual void paintThreed(Graphics graphics) {
    }
}

