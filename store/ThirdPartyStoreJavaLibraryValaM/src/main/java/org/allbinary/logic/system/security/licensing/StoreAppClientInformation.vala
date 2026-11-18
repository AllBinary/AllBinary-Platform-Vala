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
// import org.allbinary.thirdparty.store.LongArrayIdentifierInterface

public class StoreAppClientInformation : AbeClientInformation, LongArrayIdentifierInterface {
    private int64[] longArrayIdentifier;

    // Java field initializers run after the base constructor
    private void initFieldsStoreAppClientInformation() {
    
    }
    

    public StoreAppClientInformation(string name, string version, string specialName, string shortName, int64[] longArrayIdentifier) {
        base(name, version, specialName, shortName);
        this.initFieldsStoreAppClientInformation();
        this.longArrayIdentifier = longArrayIdentifier;
    }
    

    public virtual int64[] getLongArrayIdentifier() {
        return this.longArrayIdentifier;
    }
}

