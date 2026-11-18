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
// package org.allbinary.graphics
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

public class CellPositionFactory : JObject {
    private static CellPositionFactory? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static CellPositionFactory staticGet_SINGLETON() {
        if (!CellPositionFactory.staticSet_SINGLETON) {
            CellPositionFactory.staticSet_SINGLETON = true;
            CellPositionFactory.SINGLETON = new CellPositionFactory();
        }
        return CellPositionFactory.SINGLETON;
    }
    public LogUtil logUtil;
    public CellPosition NONE;
    private CellPosition[,] cellPositionArray;
    private int32 columns;
    private int32 rows;

    // Java field initializers run after the base constructor
    private void initFieldsCellPositionFactory() {
    this.logUtil = LogUtil.getInstance();
    this.NONE = new CellPosition(-1, -1, -1, -1);
    this.cellPositionArray = new CellPosition[0, 0];
    this.columns = 0;
    this.rows = 0;
    }
    

    public static CellPositionFactory getInstance() {
        return CellPositionFactory.staticGet_SINGLETON();
    }
    

    public CellPositionFactory() {
        base();
        this.initFieldsCellPositionFactory();
    }
    

    public virtual void init(int32 columns, int32 rows) {
        CommonStrings commonStrings = CommonStrings.getInstance();
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("Init: columns: ");
        stringBuffer.appendint(columns);
        stringBuffer.append(" rows: ");
        stringBuffer.appendint(rows);
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT);
        this.cellPositionArray = new CellPosition[columns, rows];
        this.columns = columns;
        this.rows = rows;
        for (int32 column = 0; column < columns; column++) {
            for (int32 row = 0; row < rows; row++) {
                this.createInstance(column, row);
            }
        }
    }
    

    public virtual CellPosition getInstanceColRow(int32 i_column, int32 i_row) {
        {
            return this.cellPositionArray[i_column, i_row];
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual CellPosition createInstance(int32 i_column, int32 i_row) {
        CellPosition cellPositionCanBeNull = this.cellPositionArray[i_column, i_row];
        if (cellPositionCanBeNull == null) {
            cellPositionCanBeNull = new CellPosition(i_column, i_row, this.columns, this.rows);
            this.cellPositionArray[i_column, i_row] = cellPositionCanBeNull;
        }
        return cellPositionCanBeNull;
    }
    

    public virtual int32 getColumns() {
        return this.columns;
    }
    

    public virtual int32 getRows() {
        return this.rows;
    }
}

