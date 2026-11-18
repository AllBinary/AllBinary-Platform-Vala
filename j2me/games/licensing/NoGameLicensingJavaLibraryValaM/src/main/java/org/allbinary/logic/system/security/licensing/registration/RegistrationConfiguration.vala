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
// package org.allbinary.logic.system.security.licensing.registration
// import org.allbinary.logic.string.StringMaker

public class RegistrationConfiguration : JObject {
    private static RegistrationConfiguration? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static RegistrationConfiguration staticGet_SINGLETON() {
        if (!RegistrationConfiguration.staticSet_SINGLETON) {
            RegistrationConfiguration.staticSet_SINGLETON = true;
            RegistrationConfiguration.SINGLETON = new RegistrationConfiguration();
        }
        return RegistrationConfiguration.SINGLETON;
    }
    private string registrationCode;
    public string NAME;

    // Java field initializers run after the base constructor
    private void initFieldsRegistrationConfiguration() {
    this.registrationCode = "No Registration Code";
    this.NAME = "registrationid";
    }
    

    public RegistrationConfiguration() {
        base();
        this.initFieldsRegistrationConfiguration();
    }
    

    public static RegistrationConfiguration getInstance() {
        return RegistrationConfiguration.staticGet_SINGLETON();
    }
    

    private void read() {
    }
    

    public virtual void write() {
    }
    

    public override string toString() {
        return new StringMaker().append("Registration Code: ").append(this.getRegistrationCode()).toString();
    }
    

    public virtual void setRegistrationCode(string registrationCode) {
        this.registrationCode = registrationCode;
    }
    

    public virtual string getRegistrationCode() {
        return this.registrationCode;
    }
}

