/*
 * 
 * To change this license header, choose License Headers in Project Properties. 
 * To change this template file, choose Tools | Templates 
 * and open the template in the editor.  
 */
// Generated Code Do Not Modify
// package org.allbinary.game.multiplayer.layer
// import org.allbinary.logic.string.StringUtil

public class RemoteInfo : JObject {
    public const int32 NEW_PLAYER_ID = 0;
    public static RemoteInfo? REMOTE_INFO;
    private static bool staticSet_REMOTE_INFO = false;
    public static RemoteInfo staticGet_REMOTE_INFO() {
        if (!RemoteInfo.staticSet_REMOTE_INFO) {
            RemoteInfo.staticSet_REMOTE_INFO = true;
            RemoteInfo.REMOTE_INFO = new RemoteInfo(StringUtil.getInstance().EMPTY_STRING, -1, -1, RemoteInfo.NEW_PLAYER_ID);
        }
        return RemoteInfo.REMOTE_INFO;
    }
    

    public RemoteInfo(string username, int32 actorSessionId, int32 playerInputId, int32 id) {
        base();
    }
}

