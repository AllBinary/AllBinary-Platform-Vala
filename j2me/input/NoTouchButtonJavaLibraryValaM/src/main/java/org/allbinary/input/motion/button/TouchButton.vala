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
// import org.allbinary.animation.AnimationInterface
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
    public Rectangle rawRectangle;
    public int32 xBorder;
    public int32 yBorder;
    public Rectangle rectangle;
    public CellPosition cellPosition;
    public int32 animationX;
    public int32 animationY;

    // Java field initializers run after the base constructor
    private void initFieldsTouchButton() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    
    
    
    this.rectangle = RectangleFactory.SINGLETON;
    
    this.animationX = 0;
    this.animationY = 0;
    }
    

    public TouchButton(TouchButtonInput touchButtonInput, AnimationInterface animationInterface, Rectangle rawRectangle, CellPosition cellPosition, int32 xBorder, int32 yBorder) {
        base();
        this.initFieldsTouchButton();
        this.touchButtonInput = touchButtonInput;
        this.animationInterface = ((Animation) animationInterface);
        this.rawRectangle = rawRectangle;
        this.cellPosition = cellPosition;
        this.xBorder = xBorder;
        this.yBorder = yBorder;
        this.updateRectangle();
        this.logUtil.putF(new StringMaker().append("Created: ").append(this.toString()).toString(), this, this.commonStrings.CONSTRUCTOR);
    }
    

    public override void paint(Graphics graphics) {
        this.animationInterface.paintXY(graphics, this.animationX, this.animationY);
    }
    

    public virtual void updateRectangle() {
        {
            int32 x = this.rawRectangle.getWidth() * this.cellPosition.getColumn();
            int32 y = this.rawRectangle.getHeight() * this.cellPosition.getRow();
            PointFactory pointFactory = PointFactory.getInstance();
            this.rectangle = new Rectangle(pointFactory.createXY(x + this.xBorder, y + this.yBorder), this.rawRectangle.getWidth(), this.rawRectangle.getHeight());
            GPoint point = this.rectangle.getPoint();
            this.animationX = point.getX();
            this.animationY = point.getY();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual CellPosition getCellPositionP() {
        return this.cellPosition;
    }
    

    public virtual Rectangle getRectangleP() {
        return this.rectangle;
    }
    

    public virtual TouchButtonInput getTouchButtonInput() {
        return this.touchButtonInput;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        StringUtil stringUtil = StringUtil.getInstance();
        stringBuffer.append("TouchButton: ");
        stringBuffer.append(stringUtil.toString1(this.rectangle));
        stringBuffer.append(" CellPosition: ");
        stringBuffer.append(stringUtil.toString1(this.cellPosition));
        stringBuffer.append(" xBorder: ");
        stringBuffer.appendint(this.xBorder);
        stringBuffer.append(" yBorder: ");
        stringBuffer.appendint(this.yBorder);
        return stringBuffer.toString();
    }
}

