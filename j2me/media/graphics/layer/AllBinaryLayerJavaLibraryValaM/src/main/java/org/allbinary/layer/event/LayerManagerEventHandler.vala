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
// package org.allbinary.layer.event
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class LayerManagerEventHandler : BasicEventHandler {
    private static LayerManagerEventHandler? instance;
    private static bool staticSet_instance = false;
    private static LayerManagerEventHandler staticGet_instance() {
        if (!LayerManagerEventHandler.staticSet_instance) {
            LayerManagerEventHandler.staticSet_instance = true;
            LayerManagerEventHandler.instance = new LayerManagerEventHandler();
        }
        return LayerManagerEventHandler.instance;
    }
    private BasicArrayList list;
    public string CREATE;
    public string DELETE;

    // Java field initializers run after the base constructor
    private void initFieldsLayerManagerEventHandler() {
    this.list = new BasicArrayListD();
    this.CREATE = "Create";
    this.DELETE = "Delete";
    }
    

    public static LayerManagerEventHandler getInstance() {
        return LayerManagerEventHandler.staticGet_instance();
    }
    

    public LayerManagerEventHandler() {
        base();
        this.initFieldsLayerManagerEventHandler();
    }
    

    public virtual void addListener(LayerManagerEventListener layerManagerEventListener) {
        if (!this.list.contains(layerManagerEventListener)) {
            this.list.add(layerManagerEventListener);
        }
    }
    

    public override void removeAllListeners() {
        this.list.clear();
        base.removeAllListeners();
    }
    

    public override void removeListener(EventListenerInterface eventListenerInterface) {
        this.list.remove(eventListenerInterface);
        base.removeListener(eventListenerInterface);
    }
    

    public override void fireEvent(AllBinaryEventObject eventObject) {
        for (int32 index = this.list.size(); --index >= 0; ) {
            {
                LayerManagerEventListener layerManagerEventListener = ((LayerManagerEventListener) this.list.objectArray[index]);
                layerManagerEventListener.onCreateLayerManagerEvent(((LayerManagerEvent) eventObject));
            } /* catch (Exception e): a thrown Java exception stops the program */
        }
        base.fireEvent(eventObject);
    }
    

    public virtual void fireDeleteEvent(AllBinaryEventObject eventObject) {
        for (int32 index = this.list.size(); --index >= 0; ) {
            {
                LayerManagerEventListener layerManagerEventListener = ((LayerManagerEventListener) this.list.objectArray[index]);
                layerManagerEventListener.onDeleteLayerManagerEvent(((LayerManagerEvent) eventObject));
            } /* catch (Exception e): a thrown Java exception stops the program */
        }
        BasicArrayList eventListenerInterfaceList = this.eventListenerInterfaceList;
        EventListenerInterface eventListenerInterface = null;
        LayerManagerEventListenerInterface layerManagerEventListenerInterface = null;
        int32 listenerIndex = 0;
        while (listenerIndex < eventListenerInterfaceList.size()) {
            {
                eventListenerInterface = ((EventListenerInterface) eventListenerInterfaceList.objectArray[listenerIndex]);
                layerManagerEventListenerInterface = (((LayerManagerEventListenerInterface) eventListenerInterface));
                layerManagerEventListenerInterface.onDeleteLayerManagerEvent(((LayerManagerEvent) eventObject));
            } /* catch (Exception e): a thrown Java exception stops the program */
            listenerIndex++;
        }
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        LayerManagerEventListenerInterface layerManagerEventListenerInterface = (((LayerManagerEventListenerInterface) eventListenerInterface));
        layerManagerEventListenerInterface.onCreateLayerManagerEvent(((LayerManagerEvent) eventObject));
    }
}

