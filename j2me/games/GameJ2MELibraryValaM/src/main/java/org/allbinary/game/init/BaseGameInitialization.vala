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
// package org.allbinary.game.init
// import javax.microedition.lcdui.CommandListener
// import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.game.configuration.GameConfigurationCentral
// import org.allbinary.game.configuration.event.ChangedGameFeatureListener
// import org.allbinary.game.configuration.feature.InputFeatureFactory
// import org.allbinary.game.configuration.feature.MainFeatureFactory
// import org.allbinary.game.input.PlatformInputMappingFactory
// import org.allbinary.game.input.event.GameKeyEventFactory
// import org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory
// import org.allbinary.game.resource.ResourceInitialization
// import org.allbinary.game.resource.ResourceLoadingLevelFactory
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.image.GameFeatureImageCacheFactory
// import org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput
// import org.allbinary.input.motion.button.BasicTouchInputFactory
// import org.allbinary.input.motion.button.CancelTouchButtonInputFactory
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

public class BaseGameInitialization : JObject, GameInitializationInterface {
    public static BaseGameInitialization? NULL_BASE_GAME_INITIALIZATION;
    private static bool staticSet_NULL_BASE_GAME_INITIALIZATION = false;
    public static BaseGameInitialization staticGet_NULL_BASE_GAME_INITIALIZATION() {
        if (!BaseGameInitialization.staticSet_NULL_BASE_GAME_INITIALIZATION) {
            BaseGameInitialization.staticSet_NULL_BASE_GAME_INITIALIZATION = true;
            BaseGameInitialization.NULL_BASE_GAME_INITIALIZATION = new BaseGameInitialization(new ResourceInitialization[0], 0);
        }
        return BaseGameInitialization.NULL_BASE_GAME_INITIALIZATION;
    }
    public ResourceInitialization[] resourceInitializationArray;
    private int32 portion;
    private bool initialized;
    public int32 EARLY_RESOURCES;
    public int32 GAME_RESOURCES;
    public int32 EARLY_CHANGABLE_RESOURCES;
    public int32 GAME_CHANGABLE_RESOURCES;
    private bool gameInitialized;
    private bool allLoaded;

    // Java field initializers run after the base constructor
    private void initFieldsBaseGameInitialization() {
    
    
    this.initialized = false;
    this.EARLY_RESOURCES = 0;
    this.GAME_RESOURCES = 1;
    this.EARLY_CHANGABLE_RESOURCES = 2;
    this.GAME_CHANGABLE_RESOURCES = 3;
    this.gameInitialized = false;
    this.allLoaded = false;
    }
    

    public BaseGameInitialization(ResourceInitialization[] resourceInitializationArray, int32 portion) {
        base();
        this.initFieldsBaseGameInitialization();
        this.resourceInitializationArray = resourceInitializationArray;
        this.portion = portion;
    }
    

    public virtual void initKey(int32 portion) {
    }
    

    public virtual void initKeyMapping(AbeClientInformationInterface abeClientInformation, int32 portion) {
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(InputFeatureFactory.getInstance().INPUT_MAPPING)) {
            PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().init(abeClientInformation);
            ProgressCanvasFactory.getInstance().addNormalPortion(50, "Game Keys");
            ChangedGameFeatureListener.getInstance().remove(InputFeatureFactory.getInstance().INPUT_MAPPING);
        }
    }
    

    public virtual void init(AbeClientInformationInterface abeClientInformation, CommandListener commandListener, int32 level) {
        ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        if (!this.isInitialized() && (level == resourceLoadingLevelFactory.LOAD_ALL.getLevel() || level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel())) {
            int32 localPortion = 40;
            if (level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel()) {
                localPortion = 8;
            }
            this.setInitialized(true);
            this.initKey(this.getPortion());
            this.initKeyMapping(abeClientInformation, this.getPortion());
            GameKeyEventFactory.getInstance().init();
            ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
            progressCanvas.addNormalPortion(localPortion, "Game Key Events");
            BasicTouchInputFactory.getInstance().init(PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
            CancelTouchButtonInputFactory.getInstance();
            progressCanvas.addNormalPortion(localPortion, "Touch Input");
            CompleteMotionGestureInputToGameMotionGestureInput.getInstance().init();
            progressCanvas.addNormalPortion(localPortion, "Motion Input");
            GameFeatureImageCacheFactory.init();
            progressCanvas.addNormalPortion(localPortion, "Image Cache");
            this.resourceInitializationArray[this.EARLY_RESOURCES].init();
        }
    }
    

    public virtual void resourceInitialization(int32 level) {
        ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        if (this.resourceAnimationChange() && level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel()) {
            this.clearResources();
            this.resourceInitializationArray[this.EARLY_CHANGABLE_RESOURCES].init();
        }
        if (this.resourceAnimationChange() && level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()) {
            if (this.allLoaded) {
                this.clearResources();
            }
            if (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().getList().size() == 0) {
                this.resourceInitializationArray[this.EARLY_CHANGABLE_RESOURCES].init();
            }
            this.resourceInitializationArray[this.GAME_CHANGABLE_RESOURCES].init();
            this.allLoaded = true;
        }
    }
    

    public virtual bool resourceAnimationChange() {
        ChangedGameFeatureListener changedGameFeatureListener = ChangedGameFeatureListener.getInstance();
        GameConfigurationCentral gameConfigurationCentral = GameConfigurationCentral.getInstance();
        if (changedGameFeatureListener.isChangedGameConfiguration(gameConfigurationCentral.SCALE)) {
            return true;
        }
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(MainFeatureFactory.getInstance().STATIC)) {
            return true;
        }
        return false;
    }
    

    private void clearResources() {
        this.allLoaded = false;
        GameFeatureImageCacheFactory.releaseAll();
        FeaturedAnimationInterfaceFactoryInterfaceFactory featuredAnimationInterfaceFactoryInterfaceFactory = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance();
        featuredAnimationInterfaceFactoryInterfaceFactory.clear();
        FeaturedResourceRelativeRelationshipFactory.getInstance().clear();
    }
    

    public virtual void setGameInitialized(bool gameInitialized) {
        this.gameInitialized = gameInitialized;
    }
    

    public virtual bool isGameInitialized() {
        return this.gameInitialized;
    }
    

    public virtual int32 getPortion() {
        return this.portion;
    }
    

    public virtual void setInitialized(bool initialized) {
        this.initialized = initialized;
    }
    

    public virtual bool isInitialized() {
        return this.initialized;
    }
}

