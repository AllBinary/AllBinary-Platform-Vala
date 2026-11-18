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
// package org.allbinary.animation.image.sprite
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.game.Sprite
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.direction.Direction
// import org.allbinary.math.Angle
// import org.allbinary.math.AngleFactory
// import org.allbinary.math.AngleInfo

public class AllBinarySpriteRotationAnimation : HackRotationSpriteIndexedAnimation {
    

    public AllBinarySpriteRotationAnimation(Sprite sprite, Image image, AnimationBehavior animationBehavior) {
        base(sprite, image, AngleInfo.getInstance1(((int16) ((AngleFactory.getInstance().TOTAL_ANGLE / sprite.getRawFrameCount())))), animationBehavior);
        this.angleInfo.adjustAngle(this.sprite.getFrame());
    }
    

    public override void nextRotation() {
        this.sprite.nextFrame();
        this.angleInfo.adjustAngle(this.sprite.getFrame());
    }
    

    public override void previousRotation() {
        this.sprite.prevFrame();
        this.angleInfo.adjustAngle(this.sprite.getFrame());
    }
    

    public override void setFrameByDirection(Direction direction) {
        Angle angle = this.directionUtil.getFrameAngle(direction);
        this.adjustFrameToAngle(angle);
    }
    

    public override void setFrameToAngle(Angle angle) {
        this.adjustFrameToAngle(angle);
    }
    

    public override void setFrame(int32 index) {
        this.sprite.setFrame(index);
        this.angleInfo.adjustAngle(this.getFrame());
    }
    

    public override void adjustFrameToAngle(Angle angle) {
        this.adjustFrame(angle.getValue());
    }
    

    public override void adjustFrame(int16 angle) {
        this.setFrame(this.frameUtil.getFrameForAngle(angle, ((int32) (this.angleInfo.getAngleIncrementInfo().getAngleIncrement()))));
    }
}

