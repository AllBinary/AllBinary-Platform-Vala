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
// package org.allbinary.resources
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable

public class KeyValueFactory : JObject {
    private static KeyValueFactory? instance;
    private static bool staticSet_instance = false;
    private static KeyValueFactory staticGet_instance() {
        if (!KeyValueFactory.staticSet_instance) {
            KeyValueFactory.staticSet_instance = true;
            KeyValueFactory.instance = new KeyValueFactory();
        }
        return KeyValueFactory.instance;
    }
    public ABHashtable MAP;

    // Java field initializers run after the base constructor
    private void initFieldsKeyValueFactory() {
    this.MAP = StdUtil.getInstance().createHashtable();
    }

    public KeyValueFactory() {
        base();
        this.initFieldsKeyValueFactory();
    }
    

    public static KeyValueFactory getInstance() {
        return KeyValueFactory.staticGet_instance();
    }
    

    public virtual string @get(string key) {
        if (!this.MAP.containsKey(((JObject) key))) {
            return key;
        }
        return JString.unbox(this.MAP.@get(((JObject) key)));
    }
}

