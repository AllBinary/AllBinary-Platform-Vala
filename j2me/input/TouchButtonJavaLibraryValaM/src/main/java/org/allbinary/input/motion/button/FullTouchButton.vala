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
// package org.allbinary.input.motion.button
// import org.allbinary.animation.Animation
// import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.graphics.CellPosition
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle

public class FullTouchButton : TouchButton {
    

    public static FullTouchButton createButton(TouchButtonInput touchButtonInput, TouchButtonResource touchButtonResource, Rectangle rawRectangle, CellPosition cellPosition, int32 xBorder, int32 yBorder) {
        return new FullTouchButton(touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().@get(touchButtonResource.RESOURCE).getInstance1(0), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().@get(touchButtonResource.HINT).getInstance1(0), rawRectangle, cellPosition, xBorder, yBorder);
    }
    

    public FullTouchButton(TouchButtonInput touchButtonInput, Animation animationInterface, Animation hintAnimationInterface, Rectangle rawRectangle, CellPosition cellPosition, int32 xBorder, int32 yBorder) {
        base.with7(touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder);
    }
    

    public override void updateRectangle() {
        {
            PointFactory pointFactory = PointFactory.getInstance();
            int32 x = this.rawRectangle.getWidth() * this.cellPositionP.getColumn();
            int32 y = this.rawRectangle.getHeight() * this.cellPositionP.getRow();
            this.rectangleP = new Rectangle(pointFactory.createXY(x, y), this.rawRectangle.getWidth() + (2 * this.xBorder), this.rawRectangle.getHeight() + (2 * this.yBorder));
            GPoint point = this.rectangleP.getPoint();
            this.animationX = point.getX() + this.xBorder;
            this.animationY = point.getY() + this.yBorder;
            this.hintAnimationY = this.animationY - this.rectangleP.getHeight() >> 1;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

