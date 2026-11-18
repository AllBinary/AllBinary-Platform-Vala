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
// package org.allbinary.game.part
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.layer.AllBinaryLayer

public class CountedLayersHudPaintable : JObject, PaintableInterface, UpdateMyFontInterface {
    private static int32 XXStringWidth = 0;
    private DisplayInfoSingleton displayInfoSingleton;
    private PartInterface[] partInterfaceArray;
    private int32 countedTotalStringColor;
    private int32 countedPartsBorder;
    private int32 startIndex;
    private int32 dropSize;
    private MyFontProcessor myFontProcessor;
    private int32 height;

    // Java field initializers run after the base constructor
    private void initFieldsCountedLayersHudPaintable() {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    
    
    
    
    
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    this.height = 0;
    }
    

    public CountedLayersHudPaintable(PartInterface[] partInterfaceArray, int32 dropSize, int32 startIndex, int32 countedTotalStringColor, int32 countedPartsBorder) {
        base();
        this.initFieldsCountedLayersHudPaintable();
        this.partInterfaceArray = partInterfaceArray;
        this.startIndex = startIndex;
        this.countedTotalStringColor = countedTotalStringColor;
        this.countedPartsBorder = countedPartsBorder;
        this.dropSize = dropSize;
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.height = font.getHeight();
        if (this.dropSize > font.getHeight()) {
            this.height = this.dropSize;
        }
        if (CountedLayersHudPaintable.XXStringWidth == 0) {
            string XXString = "XX";
            CountedLayersHudPaintable.XXStringWidth = font.stringWidth(XXString);
        }
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public virtual void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        int32 lastWidth = this.displayInfoSingleton.getLastWidth();
        int32 widthEdge = lastWidth - this.dropSize;
        int32 size = this.partInterfaceArray.length;
        int32 count = 0;
        int32 y = 0;
        CountedLayerInterfaceFactoryPart countedLayerInterfaceFactory = null;
        PickedUpLayerInterfaceFactoryInterface pickedUpLayerInterfaceFactoryInterface = null;
        AllBinaryLayer layerInterface = null;
        uint16[] charArray = null;
        for (int32 index = this.startIndex; index < size; index++) {
            countedLayerInterfaceFactory = ((CountedLayerInterfaceFactoryPart) this.partInterfaceArray[index]);
            if (countedLayerInterfaceFactory.getTotal() > 0) {
                pickedUpLayerInterfaceFactoryInterface = countedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory();
                layerInterface = pickedUpLayerInterfaceFactoryInterface.getIconLayer();
                y = 40 + (count * this.height);
                layerInterface.setPosition(widthEdge, y, layerInterface.getZP());
                layerInterface.paint(graphics);
                graphics.setColor(this.countedTotalStringColor);
                countedLayerInterfaceFactory.paint(graphics);
                charArray = countedLayerInterfaceFactory.getTotalString();
                graphics.drawChars(charArray, 0, charArray.length, widthEdge - countedLayerInterfaceFactory.getXOffset(), y, 0);
                count++;
            }
        }
        if (count > 0) {
            graphics.setColor(this.countedPartsBorder);
            graphics.drawRect(lastWidth - (CountedLayersHudPaintable.XXStringWidth + this.dropSize), 40, CountedLayersHudPaintable.XXStringWidth + this.dropSize, (count * this.height) + 3);
        }
    }
    

    public virtual void paintThreed(Graphics graphics) {
    }
}

