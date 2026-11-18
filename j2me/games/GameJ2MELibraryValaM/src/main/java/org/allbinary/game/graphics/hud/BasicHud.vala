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
// package org.allbinary.game.graphics.hud
// import javax.microedition.lcdui.Graphics
// import org.allbinary.J2MEUtil
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.BasicColorSetUtil
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.displayable.event.DisplayChangeEvent
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonStrings

public class BasicHud : JObject, UpdateMyFontInterface {
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    public CanvasStrings canvasStrings;
    public BasicColorSetUtil basicSetColorUtil;
    private DisplayInfoSingleton displayInfo;
    public MyFontProcessor updateMyFontProcessor;
    public MyFontProcessor myFontProcessor;
    private int32 location;
    private int32 direction;
    private int32 bufferZone;
    private int32 bufferZoneY;
    private HudGraphicsPosition hudGraphicsPosition;
    private int32 x;
    private int32 y;
    private BasicColor basicColor;
    private int32 color;
    public int32 updateMaxWidth;
    public int32 updateMaxHeight;
    public int32 offsetY;

    // Java field initializers run after the base constructor
    private void initFieldsBasicHud() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.canvasStrings = CanvasStrings.getInstance();
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.displayInfo = DisplayInfoSingleton.getInstance();
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.location = 0;
    this.direction = 0;
    this.bufferZone = 0;
    this.bufferZoneY = 0;
    this.hudGraphicsPosition = HudGraphicsPosition.NULL_HUD_GRAPHICS_POSITION;
    this.x = 0;
    this.y = 0;
    this.basicColor = BasicColorFactory.getInstance().BLACK;
    
