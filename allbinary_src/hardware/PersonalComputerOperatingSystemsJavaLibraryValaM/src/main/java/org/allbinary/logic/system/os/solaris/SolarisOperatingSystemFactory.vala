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
// package org.allbinary.logic.system.os.solaris
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
// import org.allbinary.logic.communication.log.config.type.LogConfigTypes
// import org.allbinary.logic.system.os.GenericOperatingSystem
// import org.allbinary.logic.system.os.NoOperatingSystem
// import org.allbinary.logic.system.os.OperatingSystems
// import org.allbinary.logic.system.os.SystemProperties
// import org.allbinary.string.CommonStrings

public class SolarisOperatingSystemFactory : JObject {
    private static SolarisOperatingSystemFactory? instance;
    private static bool staticSet_instance = false;
    private static SolarisOperatingSystemFactory staticGet_instance() {
        if (!SolarisOperatingSystemFactory.staticSet_instance) {
            SolarisOperatingSystemFactory.staticSet_instance = true;
            SolarisOperatingSystemFactory.instance = new SolarisOperatingSystemFactory();
        }
        return SolarisOperatingSystemFactory.instance;
    }
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsSolarisOperatingSystemFactory() {
    this.logUtil = LogUtil.getInstance();
    }
    

    public static SolarisOperatingSystemFactory getInstance() {
        return SolarisOperatingSystemFactory.staticGet_instance();
    }
    

    public SolarisOperatingSystemFactory() {
        base();
        this.initFieldsSolarisOperatingSystemFactory();
    }
    

    public virtual GenericOperatingSystem getOperatingSystemInstance() {
        {
            OperatingSystems operatingSystems = OperatingSystems.getInstance();
            string osName = SystemProperties.getInstance().getName();
            GenericOperatingSystem operatingSystemInterface = null;
            if (JString.compareTo(osName, operatingSystems.SOLARIS) == 0) {
                operatingSystemInterface = new SolarisOS();
            } else {
                if (operatingSystems.isUnknownSpecificOSAllowed()) {
                    operatingSystemInterface = new SolarisOS();
                } else {
                    JSystem.fatal(new JException("Exception", JString.ofString("Specific Solaris OS Not Supported: ") + JString.ofString(osName)));
                }
            }
            return operatingSystemInterface;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

