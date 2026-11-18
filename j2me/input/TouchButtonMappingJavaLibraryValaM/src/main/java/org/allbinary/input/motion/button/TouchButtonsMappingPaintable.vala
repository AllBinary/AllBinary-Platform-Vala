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
// import org.allbinary.graphics.CellPositionFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class TouchButtonsMappingPaintable : Paintable {
    public LogUtil logUtil;
    public int32 foregroundColor;
    private Paintable[,] paintableTable;
    private TouchButtonLocationHelper touchButtonLocationHelper;

    // Java field initializers run after the base constructor
    private void initFieldsTouchButtonsMappingPaintable() {
    this.logUtil = LogUtil.getInstance();
    
    this.paintableTable = new Paintable[0, 0];
    this.touchButtonLocationHelper = new TouchButtonLocationHelper();
    }
    

    public TouchButtonsMappingPaintable(BasicColor basicColor) {
        base();
        this.initFieldsTouchButtonsMappingPaintable();
        this.foregroundColor = basicColor.intValue();
        this.init();
    }
    

    private void init() {
        {
            this.paintableTable = this.createPaintableTable();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    private Paintable[,] createPaintableTable() {
        int32 totalColumns = this.touchButtonLocationHelper.getTotalColumns();
        int32 totalRows = this.touchButtonLocationHelper.getTotalRows();
        Paintable[,] paintableTable = new Paintable[totalColumns, totalRows];
        CellPositionFactory cellPositionFactory = CellPositionFactory.getInstance();
        CommonButtons commonButtons = CommonButtons.getInstance();
        for (int32 index = totalColumns - 1; index >= 0; index--) {
            for (int32 rowIndex = totalRows - 1; rowIndex >= 0; rowIndex--) {
                this.paintableTable[index, rowIndex] = TouchButton.createButton(BasicTouchInputFactory.getInstance().NONE, TouchButtonBlankResource.getInstance(), commonButtons.NORMAL_BUTTON, cellPositionFactory.getInstanceColRow(index, rowIndex), this.touchButtonLocationHelper.getColumnsRemainderHalf(), this.touchButtonLocationHelper.getRowsRemainderHalf());
            }
        }
        return paintableTable;
    }
    

    public override void paint(Graphics graphics) {
        int32 totalColumns = this.touchButtonLocationHelper.getTotalColumns();
        int32 totalRows = this.touchButtonLocationHelper.getTotalRows();
        for (int32 index = totalColumns - 1; index >= 0; index--) {
            for (int32 rowIndex = totalRows - 1; rowIndex >= 0; rowIndex--) {
                this.paintableTable[index, rowIndex].paint(graphics);
            }
        }
    }
}

