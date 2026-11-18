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
// package org.allbinary.bounds
// import org.allbinary.bounds.event.BoundsChangeEvent
// import org.allbinary.bounds.event.BoundsChangeEventListener
// import org.allbinary.graphics.Rectangle
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings

public class LayerBounds : JObject, BoundsChangeEventListener, EventListenerInterface {
    public LogUtil logUtil;
    public Rectangle rectangle;

    // Java field initializers run after the base constructor
    private void initFieldsLayerBounds() {
    this.logUtil = LogUtil.getInstance();
    
    }
    

    public LayerBounds(Rectangle rectangle) {
        base();
        this.initFieldsLayerBounds();
        this.rectangle = rectangle;
    }
    

    public virtual Rectangle getRectangleP() {
        return this.rectangle;
    }
    

    public virtual void visit(BoundsVisitorInterface boundsVisitorInterface) {
    }
    

    public virtual void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public virtual void onBoundsChangeEvent(BoundsChangeEvent boundsChangeEvent) {
        this.rectangle = boundsChangeEvent.getRectangle();
    }
}

