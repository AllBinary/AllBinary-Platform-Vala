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
// package org.allbinary.logic.system.hardware.components
// import org.allbinary.string.CommonStrings

public class ComponentFactory : JObject {
    private static ComponentFactory? instance;
    private static bool staticSet_instance = false;
    private static ComponentFactory staticGet_instance() {
        if (!ComponentFactory.staticSet_instance) {
            ComponentFactory.staticSet_instance = true;
            ComponentFactory.instance = new ComponentFactory();
        }
        return ComponentFactory.instance;
    }
    public Component VGA;
    public Component IDE;
    public Component SCSI;
    public Component BRIDGE;
    public Component ETHERNET;
    public Component USB;
    public Component MULTIMEDIA;
    public Component PCI;
    public Component RAID;
    public Component SMBUS;
    public Component PIC;
    public Component Class;
    public Component UNKNOWN;

    // Java field initializers run after the base constructor
    private void initFieldsComponentFactory() {
    this.VGA = new Component("VGA");
    this.IDE = new Component("IDE");
    this.SCSI = new Component("SCSI");
    this.BRIDGE = new Component("bridge");
    this.ETHERNET = new Component("Ethernet");
    this.USB = new Component("USB");
    this.MULTIMEDIA = new Component("Multimedia");
    this.PCI = new Component("PCI");
    this.RAID = new Component("RAID");
    this.SMBUS = new Component("SMBus");
    this.PIC = new Component("PIC");
    this.Class = new Component("Class");
    this.UNKNOWN = new Component(CommonStrings.getInstance().UNKNOWN);
    }

    public ComponentFactory() {
        base();
        this.initFieldsComponentFactory();
    }
    

    public static ComponentFactory getInstance() {
        return ComponentFactory.staticGet_instance();
    }
}

