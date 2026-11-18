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
// package org.allbinary.game.configuration.persistance
// import javax.microedition.rms.RecordStore

public class NullRecordStore : RecordStore {
    public static NullRecordStore? NULL_RECORD_STORE;
    private static bool staticSet_NULL_RECORD_STORE = false;
    public static NullRecordStore staticGet_NULL_RECORD_STORE() {
        if (!NullRecordStore.staticSet_NULL_RECORD_STORE) {
            NullRecordStore.staticSet_NULL_RECORD_STORE = true;
            NullRecordStore.NULL_RECORD_STORE = new NullRecordStore();
        }
        return NullRecordStore.NULL_RECORD_STORE;
    }

    public NullRecordStore() {
        base();
    }
}

