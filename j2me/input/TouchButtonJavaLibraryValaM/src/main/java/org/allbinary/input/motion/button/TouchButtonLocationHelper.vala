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
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.logic.string.StringMaker

public class TouchButtonLocationHelper : JObject {
    private int32 totalColumns;
    private int32 totalRows;
    private int32 columnsRemainder;
    private int32 rowsRemainder;
    private int32 columnsRemainderHalf;
    private int32 rowsRemainderHalf;

    // Java field initializers run after the base constructor
    private void initFieldsTouchButtonLocationHelper() {
    
    
    
    
    
    
    }
    

    public TouchButtonLocationHelper() {
        base();
        this.initFieldsTouchButtonLocationHelper();
        int32 buttonSize = CommonButtons.getInstance().STANDARD_BUTTON_SIZE;
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        this.totalColumns = ((int32) Math.roundf(((float) (displayInfo.getLastWidth())) / ((float) (buttonSize))));
        this.totalRows = ((int32) Math.roundf(((float) (displayInfo.getLastHeight())) / ((float) (buttonSize))));
        this.columnsRemainder = displayInfo.getLastWidth() % buttonSize;
        this.columnsRemainderHalf = (this.columnsRemainder >> 1);
        this.rowsRemainder = displayInfo.getLastHeight() % buttonSize;
        this.rowsRemainderHalf = (this.rowsRemainder >> 1);
    }
    

    public virtual int32 getTotalColumns() {
        return this.totalColumns;
    }
    

    public virtual int32 getTotalRows() {
        return this.totalRows;
    }
    

    public virtual int32 getColumnsRemainder() {
        return this.columnsRemainder;
    }
    

    public virtual int32 getRowsRemainder() {
        return this.rowsRemainder;
    }
    

    public virtual int32 getColumnsRemainderHalf() {
        return this.columnsRemainderHalf;
    }
    

    public virtual int32 getRowsRemainderHalf() {
        return this.rowsRemainderHalf;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("totalColumns: ");
        stringBuffer.appendint(this.totalColumns);
        stringBuffer.append(" totalRows: ");
        stringBuffer.appendint(this.totalRows);
        stringBuffer.append(" columnsRemainder: ");
        stringBuffer.appendint(this.columnsRemainder);
        stringBuffer.append(" rowsRemainder: ");
        stringBuffer.appendint(this.rowsRemainder);
        stringBuffer.append(" columnsRemainderHalf: ");
        stringBuffer.appendint(this.columnsRemainderHalf);
        stringBuffer.append(" rowsRemainderHalf: ");
        stringBuffer.appendint(this.rowsRemainderHalf);
        return stringBuffer.toString();
    }
}

