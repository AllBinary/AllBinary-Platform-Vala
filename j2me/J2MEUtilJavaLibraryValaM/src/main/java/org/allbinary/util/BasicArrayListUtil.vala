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
// package org.allbinary.util
// import jsinterop.annotations.JsType
// import org.allbinary.game.rand.MyRandomFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonPhoneStrings
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsProperty

public class BasicArrayListUtil : JObject {
    private static BasicArrayListUtil? instance;
    private static bool staticSet_instance = false;
    private static BasicArrayListUtil staticGet_instance() {
        if (!BasicArrayListUtil.staticSet_instance) {
            BasicArrayListUtil.staticSet_instance = true;
            BasicArrayListUtil.instance = new BasicArrayListUtil();
        }
        return BasicArrayListUtil.instance;
    }
    public BasicArrayList[,] NULL_ARRAY_OF_ARRAY;
    private MyRandomFactory myRandomFactory;
    private BasicArrayList immutableInstance;

    // Java field initializers run after the base constructor
    private void initFieldsBasicArrayListUtil() {
    this.NULL_ARRAY_OF_ARRAY = new BasicArrayList[0, 0];
    this.myRandomFactory = MyRandomFactory.getInstance();
    this.immutableInstance = new ImmutableBasicArrayList("Immutable", 0);
    }

    public BasicArrayListUtil() {
        base();
        this.initFieldsBasicArrayListUtil();
    }
    

    public static BasicArrayListUtil getInstance() {
        return BasicArrayListUtil.staticGet_instance();
    }
    

    public virtual JObject getRandom(BasicArrayList list) {
        int32 i_random = this.getRandomIndex(list);
        return list.objectArray[i_random];
    }
    

    public virtual int32 getRandomIndex(BasicArrayList list) {
        return this.myRandomFactory.getAbsoluteNextInt(list.size());
    }
    

    public virtual void reverse(BasicArrayList list) {
        int32 lastMinusOneIndex = list.size() - 2;
        JObject temp = null;
        int32 size = lastMinusOneIndex / 2;
        int32 secondSwapIndex = 0;
        for (int32 index = 0; index <= size; index++) {
            secondSwapIndex = lastMinusOneIndex - index;
            temp = list.removeAt(index);
            list.addAt(index, list.removeAt(secondSwapIndex));
            list.addAt(secondSwapIndex + 1, temp);
        }
    }
    

    public virtual string log(BasicArrayList list) {
        string S_LABEL = " s: ";
        int32 size = list.size();
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL);
        stringBuffer.appendint(size);
        for (int32 index = size - 1; index >= 0; index--) {
            BasicArrayList usedList = ((BasicArrayList) list.objectArray[index]);
            stringBuffer.append(S_LABEL);
            stringBuffer.appendint(usedList.size());
        }
        return stringBuffer.toString();
    }
    

    public virtual BasicArrayList getImmutableInstance() {
        return this.immutableInstance;
    }
    

    public static void main(string[] args) {
        CommonPhoneStrings commonPhoneStrings = CommonPhoneStrings.getInstance();
        BasicArrayList list = new BasicArrayListD();
        list.add(JString.box(commonPhoneStrings.ONE));
        list.add(JString.box(commonPhoneStrings.TWO));
        list.add(JString.box(commonPhoneStrings.THREE));
        list.add(JString.box(commonPhoneStrings.FOUR));
        list.add(JString.box(commonPhoneStrings.FIVE));
        list.add(JString.box(commonPhoneStrings.SIX));
        list.add(JString.box(commonPhoneStrings.SEVEN));
        list.add(JString.box(commonPhoneStrings.EIGHT));
        list.add(JString.box(commonPhoneStrings.NINE));
        BasicArrayListUtil.getInstance().reverse(list);
        JSystem.println(JString.ofString(list.toString()));
    }
}

