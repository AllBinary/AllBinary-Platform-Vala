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
// package org.allbinary.animation
// import org.allbinary.direction.Direction
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.math.Angle
// import org.allbinary.math.AngleFactory
// import org.allbinary.math.AngleInfo

public class VectorRotationAnimation : VectorBaseRotationAnimation {
    

    public VectorRotationAnimation(int32[,,] currentPoints, BasicColor basicColor, AnimationBehavior animationBehavior) {
        base(AngleInfo.getInstance1(((int16) ((((int32) (AngleFactory.getInstance().TOTAL_ANGLE)) / currentPoints.length[0])))), currentPoints, basicColor, animationBehavior);
        this.angleInfo.adjustAngle(this.getFrame());
    }
    

    public override void setFrameByDirection(Direction direction) {
        Angle angle = this.directionUtil.getFrameAngle(direction);
        this.adjustFrameToAngle(angle);
    }
    

    public override void setFrameToAngle(Angle angle) {
        this.adjustFrameToAngle(angle);
    }
    

    public override void setFrame(int32 index) {
        base.setFrame(index);
        this.angleInfo.adjustAngle(this.getFrame());
    }
    

    public override void adjustFrame(int16 newAngle) {
        this.setFrame(this.frameUtil.getFrameForAngle(newAngle, ((int32) (this.angleInfo.getAngleIncrementInfo().getAngleIncrement()))));
    }
    

    public override void adjustFrameToAngle(Angle newAngle) {
        this.adjustFrame(newAngle.getValue());
    }
}

