// Generated Code Do Not Modify
// package org.allbinary.animation
// import org.allbinary.math.AngleFactory
// import org.allbinary.math.AngleInfo
// import org.allbinary.util.CircularIndexUtil

public class NullRotationAnimation : RotationAnimation {
    

    public static NullRotationAnimation createTotalAngle(AngleInfo angleInfo, int16 totalAngle, AnimationBehavior animationBehavior) {
        return new NullRotationAnimation(angleInfo, CircularIndexUtil.createInstance(totalAngle / angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior);
    }
    

    public static NullRotationAnimation createQuarter(AnimationBehavior animationBehavior) {
        return new NullRotationAnimation(AngleInfo.getInstance1(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior);
    }
    

    public NullRotationAnimation(AngleInfo angleInfo, CircularIndexUtil circularIndexUtil, AnimationBehavior animationBehavior) {
        base(angleInfo, circularIndexUtil, animationBehavior);
    }
    

    public override int32 getAnimationSize() {
        return 0;
    }
}

