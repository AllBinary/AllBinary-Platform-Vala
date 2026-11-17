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
// package org.allbinary.logic.java.byteutil

public class ByteUtil : JObject {
    private static ByteUtil? instance;
    private static bool staticSet_instance = false;
    private static ByteUtil staticGet_instance() {
        if (!ByteUtil.staticSet_instance) {
            ByteUtil.staticSet_instance = true;
            ByteUtil.instance = new ByteUtil();
        }
        return ByteUtil.instance;
    }
    

    public static ByteUtil getInstance() {
        return ByteUtil.staticGet_instance();
    }
    

    public ByteUtil() {
        base();
    }
    

    public virtual int8[] xor(int8[] array, int8 mask) {
        int8[] bytes = new int8[array.length];
        int32 size = array.length;
        int32 index = 0;
        int8 currentByte = 0;
        while (index < size) {
            currentByte = array[index];
            bytes[index] = ((int8) ((currentByte ^ mask)));
            index++;
        }
        return bytes;
    }
    

    public virtual int8[] not(int8[] array) {
        int8[] bytes = new int8[array.length];
        int32 size = array.length;
        int32 index = 0;
        while (index < size) {
            bytes[index] = ((int8) (~array[index]));
            index++;
        }
        return bytes;
    }
    

    public virtual int8[] xorByte(int8[] array, int32 index) {
        int8 mask = 0;
        if (index == 0) {
            mask = 1;
        }
        if (index == 1) {
            mask = 2;
        }
        if (index == 2) {
            mask = 4;
        }
        if (index == 3) {
            mask = 8;
        }
        if (index == 4) {
            mask = 16;
        }
        if (index == 5) {
            mask = 32;
        }
        if (index == 6) {
            mask = 64;
        }
        if (index == 7) {
            mask = ((int8) (-127));
        }
        return this.xor(array, mask);
    }
    

    public virtual bool compare(int8[] newByteArray, int8[] oldByteArray) {
        if (newByteArray.length != oldByteArray.length) {
            return false;
        } else {
        }
        int32 size = newByteArray.length;
        for (int32 index = 0; index < size; index++) {
            if (newByteArray[index] != oldByteArray[index]) {
                return false;
            }
        }
        return true;
    }
    

    public virtual bool compareWithStats(int8[] newByteArray, int32 newSize, int8[] oldByteArray, int32[] stats) {
        if (newSize != oldByteArray.length) {
            stats[0] = -1;
            stats[2] = newSize;
            stats[3] = oldByteArray.length;
            return false;
        } else {
            stats[0] = newSize;
        }
        stats[1] = 0;
        int32 size = newSize;
        for (int32 index = 0; index < size; index++) {
            if (newByteArray[index] != oldByteArray[index]) {
                return false;
            }
            stats[1]++;
        }
        return true;
    }
}

