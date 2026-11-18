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
// import org.allbinary.logic.NullUtil

public class BaseSecretComposite : JObject {
    public static BaseSecretComposite? NULL_SECRET_COMPOSITE;
    private static bool staticSet_NULL_SECRET_COMPOSITE = false;
    public static BaseSecretComposite staticGet_NULL_SECRET_COMPOSITE() {
        if (!BaseSecretComposite.staticSet_NULL_SECRET_COMPOSITE) {
            BaseSecretComposite.staticSet_NULL_SECRET_COMPOSITE = true;
            BaseSecretComposite.NULL_SECRET_COMPOSITE = new BaseSecretComposite();
        }
        return BaseSecretComposite.NULL_SECRET_COMPOSITE;
    }

    public BaseSecretComposite() {
        base();
    }
    

    public virtual int8[] encrypt(int8[] array) {
        return NullUtil.getInstance().NULL_BYTE_ARRAY;
    }
    

    public virtual int8[] decrypt(int8[] array) {
        return NullUtil.getInstance().NULL_BYTE_ARRAY;
    }
}

