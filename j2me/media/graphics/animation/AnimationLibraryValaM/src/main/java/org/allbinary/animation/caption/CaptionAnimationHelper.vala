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
// package org.allbinary.animation.caption
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.animation.text.TextAnimation
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper

public class CaptionAnimationHelper : CaptionAnimationHelperBase {
    private TimeDelayHelper timeHelper;
    private TextAnimation textAnimation;
    private Animation captionAnimation;
    private Animation animation;

    // Java field initializers run after the base constructor
    private void initFieldsCaptionAnimationHelper() {
    this.timeHelper = new TimeDelayHelper(620);
    this.textAnimation = new TextAnimation(StringUtil.getInstance().EMPTY_STRING, AnimationBehavior.getInstance());
    
    this.animation = NullAnimationFactory.getFactoryInstance().getInstance1(0);
    }
    

    public CaptionAnimationHelper(Animation captionAnimation, int32 captionDx, int32 captionDy, int32 dx, int32 dy) {
        base();
        this.initFieldsCaptionAnimationHelper();
        this.captionAnimation = new CaptionAnimation(captionAnimation, this.textAnimation, captionDx, captionDy, dx, dy);
    }
    

    public override bool isShowing() {
        if (this.animation == this.captionAnimation) {
            return true;
        } else {
            return false;
        }
    }
    

    public override void tick() {
        if (this.timeHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            this.animation = NullAnimationFactory.getFactoryInstance().getInstance1(0);
        }
    }
    

    public override void update(string message, BasicColor basicColor) {
        this.textAnimation.setBasicColorP(basicColor);
        this.textAnimation.setText(message);
        this.animation = this.captionAnimation;
        this.timeHelper.setStartTimeTNT();
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        this.animation.paintXY(graphics, x, y);
    }
}

