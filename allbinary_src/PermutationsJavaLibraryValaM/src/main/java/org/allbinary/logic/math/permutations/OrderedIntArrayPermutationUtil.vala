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
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.logic.string.StringMaker

public class OrderedIntArrayPermutationUtil : JObject {
    private static OrderedIntArrayPermutationUtil? instance;
    private static bool staticSet_instance = false;
    private static OrderedIntArrayPermutationUtil staticGet_instance() {
        if (!OrderedIntArrayPermutationUtil.staticSet_instance) {
            OrderedIntArrayPermutationUtil.staticSet_instance = true;
            OrderedIntArrayPermutationUtil.instance = new OrderedIntArrayPermutationUtil();
        }
        return OrderedIntArrayPermutationUtil.instance;
    }
    private string TOTAL_ITERATIONS_TABLE;
    private string FINISHED;

    // Java field initializers run after the base constructor
    private void initFieldsOrderedIntArrayPermutationUtil() {
    this.TOTAL_ITERATIONS_TABLE = "Total Iterations: ";
    this.FINISHED = "\nFINISHED";
    }
    

    public static OrderedIntArrayPermutationUtil getInstance() {
        return OrderedIntArrayPermutationUtil.staticGet_instance();
    }
    

    public OrderedIntArrayPermutationUtil() {
        base();
        this.initFieldsOrderedIntArrayPermutationUtil();
    }
    

    public virtual void getNext(int32[] data) {
        int32 length = data.length;
        int32 i = length - 1;
        while (data[i - 1] >= data[i]) {
            i = i - 1;
        }
        int32 j = length;
        while (data[j - 1] <= data[i - 1]) {
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
    

    public virtual void swap(int32[] data, int32 a, int32 b) {
        int32 temp = data[a];
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
    

    public virtual void generate(int32[] data, Visitor visitor) {
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
        int32 TOTAL = 3;
        int32[] data = new int32[TOTAL];
        for (int32 i = 0; i < TOTAL; i++) {
            data[i] = i;
        }
        IntPermutationVisitor permutationVisitor = new IntPermutationVisitor(data);
        string ORIGINAL_DATA_LABEL = "Original Data: ";
        JSystem.println(JString.ofString(ORIGINAL_DATA_LABEL));
        permutationVisitor.print_2(data, new StringMaker());
        OrderedIntArrayPermutationUtil.getInstance().generate(data, permutationVisitor);
    }
}

