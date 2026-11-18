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
// package org.allbinary.game.input.mapping.event
// import org.allbinary.game.input.mapping.InputToGameKeyMapping
// import org.allbinary.logic.util.event.AllBinaryEventObject

public class InputMappingEvent : AllBinaryEventObject {
    private InputToGameKeyMapping inputToGameKeyMapping;

    // Java field initializers run after the base constructor
    private void initFieldsInputMappingEvent() {
    this.inputToGameKeyMapping = InputToGameKeyMapping.getNullInstance();
    }
    

    public InputMappingEvent(JObject anyType) {
        base(anyType);
        this.initFieldsInputMappingEvent();
    }
    

    public virtual void setInputToGameKeyMapping(InputToGameKeyMapping inputToGameKeyMapping) {
        this.inputToGameKeyMapping = inputToGameKeyMapping;
    }
    

    public virtual InputToGameKeyMapping getInputToGameKeyMapping() {
        return this.inputToGameKeyMapping;
    }
}

