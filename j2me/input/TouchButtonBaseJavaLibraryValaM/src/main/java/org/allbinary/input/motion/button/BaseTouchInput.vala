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
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListUtil

public class BaseTouchInput : JObject {
    public CommonStrings commonStrings;
    private BasicArrayListUtil basicArrayListUtil;

    // Java field initializers run after the base constructor
    private void initFieldsBaseTouchInput() {
    this.commonStrings = CommonStrings.getInstance();
    this.basicArrayListUtil = BasicArrayListUtil.getInstance();
    }
    

    public BaseTouchInput() {
        base();
        this.initFieldsBaseTouchInput();
    }
    

    public virtual BasicArrayList getList() {
        return this.basicArrayListUtil.getImmutableInstance();
    }
    

    public override string toString() {
        return JObject.className(this);
    }
}

