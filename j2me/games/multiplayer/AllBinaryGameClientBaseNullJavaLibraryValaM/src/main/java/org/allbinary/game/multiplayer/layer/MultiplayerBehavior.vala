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
// package org.allbinary.game.multiplayer.layer
// import org.allbinary.logic.string.StringUtil

public class MultiplayerBehavior : JObject {
    public static MultiplayerBehavior? NULL_MULTIPLAYER_BEHAVIOR;
    private static bool staticSet_NULL_MULTIPLAYER_BEHAVIOR = false;
    public static MultiplayerBehavior staticGet_NULL_MULTIPLAYER_BEHAVIOR() {
        if (!MultiplayerBehavior.staticSet_NULL_MULTIPLAYER_BEHAVIOR) {
            MultiplayerBehavior.staticSet_NULL_MULTIPLAYER_BEHAVIOR = true;
            MultiplayerBehavior.NULL_MULTIPLAYER_BEHAVIOR = new MultiplayerBehavior(StringUtil.getInstance().EMPTY_STRING);
        }
        return MultiplayerBehavior.NULL_MULTIPLAYER_BEHAVIOR;
    }
    

    public MultiplayerBehavior(string username) {
        base();
    }
    

    public virtual void startTick() {
    }
    

    public virtual void endTick() {
    }
    

    public virtual int64 getApproximateElapsed() {
        return 0;
    }
}

