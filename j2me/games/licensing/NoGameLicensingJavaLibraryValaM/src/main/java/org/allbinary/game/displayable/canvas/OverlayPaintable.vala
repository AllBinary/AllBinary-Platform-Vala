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
// package org.allbinary.game.displayable.canvas
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.paint.InitUpdatePaintable
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class OverlayPaintable : InitUpdatePaintable {
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsOverlayPaintable() {
    this.logUtil = LogUtil.getInstance();
    }
    

    public OverlayPaintable() {
        base();
        this.initFieldsOverlayPaintable();
    }
    

    public override void update() {
        {
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override void paint(Graphics graphics) {
    }
}

