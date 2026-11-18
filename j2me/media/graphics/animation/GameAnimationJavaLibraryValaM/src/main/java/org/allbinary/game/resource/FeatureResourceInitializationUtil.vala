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
// import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class FeatureResourceInitializationUtil : JObject {
    private static FeatureResourceInitializationUtil? instance;
    private static bool staticSet_instance = false;
    private static FeatureResourceInitializationUtil staticGet_instance() {
        if (!FeatureResourceInitializationUtil.staticSet_instance) {
            FeatureResourceInitializationUtil.staticSet_instance = true;
            FeatureResourceInitializationUtil.instance = new FeatureResourceInitializationUtil();
        }
        return FeatureResourceInitializationUtil.instance;
    }
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsFeatureResourceInitializationUtil() {
    this.logUtil = LogUtil.getInstance();
    }

    public FeatureResourceInitializationUtil() {
        base();
        this.initFieldsFeatureResourceInitializationUtil();
    }
    

    public static FeatureResourceInitializationUtil getInstance() {
        return FeatureResourceInitializationUtil.staticGet_instance();
    }
    

    public virtual void init(int32 level) {
        CommonStrings commonStrings = CommonStrings.getInstance();
        this.logUtil.putF(commonStrings.START, this, commonStrings.INIT);
        FeaturedResourceFactory featuredResourceFactory = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance();
        featuredResourceFactory.init(level);
        FeaturedResourceRelativeRelationshipFactory.getInstance().init(level);
    }
}

