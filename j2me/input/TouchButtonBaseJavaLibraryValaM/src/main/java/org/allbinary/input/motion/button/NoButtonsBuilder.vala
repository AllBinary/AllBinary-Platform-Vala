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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListUtil

public class NoButtonsBuilder : BaseTouchInput {
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsNoButtonsBuilder() {
    this.logUtil = LogUtil.getInstance();
    }

    public NoButtonsBuilder() {
        base();
        this.initFieldsNoButtonsBuilder();
    }
    

    public override BasicArrayList getList() {
        {
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
            BasicArrayList list = BasicArrayListUtil.getInstance().getImmutableInstance();
            return list;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

