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
// package org.allbinary.game.displayable.canvas
// import org.allbinary.AndroidUtil
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class GameCanvasPauseRunnable : GameRunnable {
    public LogUtil logUtil;
    private AllBinaryGameCanvas allBinaryGameCanvas;

    // Java field initializers run after the base constructor
    private void initFieldsGameCanvasPauseRunnable() {
    this.logUtil = LogUtil.getInstance();
    
    }
    

    public GameCanvasPauseRunnable(AllBinaryGameCanvas allBinaryGameCanvas) {
        base();
        this.initFieldsGameCanvasPauseRunnable();
        this.allBinaryGameCanvas = allBinaryGameCanvas;
    }
    

    public override void run() {
    }
    

    public override void processLoopSleep() {
        {
            Features features = Features.getInstance();
            bool isOpenGL = features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL);
            if (isOpenGL) {
                this.allBinaryGameCanvas.processSleep();
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

