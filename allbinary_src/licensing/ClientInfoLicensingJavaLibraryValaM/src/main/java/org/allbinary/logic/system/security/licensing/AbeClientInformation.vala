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
// import org.allbinary.business.init.LicenseInitInfo
// import org.allbinary.business.init.LicenseInitInfoUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringValidationUtil
// import org.allbinary.logic.system.os.OperatingSystemFactory
// import org.allbinary.string.CommonStrings

// This is the information sent to the license server
public class AbeClientInformation : ClientInformation {
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsAbeClientInformation() {
    this.logUtil = LogUtil.getInstance();
    }
    

    public AbeClientInformation(string name, string version, string specialName, string shortName) {
        base(name, version, specialName, shortName);
        this.initFieldsAbeClientInformation();
    }
    

    public override void init() {
        {
            this.setOperatingSystemInterface(OperatingSystemFactory.getInstance().getOperatingSystemInstance());
            LicenseInitInfo licenseInitInfo = LicenseInitInfoUtil.getInstance().read();
            this.setLicenseId(licenseInitInfo.getLicenseId());
            this.setLicenseServers(licenseInitInfo.getServerList());
            StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
            if (stringValidationUtil.isEmpty(this.getLicenseId())) {
                string NONE = "No License Id";
                this.setLicenseId(NONE);
            }
            CommonStrings commonStrings = CommonStrings.getInstance();
            PreLogUtil.put(new StringMaker().append("Special Name: ").append(this.getSpecialName()).toString(), this, commonStrings.CONSTRUCTOR);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

