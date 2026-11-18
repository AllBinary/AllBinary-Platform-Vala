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
// package org.allbinary.game.configuration.feature
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList

public class InGameFeatureChoiceGroups : JObject {
    private static InGameFeatureChoiceGroups? gameFeatureChoiceGroupsExclusive;
    private static bool staticSet_gameFeatureChoiceGroupsExclusive = false;
    private static InGameFeatureChoiceGroups staticGet_gameFeatureChoiceGroupsExclusive() {
        if (!InGameFeatureChoiceGroups.staticSet_gameFeatureChoiceGroupsExclusive) {
            InGameFeatureChoiceGroups.staticSet_gameFeatureChoiceGroupsExclusive = true;
            InGameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive = new InGameFeatureChoiceGroups();
        }
        return InGameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive;
    }
    private static InGameFeatureChoiceGroups? gameFeatureChoiceGroupsMultiple;
    private static bool staticSet_gameFeatureChoiceGroupsMultiple = false;
    private static InGameFeatureChoiceGroups staticGet_gameFeatureChoiceGroupsMultiple() {
        if (!InGameFeatureChoiceGroups.staticSet_gameFeatureChoiceGroupsMultiple) {
            InGameFeatureChoiceGroups.staticSet_gameFeatureChoiceGroupsMultiple = true;
            InGameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple = new InGameFeatureChoiceGroups();
        }
        return InGameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple;
    }
    private ABHashtable hashtable;

    // Java field initializers run after the base constructor
    private void initFieldsInGameFeatureChoiceGroups() {
    this.hashtable = StdUtil.getInstance().createHashtable();
    }
    

    public InGameFeatureChoiceGroups() {
        base();
        this.initFieldsInGameFeatureChoiceGroups();
    }
    

    public static InGameFeatureChoiceGroups getExclusiveInstance() {
        return InGameFeatureChoiceGroups.staticGet_gameFeatureChoiceGroupsExclusive();
    }
    

    public static InGameFeatureChoiceGroups getMultipleInstance() {
        return InGameFeatureChoiceGroups.staticGet_gameFeatureChoiceGroupsMultiple();
    }
    

    public virtual ABHashtable @get() {
        return this.hashtable;
    }
    

    public virtual void add(string name, BasicArrayList list) {
        this.hashtable.put(JString.box(name), list);
    }
}

