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

public class LockableFeature : JObject {
    private string name;

    // Java field initializers run after the base constructor
    private void initFieldsLockableFeature() {
    
    }
    

    public LockableFeature(string name) {
        base();
        this.initFieldsLockableFeature();
        this.name = name;
    }
    

    public virtual string getName() {
        return this.name;
    }
}

