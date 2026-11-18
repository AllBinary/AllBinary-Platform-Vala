/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.graphics.displayable.screen
// import org.allbinary.graphics.GPoint

public class DisplayPointScalar : JObject {
    private static DisplayPointScalar? instance;
    private static bool staticSet_instance = false;
    private static DisplayPointScalar staticGet_instance() {
        if (!DisplayPointScalar.staticSet_instance) {
            DisplayPointScalar.staticSet_instance = true;
            DisplayPointScalar.instance = new DisplayPointScalar();
        }
        return DisplayPointScalar.instance;
    }

    public DisplayPointScalar() {
        base();
    }
    

    public static DisplayPointScalar getInstance() {
        return DisplayPointScalar.staticGet_instance();
    }
    

    public virtual int32 processX(int32 value) {
        return value;
    }
    

    public virtual int32 processY(int32 value) {
        return value;
    }
    

    public virtual GPoint process(GPoint point) {
        return point;
    }
}

