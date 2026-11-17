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
// package org.allbinary.logic.util.event.handler
// import jsinterop.annotations.JsType
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.util.BasicArrayList
// import jsinterop.annotations.JsMethod

public interface BasicEventHandlerInterface : JObject {
    

    public abstract void addListenerInterface(EventListenerInterface eventListenerInterface);
    

    public abstract void addListeners(BasicArrayList basicArrayList);
    

    public abstract void fireEvent(AllBinaryEventObject eventObject);
    

    public abstract void removeAllListeners();
    

    public abstract void removeListener(EventListenerInterface eventListenerInterface);
}

