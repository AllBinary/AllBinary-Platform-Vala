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
// import javax.microedition.rms.RecordFilter

public class NullRecordFilter : JObject, RecordFilter {
    public static NullRecordFilter? NULL_RECORD_FILTER;
    private static bool staticSet_NULL_RECORD_FILTER = false;
    public static NullRecordFilter staticGet_NULL_RECORD_FILTER() {
        if (!NullRecordFilter.staticSet_NULL_RECORD_FILTER) {
            NullRecordFilter.staticSet_NULL_RECORD_FILTER = true;
            NullRecordFilter.NULL_RECORD_FILTER = new NullRecordFilter();
        }
        return NullRecordFilter.NULL_RECORD_FILTER;
    }

    public NullRecordFilter() {
        base();
    }
    

    public virtual bool matches(int8[] candidate) {
        return true;
    }
}

