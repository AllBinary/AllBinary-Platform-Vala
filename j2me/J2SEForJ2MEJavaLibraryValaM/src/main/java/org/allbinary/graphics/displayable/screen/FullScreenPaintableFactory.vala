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
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable

public class FullScreenPaintableFactory : JObject {
    private static FullScreenPaintableFactory? instance;
    private static bool staticSet_instance = false;
    private static FullScreenPaintableFactory staticGet_instance() {
        if (!FullScreenPaintableFactory.staticSet_instance) {
            FullScreenPaintableFactory.staticSet_instance = true;
            FullScreenPaintableFactory.instance = new FullScreenPaintableFactory();
        }
        return FullScreenPaintableFactory.instance;
    }
    public Paintable paintable;

    // Java field initializers run after the base constructor
    private void initFieldsFullScreenPaintableFactory() {
    this.paintable = NullPaintable.getInstance();
    }

    public FullScreenPaintableFactory() {
        base();
        this.initFieldsFullScreenPaintableFactory();
    }
    

    public static FullScreenPaintableFactory getInstance() {
        return FullScreenPaintableFactory.staticGet_instance();
    }
}

