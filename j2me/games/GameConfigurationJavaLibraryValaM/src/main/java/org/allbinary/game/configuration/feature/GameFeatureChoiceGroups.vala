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

public class GameFeatureChoiceGroups : JObject {
    private static GameFeatureChoiceGroups? gameFeatureChoiceGroupsExclusive;
    private static bool staticSet_gameFeatureChoiceGroupsExclusive = false;
    private static GameFeatureChoiceGroups staticGet_gameFeatureChoiceGroupsExclusive() {
        if (!GameFeatureChoiceGroups.staticSet_gameFeatureChoiceGroupsExclusive) {
            GameFeatureChoiceGroups.staticSet_gameFeatureChoiceGroupsExclusive = true;
            GameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive = new GameFeatureChoiceGroups();
        }
        return GameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive;
    }
    private static GameFeatureChoiceGroups? gameFeatureChoiceGroupsMultiple;
    private static bool staticSet_gameFeatureChoiceGroupsMultiple = false;
    private static GameFeatureChoiceGroups staticGet_gameFeatureChoiceGroupsMultiple() {
        if (!GameFeatureChoiceGroups.staticSet_gameFeatureChoiceGroupsMultiple) {
            GameFeatureChoiceGroups.staticSet_gameFeatureChoiceGroupsMultiple = true;
            GameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple = new GameFeatureChoiceGroups();
        }
        return GameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple;
    }
    private ABHashtable hashtable;

    // Java field initializers run after the base constructor
    private void initFieldsGameFeatureChoiceGroups() {
    this.hashtable = StdUtil.getInstance().createHashtable();
    }
    

    public GameFeatureChoiceGroups() {
        base();
        this.initFieldsGameFeatureChoiceGroups();
    }
    

    public static GameFeatureChoiceGroups getExclusiveInstance() {
        return GameFeatureChoiceGroups.staticGet_gameFeatureChoiceGroupsExclusive();
    }
    

    public static GameFeatureChoiceGroups getMultipleInstance() {
        return GameFeatureChoiceGroups.staticGet_gameFeatureChoiceGroupsMultiple();
    }
    

    public virtual ABHashtable @get() {
        return this.hashtable;
    }
    

    public virtual void add(string name, BasicArrayList list) {
        this.hashtable.put(JString.box(name), list);
    }
}

