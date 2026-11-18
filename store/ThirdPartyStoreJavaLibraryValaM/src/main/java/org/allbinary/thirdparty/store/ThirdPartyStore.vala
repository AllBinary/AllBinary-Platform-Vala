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
// package org.allbinary.thirdparty.store
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

public class ThirdPartyStore : JObject {
    private bool authorized;
    private string name;

    // Java field initializers run after the base constructor
    private void initFieldsThirdPartyStore() {
    this.authorized = false;
    
    }
    

    public ThirdPartyStore(string name) {
        base();
        this.initFieldsThirdPartyStore();
        this.name = name;
    }
    

    public virtual void authorize(AbeClientInformationInterface clientInformationInterface) {
    }
    

    public virtual bool isAuthorized() {
        return this.authorized;
    }
    

    public virtual void setAuthorized(bool authorized) {
        this.authorized = authorized;
    }
    

    public virtual string getName() {
        return this.name;
    }
}

