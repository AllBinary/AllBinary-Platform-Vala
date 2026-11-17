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
// package org.allbinary.logic.system.hardware
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.os.GenericOperatingSystem
// import org.allbinary.string.CommonStrings

public class SystemHardwareFactory : JObject {
    private static SystemHardwareFactory? instance;
    private static bool staticSet_instance = false;
    private static SystemHardwareFactory staticGet_instance() {
        if (!SystemHardwareFactory.staticSet_instance) {
            SystemHardwareFactory.staticSet_instance = true;
            SystemHardwareFactory.instance = new SystemHardwareFactory();
        }
        return SystemHardwareFactory.instance;
    }
    public LogUtil logUtil;
    private CommonStrings commonStrings;
    private HardwareInterface hardwareInterface;

    // Java field initializers run after the base constructor
    private void initFieldsSystemHardwareFactory() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.hardwareInterface = NoHardware.getInstance();
    }
    

    public static SystemHardwareFactory getInstance() {
        return SystemHardwareFactory.staticGet_instance();
    }
    

    public SystemHardwareFactory() {
        base();
        this.initFieldsSystemHardwareFactory();
    }
    

    public virtual HardwareInterface getInstance1(GenericOperatingSystem operatingSystemInterface) {
        {
            if (this.hardwareInterface == NoHardware.getInstance()) {
                this.hardwareInterface = HardwareFactory.getInstance().getInstance1(operatingSystemInterface);
            }
            this.logUtil.putF("Found Hardware", this, this.commonStrings.CONSTRUCTOR);
        } /* catch (Exception e): a thrown Java exception stops the program */
        return this.hardwareInterface;
    }
    

    public static string static_toString() {
        SystemHardwareFactory systemHardwareFactory = SystemHardwareFactory.getInstance();
        StringMaker osBuffer = new StringMaker();
        osBuffer.append("Hardware Info: \n");
        if (systemHardwareFactory.hardwareInterface != null) {
            osBuffer.append(systemHardwareFactory.hardwareInterface.toString());
        } else {
            osBuffer.append(StringUtil.getInstance().NULL_STRING);
        }
        return osBuffer.toString();
    }
}

