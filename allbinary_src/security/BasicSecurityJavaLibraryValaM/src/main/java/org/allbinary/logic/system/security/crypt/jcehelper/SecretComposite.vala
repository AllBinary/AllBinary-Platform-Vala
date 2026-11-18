/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// import javax.crypto.Cipher
// import javax.crypto.SecretKey
// import org.allbinary.logic.java.byteutil.ByteUtil

public class SecretComposite : BaseSecretComposite {
    private ByteUtil byteUtil;
    private Cipher cipher;
    private SecretKey secretKey;
    private int8[] key;

    // Java field initializers run after the base constructor
    private void initFieldsSecretComposite() {
    this.byteUtil = ByteUtil.getInstance();
    
    
    
    }
    

    public SecretComposite(SecretKey secretKey, Cipher cipher, int8[] key) {
        base();
        this.initFieldsSecretComposite();
        this.secretKey = secretKey;
        this.cipher = cipher;
        this.key = key;
    }
    

    public override int8[] encrypt(int8[] array_parameter) {
        int8[] array = array_parameter;
        array = this.mutilate(array);
        this.cipher.init(Cipher.ENCRYPT_MODE, this.secretKey);
        return this.cipher.doFinal(array);
    }
    

    public override int8[] decrypt(int8[] array) {
        this.cipher.init(Cipher.DECRYPT_MODE, this.secretKey);
        return this.mutilate(this.cipher.doFinal(array));
    }
    

    private int8[] mutilate(int8[] array_parameter) {
        int8[] array = array_parameter;
        for (int32 index = 0; index < this.key.length; index++) {
            int8 value = this.key[index];
            if (((int32) (value)) < 8 && ((int32) (value)) > 0) {
                array = this.byteUtil.xorByte(array, ((int32) (value)));
            }
        }
        return array;
    }
}

