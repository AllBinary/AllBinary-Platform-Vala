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
// package org.allbinary.layer
// import org.allbinary.graphics.Rectangle
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.view.ViewPosition

public class AllBinaryLayerFactory : JObject, AllBinaryLayerFactoryInterface {
    private Rectangle rectangle;

    // Java field initializers run after the base constructor
    private void initFieldsAllBinaryLayerFactory() {
    
    }
    

    public AllBinaryLayerFactory(Rectangle rectangle) {
        base();
        this.initFieldsAllBinaryLayerFactory();
        this.rectangle = rectangle;
    }
    

    public virtual AllBinaryLayer getInstance() {
        return new AllBinaryLayer(StringUtil.getInstance().EMPTY_STRING, this.rectangle, ViewPosition.getInstanceD());
    }
}

