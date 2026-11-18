/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

public class ClientInformationFactory : JObject {

    public ClientInformationFactory() {
        base();
    }
    

    public virtual ClientInformation getInstance() {
        LogUtil logUtil = LogUtil.getInstance();
        CommonStrings commonStrings = CommonStrings.getInstance();
        logUtil.putF(commonStrings.NOT_IMPLEMENTED, this, commonStrings.GET_INSTANCE);
        StringUtil stringUtil = StringUtil.getInstance();
        return new ClientInformation(stringUtil.NULL_STRING, stringUtil.NULL_STRING, stringUtil.NULL_STRING, stringUtil.NULL_STRING);
    }
}

