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
// import java.io.InputStream
// import java.io.InputStreamReader
// import org.allbinary.data.resource.ResourceUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

public class PartnerIdentifierFileUtil : JObject {
    private static PartnerIdentifierFileUtil? instance;
    private static bool staticSet_instance = false;
    private static PartnerIdentifierFileUtil staticGet_instance() {
        if (!PartnerIdentifierFileUtil.staticSet_instance) {
            PartnerIdentifierFileUtil.staticSet_instance = true;
            PartnerIdentifierFileUtil.instance = new PartnerIdentifierFileUtil();
        }
        return PartnerIdentifierFileUtil.instance;
    }
    public LogUtil logUtil;
    public string FILE_NAME;

    // Java field initializers run after the base constructor
    private void initFieldsPartnerIdentifierFileUtil() {
    this.logUtil = LogUtil.getInstance();
    this.FILE_NAME = "partner.txt";
    }

    public PartnerIdentifierFileUtil() {
        base();
        this.initFieldsPartnerIdentifierFileUtil();
    }
    

    public static PartnerIdentifierFileUtil getInstance() {
        return PartnerIdentifierFileUtil.staticGet_instance();
    }
    

    public virtual string @get() {
        {
            ResourceUtil resourceUtil = ResourceUtil.getInstance();
            InputStream inputStream = resourceUtil.getResourceAsStream(this.FILE_NAME);
            InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
            uint16[] chars = new uint16[30];
            int32 size = inputStreamReader.readBytes(chars);
            string partnerString = StringUtil.getInstance().EMPTY_STRING;
            if (size > 0) {
                partnerString = JString.fromChars(chars, 0, size);
            }
            inputStreamReader.close();
            return partnerString;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

