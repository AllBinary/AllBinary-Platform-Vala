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
// package org.allbinary
// import javax.microedition.lcdui.Displayable
// import javax.microedition.lcdui.Form
// import javax.microedition.rms.InvalidRecordIDException
// import javax.microedition.rms.RecordStore
// import javax.microedition.rms.RecordStoreException
// import javax.microedition.rms.RecordStoreNotOpenException
// import org.allbinary.logic.NullUtil

//J2ME
public class TsUtil : JObject {
    private static TsUtil? instance;
    private static bool staticSet_instance = false;
    private static TsUtil staticGet_instance() {
        if (!TsUtil.staticSet_instance) {
            TsUtil.staticSet_instance = true;
            TsUtil.instance = new TsUtil();
        }
        return TsUtil.instance;
    }

    public TsUtil() {
        base();
    }
    

    public static TsUtil getInstance() {
        return TsUtil.staticGet_instance();
    }
    

    public virtual int32 hashCode1(JObject anyType) {
        return anyType.hashCode();
    }
    

    public virtual void waitFor(JObject any, int64 timeoutMillis) {
        JObject anyType = ((JObject) any);
        anyType.wait(timeoutMillis);
    }
    

    public virtual int8[] getRecord(JObject anyType, int32 recordId) {
        RecordStore recordStore = ((RecordStore) anyType);
        int8[] data = null;
        {
            data = new int8[recordStore.getRecordSize(recordId)];
            recordStore.getRecord(recordId, data, 0);
        }
        return (data.length < 1 ? NullUtil.getInstance().NULL_BYTE_ARRAY : data);
    }
    

    public virtual int32 compareTo(string a, string b) {
        return JString.compareTo(a, b);
    }
    

    public virtual bool equalIgnoreCase(string a, string b) {
        return (a.down() == b.down());
    }
    

    public virtual bool equalsNotstring(JObject anyType, JObject object2) {
        return anyType.equals(object2);
    }
    

    public virtual int32 toNumberFromChar(uint16 value) {
        return ((int32) (value));
    }
    

    public virtual int32 toNumber(int32 value) {
        return value;
    }
    

    public virtual int8[] getByteArray(string string) {
        return JString.getBytes(string);
    }
    

    public virtual bool isItemListener(Displayable owner) {
        if ((owner is Form)) {
            return true;
        } else {
            return false;
        }
    }
    

    public virtual void printAvailableMethods(JObject anyType) {
    }
    

    public virtual void gc() {
        System.gc();
    }
}

