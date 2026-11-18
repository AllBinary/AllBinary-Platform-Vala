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
// package org.allbinary.business.init
// import org.allbinary.debug.DebugFactory
// import org.allbinary.debug.NoDebug
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class LicenseInitInfo : JObject {
    private string id;
    private BasicArrayList serverList;

    // Java field initializers run after the base constructor
    private void initFieldsLicenseInitInfo() {
    this.id = StringUtil.getInstance().EMPTY_STRING;
    this.serverList = new BasicArrayListD();
    }
    

    public LicenseInitInfo() {
        base();
        this.initFieldsLicenseInitInfo();
    }
    

    public virtual string getLicenseId() {
        return this.id;
    }
    

    public virtual string getServer(int32 index) {
        return JString.unbox(this.serverList.@get(index));
    }
    

    public virtual int32 getNumberOfServers() {
        return this.serverList.size();
    }
    

    public virtual void setLicenseId(string value) {
        this.id = value;
    }
    

    public virtual void clearServers() {
        this.serverList.clear();
    }
    

    public virtual void setServer(string value, int32 index) {
        this.serverList.addAt(index, JString.box(value));
    }
    

    public virtual void addServer(string value) {
        this.serverList.add(JString.box(value));
    }
    

    public virtual BasicArrayList getServerList() {
        return this.serverList;
    }
    

    public virtual void setServerList(BasicArrayList servers) {
        if (DebugFactory.getInstance() == NoDebug.getInstance()) {
            this.serverList = servers;
        }
    }
}

