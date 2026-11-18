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
// package org.allbinary.logic.system.security.crypt.jcehelper
// import java.security.spec.KeySpec
// import javax.crypto.spec.DESKeySpec
// import javax.crypto.spec.DESedeKeySpec
// import org.allbinary.TsUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.string.CommonStrings

public class KeySpecFactory : JObject {
    private static KeySpecFactory? instance;
    private static bool staticSet_instance = false;
    private static KeySpecFactory staticGet_instance() {
        if (!KeySpecFactory.staticSet_instance) {
            KeySpecFactory.staticSet_instance = true;
            KeySpecFactory.instance = new KeySpecFactory();
        }
        return KeySpecFactory.instance;
    }
    public string DES;
    public string DESEDE;
    public string BLOWFISH;

    // Java field initializers run after the base constructor
    private void initFieldsKeySpecFactory() {
    this.DES = "DES";
    this.DESEDE = "DESede";
    this.BLOWFISH = "Blowfish";
    }
    

    public static KeySpecFactory getInstance() {
        return KeySpecFactory.staticGet_instance();
    }
    

    public KeySpecFactory() {
        base();
        this.initFieldsKeySpecFactory();
    }
    

    public virtual KeySpec getInstance2(string algorithm, int8[] keyData) {
        {
            TsUtil tsUtil = TsUtil.getInstance();
            if (tsUtil.compareTo(algorithm, this.DES) == 0) {
                return new DESKeySpec(keyData);
            } else if (tsUtil.compareTo(algorithm, this.DESEDE) == 0) {
                return new DESedeKeySpec(keyData);
            } else {
                JSystem.fatal(new JException("RuntimeException", ""));
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

