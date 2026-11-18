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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.math.AngleFactory
// import org.allbinary.math.AngleInfo
// import org.allbinary.util.CircularIndexUtil

public class NullRotationAnimation2 : NullRotationAnimation {
    

    public NullRotationAnimation2() {
        base(AngleInfo.getInstance1(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), new IndexedAnimationBehavior(1, 250));
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
    }
}

