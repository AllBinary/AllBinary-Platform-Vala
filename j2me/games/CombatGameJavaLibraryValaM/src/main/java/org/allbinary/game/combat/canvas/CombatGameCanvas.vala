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
// package org.allbinary.game.combat.canvas
// import javax.microedition.lcdui.CommandListener
// import org.allbinary.game.combat.destroy.DestroyedLayerProcessor
// import org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool
// import org.allbinary.game.combat.destroy.event.DestroyedEventHandler
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GameFeatureFactory
// import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
// import org.allbinary.game.init.BasicBuildGameInitializerFactory
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.layer.drop.DropLayerProcessor
// import org.allbinary.game.layer.identification.GroupLayerManagerListener
// import org.allbinary.game.score.HighScoresFactoryInterface
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.layer.BasicLayerProcessor
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

public class CombatGameCanvas : AllBinaryGameCanvas {
    public static BasicLayerProcessor[]? basicLayerProcessor;
    private static bool staticSet_basicLayerProcessor = false;
    public static BasicLayerProcessor[] staticGet_basicLayerProcessor() {
        if (!CombatGameCanvas.staticSet_basicLayerProcessor) {
            CombatGameCanvas.staticSet_basicLayerProcessor = true;
            CombatGameCanvas.basicLayerProcessor = new BasicLayerProcessor[0];
        }
        return CombatGameCanvas.basicLayerProcessor;
    }
    

    public CombatGameCanvas(CommandListener cmdListener, AllBinaryGameLayerManager gameLayerManager, HighScoresFactoryInterface highScoresFactoryInterface, BasicBuildGameInitializerFactory gameInitializationInterfaceFactoryInterface, bool buffered) {
        base(cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered);
    }
    

    private void CombatGameCanvas_init() {
        DestroyEventCircularStaticPool.getInstance().init(this);
        ProgressCanvasFactory.getInstance().addNormalPortion(50, "Destroy Events");
    }
    

    public override void initApp(AbeClientInformationInterface abeClientInformation) {
        this.CombatGameCanvas_init();
        base.initApp(abeClientInformation);
    }
    

    public virtual void initConfigurablePortion(int32 portion) {
        DestroyedLayerProcessor.init();
        ProgressCanvasFactory.getInstance().addNormalPortion(portion, "Basic Processors");
        Features features = Features.getInstance();
        GameFeatureFactory gameFeatureFactory = GameFeatureFactory.getInstance();
        if (features.isFeature(gameFeatureFactory.DROPPED_ITEMS) && features.isFeature(gameFeatureFactory.DROPPED_ITEMS_FROM_DEATH)) {
            CombatGameCanvas.basicLayerProcessor = new BasicLayerProcessor[2];
            CombatGameCanvas.staticGet_basicLayerProcessor()[0] = DestroyedLayerProcessor.getInstance();
            CombatGameCanvas.staticGet_basicLayerProcessor()[1] = DropLayerProcessor.getInstance();
        } else {
            CombatGameCanvas.basicLayerProcessor = new BasicLayerProcessor[1];
            CombatGameCanvas.staticGet_basicLayerProcessor()[0] = DestroyedLayerProcessor.getInstance();
        }
    }
    

    public override void processPlayingGame() {
        base.processPlayingGame();
        for (int32 index = CombatGameCanvas.staticGet_basicLayerProcessor().length; --index >= 0; ) {
            CombatGameCanvas.staticGet_basicLayerProcessor()[index].process(this.gameLayerManager);
        }
    }
    

    public override void cleanupGame() {
        base.cleanupGame();
        for (int32 index = CombatGameCanvas.staticGet_basicLayerProcessor().length; --index >= 0; ) {
            CombatGameCanvas.staticGet_basicLayerProcessor()[index].getList().clear();
        }
        GroupLayerManagerListener.getInstance().clear();
        GroupLayerManagerListener.getInstance().log();
        DestroyedEventHandler.getInstance().removeAllListeners();
        this.cleanupManager();
    }
    

    public virtual void cleanupManager() {
        this.gameLayerManager.cleanup();
    }
}

