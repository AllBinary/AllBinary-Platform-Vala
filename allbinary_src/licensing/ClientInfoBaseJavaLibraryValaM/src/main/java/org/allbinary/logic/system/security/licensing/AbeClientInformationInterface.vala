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
// import org.allbinary.logic.system.os.GenericOperatingSystem
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList

public interface AbeClientInformationInterface : JObject {
    

    public abstract void init();
    

    public abstract GenericOperatingSystem getOperatingSystemInterface();
    

    public abstract string getName();
    

    public abstract string getSpecialName();
    

    public abstract string getVersion();
    

    public abstract string getLicenseId();
    

    public abstract BasicArrayList getLicenseServers();
    

    public abstract string getLicenseServer(int32 index);
    

    public abstract int32 getNumberOfLicenseServers();
    

    public abstract ABHashtable toHashtable();
    

    public abstract bool isSameId(string alicenseId);
    

    public abstract bool isLargerOrDifferentServerList(BasicArrayList vector);
    

    public abstract bool isHardSale();
    

    public abstract string toShortString();
}

