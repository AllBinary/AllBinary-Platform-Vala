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
// package org.allbinary.game.combat.destroy.event
// import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class DestroyedEventHandler : BasicEventHandler {
    private static DestroyedEventHandler? instance;
    private static bool staticSet_instance = false;
    private static DestroyedEventHandler staticGet_instance() {
        if (!DestroyedEventHandler.staticSet_instance) {
            DestroyedEventHandler.staticSet_instance = true;
            DestroyedEventHandler.instance = new DestroyedEventHandler();
        }
        return DestroyedEventHandler.instance;
    }
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsDestroyedEventHandler() {
    this.list = new BasicArrayListD();
    }
    

    public static DestroyedEventHandler getInstance() {
        return DestroyedEventHandler.staticGet_instance();
    }
    

    public DestroyedEventHandler() {
        base();
        this.initFieldsDestroyedEventHandler();
    }
    

    public virtual void addListener(CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer) {
        if (!this.list.contains(collidableDestroyableDamageableLayer)) {
            this.list.add(collidableDestroyableDamageableLayer);
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
                CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer = ((CollidableDestroyableDamageableLayer) this.list.objectArray[index]);
                collidableDestroyableDamageableLayer.onDestroyed(((DestroyedEvent) eventObject));
            } /* catch (Exception e): a thrown Java exception stops the program */
        }
        base.fireEvent(eventObject);
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        DestroyedEventListenerInterface destroyedEventListenerInterface = ((DestroyedEventListenerInterface) eventListenerInterface);
        destroyedEventListenerInterface.onDestroyed(((DestroyedEvent) eventObject));
    }
}

