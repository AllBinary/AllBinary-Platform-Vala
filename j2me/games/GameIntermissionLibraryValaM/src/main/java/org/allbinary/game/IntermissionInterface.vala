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
// package org.allbinary.game
// import org.allbinary.time.TimeDelayHelper

public interface IntermissionInterface : JObject {
    

    public abstract TimeDelayHelper getTimeDelayHelper();
    

    public abstract bool isEnabled();
    

    public abstract void setEnabled(bool value);
    

    public abstract void setListener(IntermissionEnableListenerInterface enableListener);
}

