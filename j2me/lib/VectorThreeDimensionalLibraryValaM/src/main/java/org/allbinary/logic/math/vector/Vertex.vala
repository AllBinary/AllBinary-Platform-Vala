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
// package org.allbinary.logic.math.vector
// import org.allbinary.logic.math.BasicDecimal
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.math.PositionStrings
// import org.allbinary.string.CommonSeps

public class Vertex : JObject {
    public BasicDecimal x;
    public BasicDecimal y;
    public BasicDecimal z;

    // Java field initializers run after the base constructor
    private void initFieldsVertex() {
    this.x = new BasicDecimal(0);
    this.y = new BasicDecimal(0);
    this.z = new BasicDecimal(0);
    }
    

    public Vertex() {
        base();
        this.initFieldsVertex();
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        PositionStrings positionStrings = PositionStrings.getInstance();
        stringBuffer.append(positionStrings.X_LABEL);
        stringBuffer.append(this.x.toString());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(positionStrings.Y_LABEL);
        stringBuffer.append(this.y.toString());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(positionStrings.Z_LABEL);
        stringBuffer.append(this.z.toString());
        return stringBuffer.toString();
    }
}

