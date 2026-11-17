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
// package org.allbinary.logic.math
// import org.allbinary.logic.string.StringMaker

public class PrimitiveLongSingleton : JObject {
    private static PrimitiveLongSingleton? instance;
    private static bool staticSet_instance = false;
    private static PrimitiveLongSingleton staticGet_instance() {
        if (!PrimitiveLongSingleton.staticSet_instance) {
            PrimitiveLongSingleton.staticSet_instance = true;
            PrimitiveLongSingleton.instance = new PrimitiveLongSingleton();
        }
        return PrimitiveLongSingleton.instance;
    }
    public uint16[] UNK;
    public int8[] NUMBER_ARRAY;
    public uint16[] NUMBER_CHAR_ARRAY;
    public uint16[,] NUMBER_CHAR_ARRAYS;
    public uint16[] ZERO;

    // Java field initializers run after the base constructor
    private void initFieldsPrimitiveLongSingleton() {
    this.UNK = new uint16[] {((uint16) 'U'), ((uint16) 'n'), ((uint16) 'k')};
    this.NUMBER_ARRAY = new int8[] {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    this.NUMBER_CHAR_ARRAY = new uint16[] {((uint16) '0'), ((uint16) '1'), ((uint16) '2'), ((uint16) '3'), ((uint16) '4'), ((uint16) '5'), ((uint16) '6'), ((uint16) '7'), ((uint16) '8'), ((uint16) '9')};
    this.NUMBER_CHAR_ARRAYS = new uint16[,] {{((uint16) '0')}, {((uint16) '1')}, {((uint16) '2')}, {((uint16) '3')}, {((uint16) '4')}, {((uint16) '5')}, {((uint16) '6')}, {((uint16) '7')}, {((uint16) '8')}, {((uint16) '9')}};
    this.ZERO = new uint16[] {this.NUMBER_CHAR_ARRAY[0]};
    }

    public PrimitiveLongSingleton() {
        base();
        this.initFieldsPrimitiveLongSingleton();
    }
    

    public static PrimitiveLongSingleton getInstance() {
        return PrimitiveLongSingleton.staticGet_instance();
    }
    

    public virtual int8 getNumberFromChar(uint16 numberAsChar) {
        int32 size = this.NUMBER_CHAR_ARRAY.length;
        for (int32 index = 0; index < size; index++) {
            if (this.NUMBER_CHAR_ARRAY[index] == numberAsChar) {
                return this.NUMBER_ARRAY[index];
            }
        }
        JSystem.fatal(new JException("Exception", new StringMaker().append("numberAsChar was not in array: ").appendchar(numberAsChar).toString()));
    }
}

