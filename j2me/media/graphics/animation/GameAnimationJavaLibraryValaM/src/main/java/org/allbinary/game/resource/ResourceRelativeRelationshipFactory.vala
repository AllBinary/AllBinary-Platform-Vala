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
// package org.allbinary.game.resource
// import org.allbinary.graphics.RelativeRelationship
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

public class ResourceRelativeRelationshipFactory : JObject, ResourceRelativeRelationshipFactoryInterface, GameFeatureControlledInterface {
    private BasicArrayListUtil basicArrayListUtil;
    private ABHashtable hashtable;
    private bool initialized;

    // Java field initializers run after the base constructor
    private void initFieldsResourceRelativeRelationshipFactory() {
    this.basicArrayListUtil = BasicArrayListUtil.getInstance();
    this.hashtable = StdUtil.getInstance().createHashtable();
    this.initialized = false;
    }

    public ResourceRelativeRelationshipFactory() {
        base();
        this.initFieldsResourceRelativeRelationshipFactory();
    }
    

    public virtual void init(int32 level) {
        this.setInitialized(true);
    }
    

    public virtual BasicArrayList getResourceRelativeRelationshipList(string resource) {
        JObject listCanBeNull = this.hashtable.@get(resource);
        if (listCanBeNull == null) {
            return this.basicArrayListUtil.getImmutableInstance();
        }
        return ((BasicArrayList) listCanBeNull);
    }
    

    public virtual void addResourceRelativeRelationship(string resource, RelativeRelationship hardPoint) {
        BasicArrayList list = this.getResourceRelativeRelationshipList(resource);
        if (list == this.basicArrayListUtil.getImmutableInstance()) {
            list = new BasicArrayListD();
        }
        list.add(hardPoint);
        this.hashtable.put(JString.box(resource), list);
    }
    

    public virtual bool isLoadingLevel(int32 level) {
        return false;
    }
    

    public virtual bool isFeature() {
        return false;
    }
    

    public virtual void setInitialized(bool initialized) {
        this.initialized = initialized;
    }
    

    public virtual bool isInitialized() {
        return this.initialized;
    }
}

