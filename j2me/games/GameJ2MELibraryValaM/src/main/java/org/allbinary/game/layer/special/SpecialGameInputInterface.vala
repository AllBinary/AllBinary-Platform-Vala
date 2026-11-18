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
// package org.allbinary.game.layer.special
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.layer.AllBinaryLayerManager

public interface SpecialGameInputInterface : JObject, PaintableInterface {
    

    public abstract void up();
    

    public abstract void down();
    

    public abstract void right();
    

    public abstract void left();
    

    public abstract void strafeLeft();
    

    public abstract void strafeRight();
    

    public abstract void fire(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent);
    

    public abstract void special1(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent);
    

    public abstract void special2(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent);
    

    public abstract void special3(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent);
    

    public abstract void special4(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent);
    

    public abstract void special5(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent);
}

