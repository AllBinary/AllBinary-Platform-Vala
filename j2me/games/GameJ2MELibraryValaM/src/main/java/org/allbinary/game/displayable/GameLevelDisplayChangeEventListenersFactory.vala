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
// package org.allbinary.game.displayable
// import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler
// import org.allbinary.graphics.displayable.event.DisplayChangeEventListener
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class GameLevelDisplayChangeEventListenersFactory : JObject {
    private static GameLevelDisplayChangeEventListenersFactory? instance;
    private static bool staticSet_instance = false;
    private static GameLevelDisplayChangeEventListenersFactory staticGet_instance() {
        if (!GameLevelDisplayChangeEventListenersFactory.staticSet_instance) {
            GameLevelDisplayChangeEventListenersFactory.staticSet_instance = true;
            GameLevelDisplayChangeEventListenersFactory.instance = new GameLevelDisplayChangeEventListenersFactory();
        }
        return GameLevelDisplayChangeEventListenersFactory.instance;
    }
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsGameLevelDisplayChangeEventListenersFactory() {
    this.list = new BasicArrayListD();
    }

    public GameLevelDisplayChangeEventListenersFactory() {
        base();
        this.initFieldsGameLevelDisplayChangeEventListenersFactory();
    }
    

    public static GameLevelDisplayChangeEventListenersFactory getInstance() {
        return GameLevelDisplayChangeEventListenersFactory.staticGet_instance();
    }
    

    public virtual void add(DisplayChangeEventListener displayChangeEventListener) {
        this.list.add(displayChangeEventListener);
        DisplayChangeEventHandler.getInstance().addListenerInterface(displayChangeEventListener);
    }
    

    public virtual void clear() {
        BasicEventHandler displayChangeEventHandler = DisplayChangeEventHandler.getInstance();
        DisplayChangeEventListener displayChangeEventListener = null;
        for (int32 index = this.list.size(); --index >= 0; ) {
            displayChangeEventListener = ((DisplayChangeEventListener) this.list.objectArray[index]);
            displayChangeEventHandler.removeListener(displayChangeEventListener);
        }
        this.list.clear();
    }
}

