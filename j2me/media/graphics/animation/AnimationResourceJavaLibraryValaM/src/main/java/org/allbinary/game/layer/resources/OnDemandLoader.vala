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
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.MainFeatureFactory
// import org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
// import org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface
// import org.allbinary.game.resource.ResourceLoadingLevelFactory
// import org.allbinary.image.ImageCache
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

public class OnDemandLoader : JObject {
    private OnDemandResourcesFactory onDemandResourcesFactory;
    private GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory;
    private BaseResourceAnimationInterfaceFactoryInterfaceFactory resourceAnimationInterfaceFactoryInterfaceFactory;

    // Java field initializers run after the base constructor
    private void initFieldsOnDemandLoader() {
    
    
    
    }
    

    public OnDemandLoader(OnDemandResourcesFactory onDemandResourcesFactory, GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, BaseResourceAnimationInterfaceFactoryInterfaceFactory resourceAnimationInterfaceFactoryInterfaceFactory) {
        base();
        this.initFieldsOnDemandLoader();
        this.onDemandResourcesFactory = onDemandResourcesFactory;
        this.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory;
        this.resourceAnimationInterfaceFactoryInterfaceFactory = resourceAnimationInterfaceFactoryInterfaceFactory;
    }
    

    public virtual void init(ImageCache imageCache, int32 level, string loadingString) {
        ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        if (Features.getInstance().isFeature(MainFeatureFactory.getInstance().LOAD_ALL)) {
            if (this.resourceAnimationInterfaceFactoryInterfaceFactory.isInitialized()) {
                return;
            }
            this.initAll(imageCache, loadingString);
        } else if (level != resourceLoadingLevelFactory.LOAD_ALL.getLevel()) {
            LayerPlacementInterfaceBasicArrayListFactoryInterface layerPlacementInterfaceBasicArrayListFactoryInterface = this.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.getInstance1(level);
            this.initLevel(layerPlacementInterfaceBasicArrayListFactoryInterface, imageCache, level, loadingString);
        }
    }
    

    private void initAll(ImageCache imageCache, string loadingString) {
        int32 index = 0;
        int32 portion = 120;
        OnDemandResources onDemandResources = null;
        for (int32 onDemandIndex = this.onDemandResourcesFactory.size(); --onDemandIndex >= 0; ) {
            onDemandResources = this.onDemandResourcesFactory.remove(onDemandIndex);
            if (onDemandResources != OnDemandResources.NULL_ON_DEMAND_RESOURCES) {
                index = onDemandResources.initAt(imageCache, this.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index);
            }
        }
    }
    

    private void initLevel(LayerPlacementInterfaceBasicArrayListFactoryInterface layerPlacementInterfaceBasicArrayListFactoryInterface, ImageCache imageCache, int32 level, string loadingString) {
        CommonStrings commonStrings = CommonStrings.getInstance();
        int32 portion = 120;
        int32 index = 0;
        int32[] onDemandArray = layerPlacementInterfaceBasicArrayListFactoryInterface.getOnDemandResources();
        PreLogUtil.put(new StringMaker().append(commonStrings.START).appendint(onDemandArray.length).toString(), this, "initLevel");
        OnDemandResources onDemandResources = null;
        for (int32 onDemandIndex = onDemandArray.length; --onDemandIndex >= 0; ) {
            onDemandResources = this.onDemandResourcesFactory.remove(onDemandArray[onDemandIndex]);
            if (onDemandResources != OnDemandResources.NULL_ON_DEMAND_RESOURCES) {
                index = onDemandResources.initAt(imageCache, this.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index);
            }
        }
    }
}

