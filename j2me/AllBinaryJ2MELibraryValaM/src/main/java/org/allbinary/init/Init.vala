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
// package org.allbinary.init
// import org.allbinary.string.CommonStrings

public class Init : JObject, InitInterface {
    public CommonStrings commonStrings;

    // Java field initializers run after the base constructor
    private void initFieldsInit() {
    this.commonStrings = CommonStrings.getInstance();
    }

    public Init() {
        base();
        this.initFieldsInit();
    }
    

    public virtual void init() {
    }
}

