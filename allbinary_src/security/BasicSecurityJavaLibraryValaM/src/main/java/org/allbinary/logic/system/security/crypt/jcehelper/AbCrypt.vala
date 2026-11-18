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
// import java.security.Security
// import java.security.spec.KeySpec
// import javax.crypto.Cipher
// import javax.crypto.SecretKey
// import javax.crypto.SecretKeyFactory
// import org.allbinary.TsUtil
// import org.allbinary.init.crypt.jcehelper.CryptInterface
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.string.CommonStrings
// import org.bouncycastle.jce.provider.BouncyCastleProvider

public class AbCrypt : JObject, CryptInterface {
    private TsUtil tsUtil;
    private BaseSecretComposite secretComposite;
    private string algorithm;

    // Java field initializers run after the base constructor
    private void initFieldsAbCrypt() {
    this.tsUtil = TsUtil.getInstance();
    this.secretComposite = BaseSecretComposite.NULL_SECRET_COMPOSITE;
    
    }
    

    public AbCrypt(string algorithm) {
        base();
        this.initFieldsAbCrypt();
        this.algorithm = algorithm;
    }
    

    public virtual void init(string keyAsString) {
        CommonStrings commonStrings = CommonStrings.getInstance();
        {
            {
                Security.addProvider(new BouncyCastleProvider());
            } /* catch (Exception e): a thrown Java exception stops the program */
            int8[] key = this.tsUtil.getByteArray(keyAsString);
            KeySpec keySpec = KeySpecFactory.getInstance().getInstance2(this.algorithm, key);
            SecretKeyFactory keyFactory = SecretKeyFactory.getInstance1(this.algorithm);
            SecretKey secretKey = keyFactory.generateSecret(keySpec);
            Cipher cipher = Cipher.getInstance1(this.algorithm);
            this.secretComposite = new SecretComposite(secretKey, cipher, key);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual int8[] encrypt(int8[] array) {
        {
            return this.secretComposite.encrypt(array);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual int8[] decrypt(int8[] array) {
        {
            return this.secretComposite.decrypt(array);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

