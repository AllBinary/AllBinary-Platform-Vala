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
// package org.allbinary.logic.system.os
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

public class OperatingSystemFactory : JObject {
    private static OperatingSystemFactory? instance;
    private static bool staticSet_instance = false;
    private static OperatingSystemFactory staticGet_instance() {
        if (!OperatingSystemFactory.staticSet_instance) {
            OperatingSystemFactory.staticSet_instance = true;
            OperatingSystemFactory.instance = new OperatingSystemFactory();
        }
        return OperatingSystemFactory.instance;
    }
    public LogUtil logUtil;
    private GenericOperatingSystem genericOperatingSystem;

    // Java field initializers run after the base constructor
    private void initFieldsOperatingSystemFactory() {
    this.logUtil = LogUtil.getInstance();
    this.genericOperatingSystem = NoOperatingSystem.NO_OPERATING_SYSTEM;
    }
    

    public static OperatingSystemFactory getInstance() {
        return OperatingSystemFactory.staticGet_instance();
    }
    

    public OperatingSystemFactory() {
        base();
        this.initFieldsOperatingSystemFactory();
    }
    

    public virtual GenericOperatingSystem getOperatingSystemInstance() {
        CommonStrings commonStrings = CommonStrings.getInstance();
        {
            string osString = new StringMaker().append("OperatingSystem Info: ").append(this.genericOperatingSystem.toString()).toString();
            JSystem.println(JString.ofString(osString));
            this.logUtil.putF(osString, this, commonStrings.GET_INSTANCE);
        } /* catch (Exception e): a thrown Java exception stops the program */
        return this.genericOperatingSystem;
    }
}

