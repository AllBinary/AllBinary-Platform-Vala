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
// package org.allbinary.game.ag.layer.hud.basic.life
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.game.ag.life.Life
// import org.allbinary.game.graphics.hud.BasicHud
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.displayable.event.DisplayChangeEvent
// import org.allbinary.graphics.paint.PaintableInterface

public class LivesHudWidget : BasicHud, PaintableInterface {
    private Life lifeInterface;
    private int32[] xArray;
    private Animation animationInterface;

    // Java field initializers run after the base constructor
    private void initFieldsLivesHudWidget() {
    
    
    
    }
    

    public LivesHudWidget(Animation animationInterface, Life lifeInterface, int32 location, int32 direction) {
        base(location, direction, 2, BasicColorFactory.getInstance().WHITE);
        this.initFieldsLivesHudWidget();
        this.lifeInterface = lifeInterface;
        int32 size = ((int32) (this.getLifeInterface().getMaxlives()));
        this.xArray = new int32[size];
        this.animationInterface = animationInterface;
        this.updateMaxWidth = ((int32) (this.lifeInterface.getMaxlives())) * 16;
        this.updateMaxHeight = 16;
    }
    

    public override void updateMeasurement(Graphics graphics) {
        base.updateMeasurement(graphics);
        int32 maxLives = ((int32) (this.getLifeInterface().getMaxlives()));
        for (int32 index = 0; index < maxLives; index++) {
            this.xArray[index] = this.getX() + (index * 16);
        }
    }
    

    public override void onDisplayChangeEvent(DisplayChangeEvent displayChangeEvent) {
        base.onDisplayChangeEvent(displayChangeEvent);
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    public override void setX(int32 x) {
        base.setX(x);
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    public virtual void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        for (int32 index = ((int32) (this.getLifeInterface().@get())); --index >= 0; ) {
            this.animationInterface.paintXY(graphics, this.xArray[index], this.getY());
        }
    }
    

    public virtual void paintThreed(Graphics graphics) {
    }
    

    public virtual Life getLifeInterface() {
        return this.lifeInterface;
    }
}

