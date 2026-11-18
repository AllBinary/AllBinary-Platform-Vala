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
// import org.allbinary.game.configuration.event.ChangedGameFeatureListener
// import org.allbinary.game.configuration.event.GameInitializedEvent
// import org.allbinary.game.configuration.event.GameInitializedEventHandler
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.MainFeatureFactory
// import org.allbinary.game.resource.ResourceLoadingLevelFactory
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

public class GameInitializationUtil : JObject {
    private static GameInitializationUtil? instance;
    private static bool staticSet_instance = false;
    private static GameInitializationUtil staticGet_instance() {
        if (!GameInitializationUtil.staticSet_instance) {
            GameInitializationUtil.staticSet_instance = true;
            GameInitializationUtil.instance = new GameInitializationUtil();
        }
        return GameInitializationUtil.instance;
    }
    public GameInitializedEvent EVENT;

    // Java field initializers run after the base constructor
    private void initFieldsGameInitializationUtil() {
    this.EVENT = new GameInitializedEvent(this);
    }

    public GameInitializationUtil() {
        base();
        this.initFieldsGameInitializationUtil();
    }
    

    public virtual void initDemo(AbeClientInformationInterface abeClientInformation, MyCanvas canvas, BasicBuildGameInitializerFactory gameInitializationInterfaceFactoryInterface) {
        MainFeatureFactory mainFeatureFactory = MainFeatureFactory.getInstance();
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(mainFeatureFactory.STATIC)) {
            GameInitializationInterface gameInitializationInterface = gameInitializationInterfaceFactoryInterface.getInstance();
            Features features = Features.getInstance();
            if (features.isFeature(mainFeatureFactory.LOAD_ALL)) {
                this.initGame(abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface);
            } else if (features.isFeature(mainFeatureFactory.LOAD_ONDEMAND)) {
                ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
                gameInitializationInterface.init(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory.LOAD_EARLY.getLevel());
                this.EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_EARLY);
            } else {
                JSystem.fatal(new JException("Exception", "No Loading Feature Available"));
            }
            GameInitializedEventHandler.getInstance().fireEvent(this.EVENT);
        }
    }
    

    public virtual void initGame(AbeClientInformationInterface abeClientInformation, MyCanvas canvas, BasicBuildGameInitializerFactory gameInitializationInterfaceFactoryInterface) {
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(MainFeatureFactory.getInstance().STATIC)) {
            GameInitializationInterface gameInitializationInterface = gameInitializationInterfaceFactoryInterface.getInstance();
            ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
            gameInitializationInterface.init(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory.LOAD_ALL.getLevel());
            this.EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_ALL);
            GameInitializedEventHandler.getInstance().fireEvent(this.EVENT);
            ChangedGameFeatureListener.getInstance().remove(MainFeatureFactory.getInstance().STATIC);
        }
    }
    

    public static GameInitializationUtil getInstance() {
        return GameInitializationUtil.staticGet_instance();
    }
}

