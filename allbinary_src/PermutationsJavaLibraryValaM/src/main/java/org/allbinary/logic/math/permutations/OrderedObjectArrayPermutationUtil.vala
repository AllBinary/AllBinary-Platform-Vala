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
// package org.allbinary.logic.math.permutations
// import java.util.Arrays
// import org.allbinary.TsUtil
// import org.allbinary.logic.util.visitor.Visitor

public class OrderedObjectArrayPermutationUtil : JObject {
    private static OrderedObjectArrayPermutationUtil? instance;
    private static bool staticSet_instance = false;
    private static OrderedObjectArrayPermutationUtil staticGet_instance() {
        if (!OrderedObjectArrayPermutationUtil.staticSet_instance) {
            OrderedObjectArrayPermutationUtil.staticSet_instance = true;
            OrderedObjectArrayPermutationUtil.instance = new OrderedObjectArrayPermutationUtil();
        }
        return OrderedObjectArrayPermutationUtil.instance;
    }
    private string TOTAL_ITERATIONS_TABLE;
    private string FINISHED;

    // Java field initializers run after the base constructor
    private void initFieldsOrderedObjectArrayPermutationUtil() {
    this.TOTAL_ITERATIONS_TABLE = "Total Iterations: ";
    this.FINISHED = "\nFINISHED";
    }
    

    public static OrderedObjectArrayPermutationUtil getInstance() {
        return OrderedObjectArrayPermutationUtil.staticGet_instance();
    }
    

    public OrderedObjectArrayPermutationUtil() {
        base();
        this.initFieldsOrderedObjectArrayPermutationUtil();
    }
    

    public virtual void getNext(JObject[] data) {
        int32 length = data.length;
        int32 i = length - 1;
        TsUtil tsUtil = TsUtil.getInstance();
        while (tsUtil.hashCode1(data[i - 1]) >= tsUtil.hashCode1(data[i])) {
            i = i - 1;
        }
        int32 j = length;
        while (tsUtil.hashCode1(data[j - 1]) <= tsUtil.hashCode1(data[i - 1])) {
            j = j - 1;
        }
        this.swap(data, i - 1, j - 1);
        i++;
        j = length;
        while (i < j) {
            this.swap(data, i - 1, j - 1);
            i++;
            j--;
        }
    }
    

    public virtual void swap(JObject[] data, int32 a, int32 b) {
        JObject temp = data[a];
        data[a] = data[b];
        data[b] = temp;
    }
    

    public virtual int64 factorial(int32 dataLength) {
        int64 temp = 1;
        if (dataLength > 1) {
            for (int32 i = 1; i <= dataLength; i++) {
                temp *= ((int64) (i));
            }
        }
        return temp;
    }
    

    public virtual void generate(JObject[] data, Visitor visitor) {
        int64 iterations = this.factorial(data.length);
        JSystem.println(JString.ofString(this.TOTAL_ITERATIONS_TABLE));
        JSystem.println((iterations).to_string());
        for (int64 count = 0; count < iterations - 1; count++) {
            this.getNext(data);
            visitor.visit(this);
        }
        JSystem.println(JString.ofString(this.FINISHED));
    }
    

    public static void main(string[] args) {
        int32 TOTAL = 7;
        JObject[] data = new JObject[TOTAL];
        for (int32 i = 0; i < TOTAL; i++) {
            data[i] = new ComparableObject();
        }
        Arrays.sort(data);
        ObjectPermutationVisitor permutationVisitor = new ObjectPermutationVisitor(data);
        string ORIGINAL_DATA_LABEL = "Original Data: ";
        JSystem.println(JString.ofString(ORIGINAL_DATA_LABEL));
        permutationVisitor.visit(data);
        OrderedObjectArrayPermutationUtil.getInstance().generate(data, permutationVisitor);
    }
}

