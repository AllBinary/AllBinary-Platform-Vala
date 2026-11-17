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
// package org.allbinary.game.rand
// import java.util.Random
// import jsinterop.annotations.JsType
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import org.allbinary.logic.math.MathUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps

//Do not use in client code for money related things.
public class MyRandomFactory : JObject {
    private static MyRandomFactory? instance;
    private static bool staticSet_instance = false;
    private static MyRandomFactory staticGet_instance() {
        if (!MyRandomFactory.staticSet_instance) {
            MyRandomFactory.staticSet_instance = true;
            MyRandomFactory.instance = new MyRandomFactory();
        }
        return MyRandomFactory.instance;
    }
    private MathUtil mathUtil;
    private Random rand;

    // Java field initializers run after the base constructor
    private void initFieldsMyRandomFactory() {
    this.mathUtil = MathUtil.getInstance();
    
    }
    

    public static MyRandomFactory getInstance() {
        return MyRandomFactory.staticGet_instance();
    }
    

    public MyRandomFactory() {
        base();
        this.initFieldsMyRandomFactory();
        this.rand = new Random(JSystem.currentTimeMillis());
    }
    

    public virtual void setSeed(int64 seed) {
        this.rand = new Random(seed);
    }
    

    public virtual int32 getNextInt(int32 range) {
        int32 div = (Integer.MAX_VALUE / range) + 1;
        return (this.rand.nextInt() / div);
    }
    

    public virtual int32 getAbsoluteNextInt(int32 range) {
        return this.mathUtil.abs(this.getNextInt(range));
    }
    

    public virtual int32 getAbsoluteNextIntAllowZero(int32 range) {
        if (range == 0) {
            return 0;
        } else {
            return this.mathUtil.abs(this.getNextInt(range));
        }
    }
    

    public virtual void shuffle(int32[] intArray) {
        this.shuffleTotal(intArray, intArray.length * 7);
    }
    

    public virtual void shuffleTotal(int32[] intArray, int32 shuffleTotal) {
        int32 size = intArray.length;
        int32 randomIndex = 0;
        int32 randomIndex2 = 0;
        int32 value = 0;
        for (int32 index = 0; index < shuffleTotal; index++) {
            randomIndex = this.getAbsoluteNextIntAllowZero(size);
            randomIndex2 = this.getAbsoluteNextIntAllowZero(size);
            value = intArray[randomIndex];
            intArray[randomIndex] = intArray[randomIndex2];
            intArray[randomIndex2] = value;
        }
    }
    

    public virtual void shuffle2(int32[] intArray, int32[] intArray2) {
        this.shuffle2Total(intArray, intArray2, intArray.length * 7);
    }
    

    public virtual void shuffle2Total(int32[] intArray, int32[] intArray2, int32 shuffleTotal) {
        int32 size = intArray.length;
        int32 randomIndex = 0;
        int32 randomIndex2 = 0;
        int32 value = 0;
        int32 value2 = 0;
        for (int32 index = 0; index < shuffleTotal; index++) {
            randomIndex = this.getAbsoluteNextIntAllowZero(size);
            randomIndex2 = this.getAbsoluteNextIntAllowZero(size);
            value = intArray[randomIndex];
            value2 = intArray2[randomIndex];
            intArray[randomIndex] = intArray[randomIndex2];
            intArray[randomIndex2] = value;
            intArray2[randomIndex] = intArray2[randomIndex2];
            intArray2[randomIndex2] = value2;
        }
    }
    

    public static void main(string[] args) {
        MyRandomFactory randomFactory = MyRandomFactory.getInstance();
        StringMaker stringBuilder = new StringMaker();
        CommonSeps commonSeps = CommonSeps.getInstance();
        int32 size2 = 100;
        for (int32 index = 0; index < size2; index++) {
            stringBuilder.appendint(randomFactory.getAbsoluteNextInt(3)).append(commonSeps.COMMA);
        }
        JSystem.println(JString.ofString(stringBuilder.toString()));
        stringBuilder.@delete(0, stringBuilder.length());
        int32[] intArray = new int32[52];
        int32[] intArray2 = new int32[52];
        int32 size = intArray.length;
        for (int32 index = 0; index < size; index++) {
            intArray[index] = index;
            intArray2[index] = index;
        }
        randomFactory.shuffle2(intArray, intArray2);
        for (int32 index = 0; index < size; index++) {
            stringBuilder.appendint(intArray[index]).append(commonSeps.COMMA);
        }
        JSystem.println(JString.ofString(stringBuilder.toString()));
        stringBuilder.@delete(0, stringBuilder.length());
        for (int32 index = 0; index < size; index++) {
            stringBuilder.appendint(intArray2[index]).append(commonSeps.COMMA);
        }
        JSystem.println(JString.ofString(stringBuilder.toString()));
        bool found = false;
        for (int32 index = 0; index < size; index++) {
            found = false;
            for (int32 index2 = 0; index2 < size; index2++) {
                if (intArray[index2] == index) {
                    found = true;
                }
            }
            if (!found) {
                JSystem.fatal(new JException("RuntimeException", ""));
            }
        }
    }
}

