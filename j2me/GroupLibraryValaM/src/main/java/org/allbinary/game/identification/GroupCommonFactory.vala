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
// package org.allbinary.game.identification
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory

public class GroupCommonFactory : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!GroupCommonFactory.staticSet_instance) {
            GroupCommonFactory.staticSet_instance = true;
            GroupCommonFactory.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return GroupCommonFactory.instance;
    }
    public int32? ID;
    public string GROUP_NAME_LABEL;
    public string ID_LABEL;
    public string ADDING_LABEL;
    public string TO_LABEL;

    // Java field initializers run after the base constructor
    private void initFieldsGroupCommonFactory() {
    this.ID = SmallIntegerSingletonFactory.getInstance().getAt(10);
    this.GROUP_NAME_LABEL = "Group Name: ";
    this.ID_LABEL = " Id: ";
    this.ADDING_LABEL = "Adding: ";
    this.TO_LABEL = " to: ";
    }

    public GroupCommonFactory() {
        base();
        this.initFieldsGroupCommonFactory();
    }
    

    public static GroupCommonFactory getInstance() {
        if (GroupCommonFactory.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            GroupCommonFactory.instance = new GroupCommonFactory();
        }
        return ((GroupCommonFactory) GroupCommonFactory.staticGet_instance());
    }
}

