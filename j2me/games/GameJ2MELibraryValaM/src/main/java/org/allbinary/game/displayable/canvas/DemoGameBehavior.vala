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
// import org.allbinary.game.GameTypeFactory
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.string.CommonStrings

public class DemoGameBehavior : JObject {
    private static DemoGameBehavior? instance;
    private static bool staticSet_instance = false;
    private static DemoGameBehavior staticGet_instance() {
        if (!DemoGameBehavior.staticSet_instance) {
            DemoGameBehavior.staticSet_instance = true;
            DemoGameBehavior.instance = new DemoGameBehavior();
        }
        return DemoGameBehavior.instance;
    }
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsDemoGameBehavior() {
    this.logUtil = LogUtil.getInstance();
    }

    public DemoGameBehavior() {
        base();
        this.initFieldsDemoGameBehavior();
    }
    

    public static DemoGameBehavior getInstance() {
        return DemoGameBehavior.staticGet_instance();
    }
    

    public virtual void init() {
    }
    

    public virtual void pause(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    public virtual void unPause(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    public virtual void updateTouch(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    public virtual void updateScreenButtonPaintable(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.setTouchPaintableP(NullPaintable.getInstance());
    }
    

    public virtual void setGameState(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    public virtual void removeAllGameKeyInputListeners(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    public virtual void updateEndGameProcessor(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    public virtual void buildGame(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    public virtual void run(AllBinaryGameCanvas allBinaryGameCanvas) {
        CommonStrings commonStrings = CommonStrings.getInstance();
        this.logUtil.putF(GameTypeFactory.getInstance().BOT.toString(), this, commonStrings.RUN);
    }
    

    public virtual void setHighScore(AbeClientInformationInterface abeClientInformation, AllBinaryGameCanvas allBinaryGameCanvas, string name, int64 score, bool autoSubmit, bool isLast) {
    }
}

