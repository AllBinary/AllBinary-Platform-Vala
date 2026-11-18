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
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorSetUtil
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.util.BasicArrayList

public class TouchButtonsPaintable : Paintable {
    public BasicColor foregroundBasicColor;
    public int32 foregroundColor;
    public BasicColorSetUtil basicSetColorUtil;
    private TouchButtonFactory touchButtonFactory;

    // Java field initializers run after the base constructor
    private void initFieldsTouchButtonsPaintable() {
    
    
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.touchButtonFactory = TouchButtonFactory.getInstance();
    }
    

    public TouchButtonsPaintable(BasicColor basicColor) {
        base();
        this.initFieldsTouchButtonsPaintable();
        this.foregroundBasicColor = basicColor;
        this.foregroundColor = basicColor.intValue();
    }
    

    public override void paint(Graphics graphics) {
        BasicArrayList list = this.touchButtonFactory.getList();
        this.basicSetColorUtil.setBasicColorP3(graphics, this.foregroundBasicColor, this.foregroundColor);
        TouchButton touchButton = null;
        for (int32 index = list.size(); --index >= 0; ) {
            touchButton = ((TouchButton) list.objectArray[index]);
            touchButton.paint(graphics);
        }
        for (int32 index = list.size(); --index >= 0; ) {
            touchButton = ((TouchButton) list.objectArray[index]);
            touchButton.paintHint(graphics);
        }
    }
}

