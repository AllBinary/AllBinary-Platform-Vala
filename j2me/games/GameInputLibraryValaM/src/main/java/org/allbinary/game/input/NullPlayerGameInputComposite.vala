/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.string.StringUtil

public class NullPlayerGameInputComposite : JObject, PlayerGameInputCompositeInterface, GameInputInterface, NamedInterface {
    public static NullPlayerGameInputComposite? NULL_PLAYER_GAME_INPUT_COMPOSITE;
    private static bool staticSet_NULL_PLAYER_GAME_INPUT_COMPOSITE = false;
    public static NullPlayerGameInputComposite staticGet_NULL_PLAYER_GAME_INPUT_COMPOSITE() {
        if (!NullPlayerGameInputComposite.staticSet_NULL_PLAYER_GAME_INPUT_COMPOSITE) {
            NullPlayerGameInputComposite.staticSet_NULL_PLAYER_GAME_INPUT_COMPOSITE = true;
            NullPlayerGameInputComposite.NULL_PLAYER_GAME_INPUT_COMPOSITE = new NullPlayerGameInputComposite();
        }
        return NullPlayerGameInputComposite.NULL_PLAYER_GAME_INPUT_COMPOSITE;
    }

    public NullPlayerGameInputComposite() {
        base();
    }
    

    public virtual string getName() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public virtual void processInput(AllBinaryLayerManager layerManager) {
    }
    

    public virtual void initInputProcessors() {
    }
    

    public virtual PlayerGameInput getPlayerGameInput() {
        return NoPlayerGameInput.getInstance();
    }
}

