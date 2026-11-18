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

public interface KeyInterface : JObject {
    

    public abstract void keyPressed(int32 keyCode);
    

    public abstract void keyReleased(int32 keyCode);
    

    public abstract void keyPressedByDevice(int32 keyCode, int32 deviceId);
    

    public abstract void keyReleasedByDevice(int32 keyCode, int32 deviceId);
}

