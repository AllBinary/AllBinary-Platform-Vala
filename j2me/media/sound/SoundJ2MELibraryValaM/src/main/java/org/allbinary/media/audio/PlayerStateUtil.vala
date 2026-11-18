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
// package org.allbinary.media.audio
// import javax.microedition.media.Player
// import org.allbinary.string.CommonStrings

public class PlayerStateUtil : JObject {
    private static PlayerStateUtil? instance;
    private static bool staticSet_instance = false;
    private static PlayerStateUtil staticGet_instance() {
        if (!PlayerStateUtil.staticSet_instance) {
            PlayerStateUtil.staticSet_instance = true;
            PlayerStateUtil.instance = new PlayerStateUtil();
        }
        return PlayerStateUtil.instance;
    }
    private CommonStrings commonStrings;
    public string UNREALIZED;
    public string REALIZED;
    public string PREFETCHED;
    public string STARTED;
    public string CLOSED;

    // Java field initializers run after the base constructor
    private void initFieldsPlayerStateUtil() {
    this.commonStrings = CommonStrings.getInstance();
    this.UNREALIZED = "UNREALIZED";
    this.REALIZED = "REALIZED";
    this.PREFETCHED = "PREFETCHED";
    this.STARTED = "STARTED";
    this.CLOSED = "CLOSED";
    }

    public PlayerStateUtil() {
        base();
        this.initFieldsPlayerStateUtil();
    }
    

    public static PlayerStateUtil getInstance() {
        return PlayerStateUtil.staticGet_instance();
    }
    

    public virtual string convert(int32 state) {
        if (state == Player.UNREALIZED) {
            return this.UNREALIZED;
        } else if (state == Player.REALIZED) {
            return this.REALIZED;
        } else if (state == Player.PREFETCHED) {
            return this.PREFETCHED;
        } else if (state == Player.STARTED) {
            return this.STARTED;
        } else if (state == Player.CLOSED) {
            return this.CLOSED;
        }
        return this.commonStrings.UNKNOWN;
    }
}