    this.updateMaxWidth = 0;
    this.updateMaxHeight = 0;
    this.offsetY = 0;
    }
    

    public BasicHud(int32 location, int32 direction, int32 bufferZone, BasicColor basicColor) {
        base();
        this.initFieldsBasicHud();
        this.setLocation(location);
        this.setDirection(direction);
        this.setBufferZone(bufferZone);
        this.onDisplayChangeEvent(DisplayInfoSingleton.getInstance().displayChangeEvent);
        this.setBasicColorP(basicColor);
        this.color = basicColor.intValue();
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        {
            this.hudGraphicsPosition = this.getHudGraphicsPositionWH(this.displayInfo.getLastWidth(), this.displayInfo.getLastHeight(), this.updateMaxWidth, this.updateMaxHeight);
            this.x = this.hudGraphicsPosition.getPoint().getX();
            this.setY(this.hudGraphicsPosition.getPoint().getY());
        } /* catch (Exception e): a thrown Java exception stops the program */
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public virtual int32 getLocation() {
        return this.location;
    }
    

    public virtual int32 getDirection() {
        return this.direction;
    }
    

    public virtual HudGraphicsPosition getHudGraphicsPositionWH(int32 width, int32 height, int32 maxWidth, int32 maxHeight) {
        int32 x = 0;
        int32 y = 0;
        int32 anchor = 0;
        BasicHudFactory basicHudFactory = BasicHudFactory.getInstance();
        if (basicHudFactory.BOTTOMLEFT == this.getLocation()) {
            x = this.bufferZone + 2;
            y = height - maxHeight - this.bufferZone;
            anchor = Graphics.BOTTOM & Graphics.LEFT;
        } else if (basicHudFactory.BOTTOMRIGHT == this.getLocation()) {
            x = width - maxWidth;
            y = height - maxHeight - this.bufferZone;
            anchor = Graphics.BOTTOM & Graphics.RIGHT;
        } else if (basicHudFactory.TOPLEFT == this.getLocation()) {
            x = this.bufferZone + 2;
            y = this.bufferZoneY;
            anchor = Anchor.TOP_LEFT;
        } else if (basicHudFactory.TOPRIGHT == this.getLocation()) {
            x = width - maxWidth;
            y = this.bufferZoneY;
            anchor = Graphics.TOP & Graphics.RIGHT;
        } else if (basicHudFactory.TOPCENTER == this.getLocation()) {
            x = ((width - maxWidth) / 2);
            y = this.bufferZoneY;
            anchor = Graphics.TOP & Graphics.HCENTER;
        } else if (basicHudFactory.BOTTOMCENTER == this.getLocation()) {
            x = ((width - maxWidth) / 2);
            y = height - maxHeight - this.bufferZone;
            anchor = Graphics.BOTTOM & Graphics.HCENTER;
        } else if (basicHudFactory.ABSOLUTE == this.getLocation()) {
            x = maxHeight;
            y = maxWidth;
            anchor = 0;
        }
        return new HudGraphicsPosition(this.getPoint(x, y), anchor);
    }
    

    public virtual void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public virtual void onDisplayChangeEvent(DisplayChangeEvent displayChangeEvent) {
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    public virtual GPoint getPoint(int32 x, int32 y) {
        return PointFactory.getInstance().createXY(x, y);
    }
    

    public virtual int32 getBufferZone() {
        return this.bufferZone;
    }
    

    public virtual void setBufferZone(int32 bufferZone) {
        this.bufferZone = bufferZone;
        if (J2MEUtil.isHTML()) {
            this.bufferZoneY = this.bufferZone;
        } else {
            this.bufferZoneY = this.bufferZone + 5;
        }
    }
    

    public virtual void setLocation(int32 location) {
        this.location = location;
    }
    

    public virtual void setDirection(int32 direction) {
        this.direction = direction;
    }
    

    public virtual HudGraphicsPosition getHudGraphicsPosition() {
        return this.hudGraphicsPosition;
    }
    

    public virtual int32 getColor() {
        return this.color;
    }
    

    public virtual int32 getX() {
        return this.x;
    }
    

    public virtual void setX(int32 x) {
        this.x = x;
    }
    

    public virtual void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
    }
    

    public virtual BasicColor getBasicColorP() {
        return this.basicColor;
    }
    

    public virtual void setY(int32 y) {
        this.y = y;
    }
    

    public virtual int32 getY() {
        return this.y;
    }
    

    public virtual void paintSSO(Graphics graphics, string string, string string2, int32 offset) {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        graphics.drawString(string, this.x, this.getY(), this.hudGraphicsPosition.getAnchor());
        graphics.drawString(string2, this.x + offset, this.getY(), this.hudGraphicsPosition.getAnchor());
    }
    

    public virtual void paintSSOO(Graphics graphics, string string, string string2, int32 offset, int32 offset2) {
        this.myFontProcessor.process(graphics);
        graphics.setColor(this.getColor());
        graphics.drawString(string, this.x + offset, this.getY(), this.hudGraphicsPosition.getAnchor());
        graphics.drawString(string2, this.x + offset2, this.getY(), this.hudGraphicsPosition.getAnchor());
    }
    

    public virtual void paintDXY(Graphics graphics, uint16[] charArray, int32 offset, int32 len, uint16[] charArray2, int32 offset2, int32 len2, int32 xOffset, int32 xOffset2) {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        int32 y = this.getY();
        graphics.drawChars(charArray, offset, len, this.x + xOffset, y, this.hudGraphicsPosition.getAnchor());
        graphics.drawChars(charArray2, offset2, len2, this.x + xOffset2, y, this.hudGraphicsPosition.getAnchor());
    }
    

    public virtual void paintDX(Graphics graphics, uint16[] charArray, int32 offset, int32 len, uint16[] charArray2, int32 offset2, int32 len2, int32 xOffset) {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        int32 y = this.getY();
        graphics.drawChars(charArray, offset, len, this.x, y, this.hudGraphicsPosition.getAnchor());
        graphics.drawChars(charArray2, offset2, len2, this.x + xOffset, y, this.hudGraphicsPosition.getAnchor());
    }
    

    public virtual void paintOffsetAndLength(Graphics graphics, uint16[] charArray, int32 offset, int32 len) {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        int32 y = this.getY();
        graphics.drawChars(charArray, offset, len, this.x, y, this.hudGraphicsPosition.getAnchor());
    }
    

    public virtual void paintString(Graphics graphics, string string) {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        int32 y = this.getY() + this.offsetY;
        graphics.drawString(string, this.x, y, this.hudGraphicsPosition.getAnchor());
    }
}

