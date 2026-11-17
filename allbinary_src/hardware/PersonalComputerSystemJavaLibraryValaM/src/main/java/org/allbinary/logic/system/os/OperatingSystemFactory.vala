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
// import org.allbinary.logic.communication.log.Log
// import org.allbinary.logic.communication.log.LogFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
// import org.allbinary.logic.communication.log.config.type.LogConfigTypes
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.os.linux.LinuxOperatingSystemFactory
// import org.allbinary.logic.system.os.solaris.SolarisOperatingSystemFactory
// import org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory
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
    private CommonStrings commonStrings;
    private GenericOperatingSystem genericOperatingSystem;
    private bool hasDetected;

    // Java field initializers run after the base constructor
    private void initFieldsOperatingSystemFactory() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.genericOperatingSystem = NoOperatingSystem.NO_OPERATING_SYSTEM;
    this.hasDetected = false;
    }
    

    public static OperatingSystemFactory getInstance() {
        return OperatingSystemFactory.staticGet_instance();
    }
    

    public OperatingSystemFactory() {
        base();
        this.initFieldsOperatingSystemFactory();
    }
    

    public virtual GenericOperatingSystem getOperatingSystemInstance() {
        {
            OperatingSystems operatingSystems = OperatingSystems.getInstance();
            SystemProperties systemProperties = SystemProperties.getInstance();
            string osName = systemProperties.getName();
            systemProperties.getArch();
            systemProperties.getVersion();
            if (!this.hasDetected) {
                this.logUtil.putF(JString.ofString("osName: ") + JString.ofString(osName), this, this.commonStrings.GET_INSTANCE);
                this.hasDetected = true;
                if (JString.indexOf(osName, operatingSystems.LINUX) >= 0) {
                    if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                        this.logUtil.putF("Found a Linux OS", this, this.commonStrings.GET_INSTANCE);
                    }
                    this.genericOperatingSystem = LinuxOperatingSystemFactory.getInstance().getOperatingSystemInstance();
                } else if (JString.indexOf(osName, operatingSystems.WINDOWS) >= 0) {
                    if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                        this.logUtil.putF("Found a Windows OS", this, this.commonStrings.GET_INSTANCE);
                    }
                    this.genericOperatingSystem = WindowsOperatingSystemFactory.getInstance().getOperatingSystemInstance();
                } else if (JString.indexOf(osName, operatingSystems.SOLARIS) >= 0) {
                    if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                        this.logUtil.putF("Found a Solaris OS", this, this.commonStrings.GET_INSTANCE);
                    }
                    this.genericOperatingSystem = SolarisOperatingSystemFactory.getInstance().getOperatingSystemInstance();
                } else {
                    JSystem.fatal(new JException("Exception", new StringMaker().append("OS Not Supported: ").append(osName).toString()));
                }
                Log log = LogFactory.getInstanceF(new StringMaker().append("OperatingSystem Info: ").append(StringUtil.getInstance().toString1(this.genericOperatingSystem)).toString(), this, this.commonStrings.GET_INSTANCE);
                JSystem.println(JString.ofString(log.toString()));
                this.logUtil.putL(log);
            }
            return this.genericOperatingSystem;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

