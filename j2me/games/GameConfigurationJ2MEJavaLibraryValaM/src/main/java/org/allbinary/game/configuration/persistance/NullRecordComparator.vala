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
// import javax.microedition.rms.RecordComparator

public class NullRecordComparator : JObject, RecordComparator {
    public static NullRecordComparator? NULL_RECORD_COMPARATOR;
    private static bool staticSet_NULL_RECORD_COMPARATOR = false;
    public static NullRecordComparator staticGet_NULL_RECORD_COMPARATOR() {
        if (!NullRecordComparator.staticSet_NULL_RECORD_COMPARATOR) {
            NullRecordComparator.staticSet_NULL_RECORD_COMPARATOR = true;
            NullRecordComparator.NULL_RECORD_COMPARATOR = new NullRecordComparator();
        }
        return NullRecordComparator.NULL_RECORD_COMPARATOR;
    }

    public NullRecordComparator() {
        base();
    }
    

    public virtual int32 compare(int8[] rec1, int8[] rec2) {
        return 0;
    }
}

