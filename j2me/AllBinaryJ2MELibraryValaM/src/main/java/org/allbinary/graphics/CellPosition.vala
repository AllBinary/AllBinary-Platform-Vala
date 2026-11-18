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
// import org.allbinary.graph.V
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps

public class CellPosition : V {
    private int32 id;
    private int32 column;
    private int32 row;

    // Java field initializers run after the base constructor
    private void initFieldsCellPosition() {
    
    
    
    }
    

    public CellPosition(int32 column, int32 row, int32 columns, int32 rows) {
        base();
        this.initFieldsCellPosition();
        this.column = column;
        this.row = row;
        this.id = (row * columns) + column;
    }
    

    public virtual int32 getColumn() {
        return this.column;
    }
    

    public virtual int32 getRow() {
        return this.row;
    }
    

    public override string toString() {
        return CellPosition.toStringColRow(this.getColumn(), this.getRow());
    }
    

    public static string toStringCellPosition(CellPosition basicGeographicMapCellPosition) {
        return CellPosition.toStringColRow(basicGeographicMapCellPosition.getColumn(), basicGeographicMapCellPosition.getRow());
    }
    

    public static string toStringColRow(int32 i_column, int32 i_row) {
        StringMaker stringBuffer = new StringMaker();
        CommonSeps commonSeps = CommonSeps.getInstance();
        stringBuffer.append(commonSeps.PARENTHESIS_OPEN);
        stringBuffer.appendint(i_column);
        stringBuffer.append(commonSeps.COMMA);
        stringBuffer.appendint(i_row);
        stringBuffer.append(commonSeps.PARENTHESIS_CLOSE);
        return stringBuffer.toString();
    }
    

    public override int32 getId() {
        return this.id;
    }
}

