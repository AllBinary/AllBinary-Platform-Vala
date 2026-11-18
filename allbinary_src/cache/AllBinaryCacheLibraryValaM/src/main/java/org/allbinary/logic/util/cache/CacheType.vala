/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2007 AllBinary 
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
// package org.allbinary.logic.util.cache
// import org.allbinary.logic.string.StringMaker

public class CacheType : JObject {
    private string vendor;
    private string type;

    // Java field initializers run after the base constructor
    private void initFieldsCacheType() {
    
    
    }
    

    public CacheType(string vendor, string type) {
        base();
        this.initFieldsCacheType();
        this.vendor = vendor;
        this.type = type;
    }
    

    public virtual string getVendor() {
        return this.vendor;
    }
    

    public virtual string getType() {
        return this.type;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("CacheType: Vendor: ");
        stringBuffer.append(this.getVendor());
        stringBuffer.append(" Type: ");
        stringBuffer.append(this.getType());
        return stringBuffer.toString();
    }
}

