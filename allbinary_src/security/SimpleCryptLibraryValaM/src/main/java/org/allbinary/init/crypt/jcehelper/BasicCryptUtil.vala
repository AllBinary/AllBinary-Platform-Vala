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
// package org.allbinary.init.crypt.jcehelper
// import java.io.ByteArrayInputStream
// import java.io.ByteArrayOutputStream
// import java.io.InputStream
// import org.allbinary.TsUtil
// import org.allbinary.logic.communication.log.LogUtil

public class BasicCryptUtil : JObject {
    private static BasicCryptUtil? instance;
    private static bool staticSet_instance = false;
    private static BasicCryptUtil staticGet_instance() {
        if (!BasicCryptUtil.staticSet_instance) {
            BasicCryptUtil.staticSet_instance = true;
            BasicCryptUtil.instance = new BasicCryptUtil();
        }
        return BasicCryptUtil.instance;
    }
    public LogUtil logUtil;
    private TsUtil tsUtil;
    private string XML_START;

    // Java field initializers run after the base constructor
    private void initFieldsBasicCryptUtil() {
    this.logUtil = LogUtil.getInstance();
    this.tsUtil = TsUtil.getInstance();
    this.XML_START = "<?xml";
    }

    public BasicCryptUtil() {
        base();
        this.initFieldsBasicCryptUtil();
    }
    

    public static BasicCryptUtil getInstance() {
        return BasicCryptUtil.staticGet_instance();
    }
    

    public virtual InputStream getDecryptedInputStream(InputStream inputStream, CryptInterface cryptInterface) {
        ByteArrayOutputStream buffer = new ByteArrayOutputStream();
        int32 ch = 0;
        while (true) {
            ch = inputStream.read();
            if (ch == -1) {
                break;
            }
            buffer.write(ch);
        }
        int8[] decrypted = cryptInterface.decrypt(buffer.toByteArray());
        string decryptedString = decrypted;
        int32 index = JString.indexOf(decryptedString, this.XML_START);
        if (index > 0) {
            decryptedString = JString.substring(decryptedString, index);
        }
        return new ByteArrayInputStream(this.tsUtil.getByteArray(decryptedString));
    }
}

