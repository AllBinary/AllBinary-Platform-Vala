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
// package org.allbinary.game.layer.resources
// import org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.image.ImageCache
// import org.allbinary.logic.communication.log.LogUtil

public class OnDemandResources : JObject {
    public static OnDemandResources? NULL_ON_DEMAND_RESOURCES;
    private static bool staticSet_NULL_ON_DEMAND_RESOURCES = false;
    public static OnDemandResources staticGet_NULL_ON_DEMAND_RESOURCES() {
        if (!OnDemandResources.staticSet_NULL_ON_DEMAND_RESOURCES) {
            OnDemandResources.staticSet_NULL_ON_DEMAND_RESOURCES = true;
            OnDemandResources.NULL_ON_DEMAND_RESOURCES = new OnDemandResources();
        }
        return OnDemandResources.NULL_ON_DEMAND_RESOURCES;
    }
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsOnDemandResources() {
    this.logUtil = LogUtil.getInstance();
    }
    

    public OnDemandResources() {
        base();
        this.initFieldsOnDemandResources();
    }
    

    public virtual void waitFor() {
    }
    

    public virtual void init() {
    }
    

    public virtual int32 initAt(ImageCache imageCache, BaseResourceAnimationInterfaceFactoryInterfaceFactory resourceAnimationInterfaceFactoryInterfaceFactory, int32 portion, string loadingString, int32 index) {
        return 0;
    }
}

