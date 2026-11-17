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
// package org.allbinary.logic.system.hardware.linux
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.hardware.HardwareInterface
// import org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface
// import org.allbinary.logic.system.hardware.components.interfaces.CpuInterface
// import org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface
// import org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface
// import org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface
// import org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface
// import org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface
// import org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface
// import org.allbinary.logic.system.hardware.components.interfaces.MediaInterface
// import org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface
// import org.allbinary.logic.system.hardware.components.interfaces.UsbInterface
// import org.allbinary.logic.system.hardware.components.interfaces.VideoInterface
// import org.allbinary.util.ABHashtable

public class LinuxHardware : JObject, HardwareInterface {
    

    public LinuxHardware() {
        base();
    }
    

    public virtual MediaInterface getMultimedia(int32 index) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual BridgeInterface getBridge(int32 index) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual CpuInterface getCpu(int32 index) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual EthernetInterface getEthernet(int32 index) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual FireWireInterface getFireWire(int32 index) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual HardDriveControllerInterface getHardDriveController(int32 index) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual HardDriveInterface getHardDrive(int32 index) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual MachineAccessControlAddressInterface getMachineAccessControlAddress(int32 index) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual MonitorInterface getMonitor(int32 index) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual UsbInterface getUsb(int32 index) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual VideoInterface getVideo(int32 index) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual HardwareComponentInterface getComponent(int32 index) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public override string toString() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public virtual bool compareTo(HardwareInterface hardwareInterface) {
        return true;
    }
    

    public virtual ABHashtable difference(HardwareInterface hardwareInterface) {
        return StdUtil.getInstance().NULL_TABLE;
    }
    

    public virtual bool isNextHardware(string nextLine) {
        return false;
    }
}

