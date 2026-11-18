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
// import org.allbinary.TsUtil
// import org.allbinary.init.crypt.jcehelper.CryptInterface
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.java.byteutil.ByteUtil
// import org.allbinary.string.CommonStrings

public class BasicCrypt : JObject, CryptInterface {
    private ByteUtil byteUtil;
    private int8[] key;

    // Java field initializers run after the base constructor
    private void initFieldsBasicCrypt() {
    this.byteUtil = ByteUtil.getInstance();
    
    }
    

    public BasicCrypt(string keyAsString) {
        base();
        this.initFieldsBasicCrypt();
        int8[] key = NullUtil.getInstance().NULL_BYTE_ARRAY;
        {
            key = TsUtil.getInstance().getByteArray(keyAsString);
        } /* catch (Exception e): a thrown Java exception stops the program */
        this.key = key;
    }
    

    public virtual int8[] encrypt(int8[] array) {
        {
            return this.mutilate(array);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual int8[] decrypt(int8[] array) {
        {
            return this.mutilate(array);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual int8[] mutilate(int8[] array_parameter) {
        int8[] array = array_parameter;
        int8 value = 0;
        for (int32 index = 0; index < this.key.length; index++) {
            value = this.key[index];
            array = this.byteUtil.xor(array, value);
        }
        return array;
    }
}

