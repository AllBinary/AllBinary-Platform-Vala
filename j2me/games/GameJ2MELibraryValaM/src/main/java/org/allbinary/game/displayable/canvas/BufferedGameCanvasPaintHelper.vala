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
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.NullCanvas
// import javax.microedition.lcdui.NullImage
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.graphics.paint.ProcessPaintable
// import org.allbinary.util.CircularIndexUtil

public class BufferedGameCanvasPaintHelper : ProcessPaintable {
    private const int32 MAX_IMAGES = 4;
    private Canvas gameCanvas;
    private Image[] offScreenImage;
    private Image previousImage;
    private CircularIndexUtil circularIndexUtil;
    private CircularIndexUtil drawCircularIndexUtil;
    private int32 anchor;

    // Java field initializers run after the base constructor
    private void initFieldsBufferedGameCanvasPaintHelper() {
    this.gameCanvas = NullCanvas.NULL_CANVAS;
    this.offScreenImage = new Image[BufferedGameCanvasPaintHelper.MAX_IMAGES];
    this.previousImage = NullImage.NULL_IMAGE;
    this.circularIndexUtil = CircularIndexUtil.createInstance(BufferedGameCanvasPaintHelper.MAX_IMAGES);
    this.drawCircularIndexUtil = CircularIndexUtil.createInstanceAt(BufferedGameCanvasPaintHelper.MAX_IMAGES - 1, BufferedGameCanvasPaintHelper.MAX_IMAGES);
    this.anchor = Anchor.TOP_LEFT;
    }
    

    public BufferedGameCanvasPaintHelper(AllBinaryGameCanvas gameCanvas) {
        base();
        this.initFieldsBufferedGameCanvasPaintHelper();
        JSystem.fatal(new JException("Exception", "No Longer Used"));
    }
    

    public override void process() {
        MyCanvas myCanvas = (((MyCanvas) this.gameCanvas));
        myCanvas.draw(this.offScreenImage[this.circularIndexUtil.getIndex()].getGraphics());
        this.circularIndexUtil.next();
        this.drawCircularIndexUtil.next();
    }
    

    public override void paint(Graphics graphics) {
        this.previousImage = this.offScreenImage[this.drawCircularIndexUtil.getIndex()];
        graphics.drawImage(this.previousImage, 0, 0, this.anchor);
    }
}

