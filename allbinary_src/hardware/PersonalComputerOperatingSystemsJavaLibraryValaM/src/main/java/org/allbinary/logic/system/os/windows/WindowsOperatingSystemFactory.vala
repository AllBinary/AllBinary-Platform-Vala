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
// package org.allbinary.logic.system.os.windows
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
// import org.allbinary.logic.communication.log.config.type.LogConfigTypes
// import org.allbinary.logic.system.os.GenericOperatingSystem
// import org.allbinary.logic.system.os.NoOperatingSystem
// import org.allbinary.logic.system.os.OperatingSystems
// import org.allbinary.logic.system.os.SystemProperties
// import org.allbinary.string.CommonStrings

public class WindowsOperatingSystemFactory : JObject {
    private static WindowsOperatingSystemFactory? instance;
    private static bool staticSet_instance = false;
    private static WindowsOperatingSystemFactory staticGet_instance() {
        if (!WindowsOperatingSystemFactory.staticSet_instance) {
            WindowsOperatingSystemFactory.staticSet_instance = true;
            WindowsOperatingSystemFactory.instance = new WindowsOperatingSystemFactory();
        }
        return WindowsOperatingSystemFactory.instance;
    }
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsWindowsOperatingSystemFactory() {
    this.logUtil = LogUtil.getInstance();
    }
    

    public static WindowsOperatingSystemFactory getInstance() {
        return WindowsOperatingSystemFactory.staticGet_instance();
    }
    

    public WindowsOperatingSystemFactory() {
        base();
        this.initFieldsWindowsOperatingSystemFactory();
    }
    

    public virtual GenericOperatingSystem getOperatingSystemInstance() {
        {
            OperatingSystems operatingSystems = OperatingSystems.getInstance();
            string osName = SystemProperties.getInstance().getName();
            GenericOperatingSystem operatingSystemInterface = null;
            if (JString.compareTo(osName, operatingSystems.WINDOWS_NT) == 0) {
                operatingSystemInterface = new WindowsOS();
            } else if (JString.compareTo(osName, operatingSystems.WINDOWS_10) == 0) {
                operatingSystemInterface = new WindowsOS();
            } else if (JString.compareTo(osName, operatingSystems.WINDOWS_11) == 0) {
                operatingSystemInterface = new WindowsOS();
            } else if (JString.compareTo(osName, operatingSystems.WINDOWS2000) == 0) {
                operatingSystemInterface = new WindowsOS();
            } else if (JString.compareTo(osName, operatingSystems.WINDOWS_XP) == 0) {
                operatingSystemInterface = new WindowsOS();
            } else if (JString.compareTo(osName, operatingSystems.WINDOWS_VISTA) == 0) {
                operatingSystemInterface = new WindowsOS();
            } else {
                if (operatingSystems.isUnknownSpecificOSAllowed()) {
                    operatingSystemInterface = new WindowsOS();
                } else {
                    JSystem.fatal(new JException("Exception", JString.ofString("Specific Windows OS Not Supported: ") + JString.ofString(osName)));
                }
            }
            return operatingSystemInterface;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

