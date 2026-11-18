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
// package org.allbinary.game.input
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.layer.AllBinaryLayerManager

public class GameInputProcessor : JObject {
    private static GameInputProcessor? instance;
    private static bool staticSet_instance = false;
    private static GameInputProcessor staticGet_instance() {
        if (!GameInputProcessor.staticSet_instance) {
            GameInputProcessor.staticSet_instance = true;
            GameInputProcessor.instance = new GameInputProcessor();
        }
        return GameInputProcessor.instance;
    }
    

    public static GameInputProcessor getInstance() {
        return GameInputProcessor.staticGet_instance();
    }
    

    public GameInputProcessor() {
        base();
    }
    

    public virtual void processEvent(AllBinaryLayerManager allbinaryLayerManager, GameKeyEvent gameKeyEvent) {
    }
    

    public virtual void processReleasedEvent(AllBinaryLayerManager allbinaryLayerManager, GameKeyEvent gameKeyEvent) {
    }
    

    public virtual void processAnalog(AllBinaryLayerManager allbinaryLayerManager, GameKeyEvent gameKeyEvent, int32 analogValue) {
    }
    

    public virtual void process(AllBinaryLayerManager allbinaryLayerManager, int32? keyAsInteger) {
    }
    

    public virtual void processReleased(AllBinaryLayerManager allbinaryLayerManager, int32? keyAsInteger) {
    }
}

