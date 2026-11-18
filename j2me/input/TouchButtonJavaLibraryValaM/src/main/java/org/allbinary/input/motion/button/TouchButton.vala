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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.graphics.CellPosition
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.RectangleFactory
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

public class TouchButton : Paintable {
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    private TouchButtonInput touchButtonInput;
    private Animation animationInterface;
    private Animation hintAnimationInterface;
    public Rectangle rawRectangle;
    public int32 xBorder;
    public int32 yBorder;
    public Rectangle rectangleP;
    public CellPosition cellPositionP;
    public int32 animationX;
    public int32 animationY;
    public int32 hintAnimationY;

    // Java field initializers run after the base constructor
    private void initFieldsTouchButton() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    
    
    
    
    this.rectangleP = RectangleFactory.SINGLETON;
    
    this.animationX = 0;
    this.animationY = 0;
    this.hintAnimationY = 0;
    }
    

    public static TouchButton createButton(TouchButtonInput touchButtonInput, TouchButtonResource touchButtonResource, Rectangle rawRectangle, CellPosition cellPosition, int32 xBorder, int32 yBorder) {
        return new TouchButton(touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().@get(touchButtonResource.RESOURCE).getInstance1(0), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().@get(touchButtonResource.HINT).getInstance1(0), rawRectangle, cellPosition, xBorder, yBorder);
    }
    

    public TouchButton(TouchButtonInput touchButtonInput, Animation animationInterface, Animation hintAnimationInterface, Rectangle rawRectangle, CellPosition cellPosition, int32 xBorder, int32 yBorder) {
        base();
        this.initFieldsTouchButton();
        this.touchButtonInput = touchButtonInput;
        this.animationInterface = animationInterface;
        this.hintAnimationInterface = hintAnimationInterface;
        this.rawRectangle = rawRectangle;
        this.cellPositionP = cellPosition;
        this.xBorder = xBorder;
        this.yBorder = yBorder;
        this.updateRectangle();
        this.logUtil.putF(new StringMaker().append("Created: ").append(this.toString()).toString(), this, this.commonStrings.CONSTRUCTOR);
    }
    

    public virtual void paintHint(Graphics graphics) {
        this.hintAnimationInterface.paintXY(graphics, this.animationX, this.hintAnimationY);
    }
    

    public override void paint(Graphics graphics) {
        this.animationInterface.paintXY(graphics, this.animationX, this.animationY);
    }
    

    public virtual void updateRectangle() {
        {
            PointFactory pointFactory = PointFactory.getInstance();
            int32 x = this.rawRectangle.getWidth() * this.cellPositionP.getColumn();
            int32 y = this.rawRectangle.getHeight() * this.cellPositionP.getRow();
            this.rectangleP = new Rectangle(pointFactory.createXY(x + this.xBorder, y + this.yBorder), this.rawRectangle.getWidth(), this.rawRectangle.getHeight());
            GPoint point = this.rectangleP.getPoint();
            this.animationX = point.getX();
            this.animationY = point.getY();
            this.hintAnimationY = this.animationY - 32;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual CellPosition getCellPosition() {
        return this.cellPositionP;
    }
    

    public virtual Rectangle getRectangle() {
        return this.rectangleP;
    }
    

    public virtual TouchButtonInput getTouchButtonInput() {
        return this.touchButtonInput;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        StringUtil stringUtil = StringUtil.getInstance();
        stringBuffer.append("TouchButton: ");
        stringBuffer.append(stringUtil.toString1(this.getRectangle()));
        stringBuffer.append(" CellPosition: ");
        stringBuffer.append(stringUtil.toString1(this.cellPositionP));
        stringBuffer.append(" xBorder: ");
        stringBuffer.appendint(this.xBorder);
        stringBuffer.append(" yBorder: ");
        stringBuffer.appendint(this.yBorder);
        return stringBuffer.toString();
    }
}

