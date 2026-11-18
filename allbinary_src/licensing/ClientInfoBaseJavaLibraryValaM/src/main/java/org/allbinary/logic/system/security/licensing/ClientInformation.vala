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
// package org.allbinary.logic.system.security.licensing
// import org.allbinary.TsUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.hardware.HardwareInterface
// import org.allbinary.logic.system.hardware.SystemHardwareFactory
// import org.allbinary.logic.system.os.GenericOperatingSystem
// import org.allbinary.logic.system.os.NoOperatingSystem
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListUtil
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable

// This is the information sent to the license server
public class ClientInformation : JObject, AbeClientInformationInterface {
    private GenericOperatingSystem operatingSystemInterface;
    private TsUtil tsUtil;
    private string name;
    private string shortName;
    private string version;
    private string specialName;
    private bool hardSale;
    private string licenseId;
    private BasicArrayList licenseServers;

    // Java field initializers run after the base constructor
    private void initFieldsClientInformation() {
    this.operatingSystemInterface = NoOperatingSystem.NO_OPERATING_SYSTEM;
    this.tsUtil = TsUtil.getInstance();
    
    
    
    
    this.hardSale = true;
    this.licenseId = StringUtil.getInstance().EMPTY_STRING;
    this.licenseServers = BasicArrayListUtil.getInstance().getImmutableInstance();
    }
    

    public ClientInformation(string name, string version, string specialName, string shortName) {
        base();
        this.initFieldsClientInformation();
        this.name = name;
        this.version = version;
        this.specialName = specialName;
        this.shortName = new StringMaker().append(shortName).append(CommonSeps.getInstance().UNDERSCORE).append(version).toString();
        this.init();
    }
    

    public virtual void init() {
    }
    

    public virtual GenericOperatingSystem getOperatingSystemInterface() {
        return this.operatingSystemInterface;
    }
    

    public virtual string getName() {
        return this.name;
    }
    

    public virtual string getSpecialName() {
        return this.specialName;
    }
    

    public virtual string getVersion() {
        return this.version;
    }
    

    public virtual string getLicenseId() {
        return this.licenseId;
    }
    

    public virtual BasicArrayList getLicenseServers() {
        return this.licenseServers;
    }
    

    public virtual string getLicenseServer(int32 index) {
        return JString.unbox(this.licenseServers.objectArray[index]);
    }
    

    public virtual int32 getNumberOfLicenseServers() {
        return this.licenseServers.size();
    }
    

    public virtual ABHashtable toHashtable() {
        AbeClientInformationData abeClientInformationData = AbeClientInformationData.getInstance();
        GenericOperatingSystem genericOperatingSystem = this.getOperatingSystemInterface();
        ABHashtable clientInfoHashtable = StdUtil.getInstance().createHashtable();
        clientInfoHashtable.put(JString.box(abeClientInformationData.NAME), JString.box(this.name));
        clientInfoHashtable.put(JString.box(abeClientInformationData.VERSION), JString.box(this.version));
        clientInfoHashtable.put(JString.box(abeClientInformationData.SPECIALNAME), JString.box(this.specialName));
        clientInfoHashtable.put(JString.box(abeClientInformationData.LICENSEID), this.getLicenseId());
        clientInfoHashtable.put(JString.box(abeClientInformationData.OSNAME), JString.box(genericOperatingSystem.getName()));
        clientInfoHashtable.put(JString.box(abeClientInformationData.OSARCH), JString.box(genericOperatingSystem.getArch()));
        clientInfoHashtable.put(JString.box(abeClientInformationData.OSVERSION), genericOperatingSystem.getVersion());
        clientInfoHashtable.put(JString.box(abeClientInformationData.OS), JString.box(genericOperatingSystem.toString()));
        HardwareInterface hardwareInterface = SystemHardwareFactory.getInstance().getInstance1(genericOperatingSystem);
        string hardwareString = hardwareInterface.toString();
        clientInfoHashtable.put(JString.box(abeClientInformationData.HARDWARE), JString.box(hardwareString));
        return clientInfoHashtable;
    }
    

    public virtual bool isSameId(string alicenseId) {
        if (this.tsUtil.compareTo(this.getLicenseId(), alicenseId) == 0) {
            return true;
        } else {
            return false;
        }
    }
    

    public virtual bool isLargerOrDifferentServerList(BasicArrayList list) {
        int32 size = list.size() - 1;
        int32 currentSize = this.licenseServers.size() - 1;
        if (size > currentSize) {
            return true;
        }
        for (int32 index = size; index >= 0; index--) {
            string newServerName = JString.unbox(list.objectArray[index]);
            for (int32 index2 = currentSize; index2 >= 0; index2--) {
                string nextOldServerName = JString.unbox(this.licenseServers.objectArray[index]);
                if (this.tsUtil.compareTo(newServerName, nextOldServerName) != 0) {
                    return true;
                }
            }
        }
        return false;
    }
    

    public virtual void setHardSale(bool hardSale) {
        this.hardSale = hardSale;
    }
    

    public virtual bool isHardSale() {
        return this.hardSale;
    }
    

    public virtual void setOperatingSystemInterface(GenericOperatingSystem operatingSystemInterface) {
        this.operatingSystemInterface = operatingSystemInterface;
    }
    

    public virtual void setLicenseId(string licenseId) {
        this.licenseId = licenseId;
    }
    

    public virtual void setLicenseServers(BasicArrayList licenseServers) {
        this.licenseServers = licenseServers;
    }
    

    public virtual string toShortString() {
        return this.shortName;
    }
}

