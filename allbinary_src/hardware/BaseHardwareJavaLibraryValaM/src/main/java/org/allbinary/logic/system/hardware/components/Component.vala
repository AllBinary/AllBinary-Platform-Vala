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
// package org.allbinary.logic.system.hardware.components

public class Component : JObject {
    private string name;

    // Java field initializers run after the base constructor
    private void initFieldsComponent() {
    
    }
    

    public Component(string componentName) {
        base();
        this.initFieldsComponent();
        this.name = componentName;
    }
    

    public override string toString() {
        return this.name;
    }
}

