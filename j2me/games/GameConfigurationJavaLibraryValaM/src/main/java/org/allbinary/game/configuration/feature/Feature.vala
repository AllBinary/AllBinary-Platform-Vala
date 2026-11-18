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
// import org.allbinary.game.configuration.event.ChangedGameFeatureListener
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable

public class Feature : JObject {
    private static ABHashtable? hashtable;
    private static bool staticSet_hashtable = false;
    private static ABHashtable staticGet_hashtable() {
        if (!Feature.staticSet_hashtable) {
            Feature.staticSet_hashtable = true;
            Feature.hashtable = StdUtil.getInstance().createHashtable();
        }
        return Feature.hashtable;
    }
    private string name;

    // Java field initializers run after the base constructor
    private void initFieldsFeature() {
    
    }
    

    public Feature(string name) {
        base();
        this.initFieldsFeature();
        this.name = name;
        Feature.add(name, this);
        ChangedGameFeatureListener.getInstance().add(this);
    }
    

    public static Feature getInstance1(string name) {
        return ((Feature) Feature.staticGet_hashtable().@get(name));
    }
    

    private static void add(string name, Feature gameFeature) {
        Feature.staticGet_hashtable().put(JString.box(name), gameFeature);
    }
    

    public override string toString() {
        return this.getName();
    }
    

    public virtual string getName() {
        return this.name;
    }
}

