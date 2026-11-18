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
// package org.allbinary.game.layer
// import javax.microedition.khronos.opengles.GL
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.BasicColorSetUtil
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.image.opengles.OpenGLSurfaceChangedInterface
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.view.ViewPositionBase
// import org.allbinary.view.event.ViewPositionEvent
// import org.allbinary.view.event.ViewPositionEventListenerInterface

public class AllBinaryGameLayer : AllBinaryLayer, ViewPositionEventListenerInterface, OpenGLSurfaceChangedInterface, EventListenerInterface {
    public CommonStrings commonStrings;
    public BasicColorSetUtil basicSetColorUtil;
    public BasicColor RED;
    private Paintable paintable;
    private BasicArrayList gameKeyEventList;

    // Java field initializers run after the base constructor
    private void initFieldsAllBinaryGameLayer() {
    this.commonStrings = CommonStrings.getInstance();
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.RED = BasicColorFactory.getInstance().RED;
    this.paintable = AllBinaryGameLayer.createPaintable();
    this.gameKeyEventList = new BasicArrayListD();
    }
    

    private static Paintable createPaintable() {
        if (SWTUtil.isSWT) {
            return new SWTBlackPaintable();
        }
        return NullPaintable.getInstance();
    }
    

    public AllBinaryGameLayer(string name, Rectangle layerInfo, ViewPositionBase viewPosition) {
        base(name, layerInfo, viewPosition);
        this.initFieldsAllBinaryGameLayer();
    }
    

    public virtual void @set(GL gl) {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual void move() {
    }
    

    public virtual BasicArrayList getGameKeyEventList() {
        return this.gameKeyEventList;
    }
    

    public virtual void processInput(AllBinaryLayerManager allBinaryLayerManager) {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual void processTick(AllBinaryLayerManager allBinaryLayerManager) {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public virtual void onViewPositionChangeEvent() {
        this.onChangeEvent(this.viewPositionEvent);
    }
    

    public override void onChangeEvent(ViewPositionEvent layerManagerEvent) {
        if (GameLayerUtil.isOnScreen(this)) {
            this.setVisible(true);
        } else {
            this.setVisible(false);
        }
    }
    

    public virtual void paintFirst(Graphics graphics) {
        this.paintable.paint(graphics);
    }
    

    public virtual void paintDebug(Graphics graphics) {
        ViewPositionBase viewPosition = this.getViewPosition();
        int32 viewX = viewPosition.getX();
        int32 viewY = viewPosition.getY();
        this.basicSetColorUtil.setBasicColorP(graphics, this.RED);
        graphics.drawRect(viewX, viewY, this.getWidth(), this.getHeight());
    }
    

    public virtual void setWidth(int32 width) {
        base.setLayerWidth(width);
        this.setHalfWidth(width >> 1);
    }
    

    public virtual void setHeight(int32 height) {
        base.setLayerHeight(height);
        this.setHalfHeight(height >> 1);
    }
}

