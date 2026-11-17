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
// import org.allbinary.string.CommonPhoneStrings
// import org.allbinary.string.CommonSeps

public class MathData : JObject {
    private static MathData? instance;
    private static bool staticSet_instance = false;
    private static MathData staticGet_instance() {
        if (!MathData.staticSet_instance) {
            MathData.staticSet_instance = true;
            MathData.instance = new MathData();
        }
        return MathData.instance;
    }
    public string EQUALS;
    public string PLUS;
    public string GREATER_THAN;
    public string MINUS;
    public string DIVIDE;
    public string MULTIPLY;

    // Java field initializers run after the base constructor
    private void initFieldsMathData() {
    
    this.PLUS = "+";
    this.GREATER_THAN = ">";
    
    
    
    }
    

    public static MathData getInstance() {
        return MathData.staticGet_instance();
    }
    

    public MathData() {
        base();
        this.initFieldsMathData();
        CommonSeps commonSeps = CommonSeps.getInstance();
        this.EQUALS = commonSeps.EQUALS;
        this.MINUS = commonSeps.DASH;
        this.DIVIDE = commonSeps.FORWARD_SLASH;
        this.MULTIPLY = CommonPhoneStrings.getInstance().STAR;
    }
}

