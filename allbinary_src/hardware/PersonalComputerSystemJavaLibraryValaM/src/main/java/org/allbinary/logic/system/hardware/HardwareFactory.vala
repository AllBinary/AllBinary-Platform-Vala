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
// import org.allbinary.logic.system.os.GenericOperatingSystem
// import org.allbinary.logic.system.os.OperatingSystems
// import org.allbinary.logic.system.hardware.linux.LinuxHardware
// import org.allbinary.logic.system.hardware.windows.WindowsHardware

public class HardwareFactory : JObject {
    private static HardwareFactory? instance;
    private static bool staticSet_instance = false;
    private static HardwareFactory staticGet_instance() {
        if (!HardwareFactory.staticSet_instance) {
            HardwareFactory.staticSet_instance = true;
            HardwareFactory.instance = new HardwareFactory();
        }
        return HardwareFactory.instance;
    }
    

    public static HardwareFactory getInstance() {
        return HardwareFactory.staticGet_instance();
    }
    

    public HardwareFactory() {
        base();
    }
    

    public static HardwareInterface getInstance1(GenericOperatingSystem os) {
        {
            OperatingSystems operatingSystems = OperatingSystems.getInstance();
            if (JString.compareTo(os.getName(), operatingSystems.LINUX) == 0) {
                return ((HardwareInterface) new LinuxHardware());
            } else if (JString.indexOf(os.getName(), operatingSystems.WINDOWS) >= 0) {
                return ((HardwareInterface) new WindowsHardware());
            }
            JSystem.fatal(new JException("Exception", JString.ofString("No Hardware Imp for: ") + JString.ofString(os.getName())));
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

