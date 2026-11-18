/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.displayable.canvas
// import org.allbinary.business.advertisement.GameAdStateFactory
// import org.allbinary.game.GameAdState
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.graphics.opengles.CurrentDisplayableFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

public class BaseGameBehavior : DemoGameBehavior {
    private static BaseGameBehavior? instanceC;
    private static bool staticSet_instanceC = false;
    private static BaseGameBehavior staticGet_instanceC() {
        if (!BaseGameBehavior.staticSet_instanceC) {
            BaseGameBehavior.staticSet_instanceC = true;
            BaseGameBehavior.instanceC = new BaseGameBehavior();
        }
        return BaseGameBehavior.instanceC;
    }

    public BaseGameBehavior() {
        base();
    }
    

    public static DemoGameBehavior getInstance() {
        return BaseGameBehavior.staticGet_instanceC();
    }
    

    public override void init() {
        GameAdState gameAdState = GameAdStateFactory.getInstance().getCurrentInstance();
        gameAdState.playingAdState();
    }
    

    public override void pause(AllBinaryGameCanvas allBinaryGameCanvas) {
        Features features = Features.getInstance();
        if (features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD)) {
            CurrentDisplayableFactory currentDisplayableFactory = CurrentDisplayableFactory.getInstance();
            currentDisplayableFactory.setRunnable(allBinaryGameCanvas.gamePauseRunnable);
        }
    }
    

    public override void unPause(AllBinaryGameCanvas allBinaryGameCanvas) {
        if (Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD)) {
            CurrentDisplayableFactory currentDisplayableFactory = CurrentDisplayableFactory.getInstance();
            currentDisplayableFactory.setRunnable(allBinaryGameCanvas.gameRunnable);
            currentDisplayableFactory.setDisplayable(allBinaryGameCanvas);
        }
    }
    

    public override void updateTouch(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.updateTouch2();
    }
    

    public override void updateScreenButtonPaintable(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.updateScreenButtonPaintable2();
    }
    

    public override void setGameState(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.updateGameState();
    }
    

    public override void removeAllGameKeyInputListeners(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.removeAllGameKeyInputListeners2();
    }
    

    public override void updateEndGameProcessor(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.updateEndGameProcessor2();
    }
    

    public override void buildGame(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.buildGame2();
    }
    

    public override void run(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.run2();
    }
    

    public override void setHighScore(AbeClientInformationInterface abeClientInformation, AllBinaryGameCanvas allBinaryGameCanvas, string name, int64 score, bool autoSubmit, bool isLast) {
        allBinaryGameCanvas.setHighScore2(abeClientInformation, name, score, autoSubmit, isLast);
    }
}

