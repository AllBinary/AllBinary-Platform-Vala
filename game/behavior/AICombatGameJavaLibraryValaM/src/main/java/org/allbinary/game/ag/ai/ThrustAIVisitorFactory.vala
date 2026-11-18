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
// package org.allbinary.game.ag.ai

public class ThrustAIVisitorFactory : JObject {
    private static ThrustAIVisitor? instance;
    private static bool staticSet_instance = false;
    private static ThrustAIVisitor staticGet_instance() {
        if (!ThrustAIVisitorFactory.staticSet_instance) {
            ThrustAIVisitorFactory.staticSet_instance = true;
            ThrustAIVisitorFactory.instance = new ThrustAIVisitor();
        }
        return ThrustAIVisitorFactory.instance;
    }

    public ThrustAIVisitorFactory() {
        base();
    }
    

    public static ThrustAIVisitor getInstance() {
        return ThrustAIVisitorFactory.staticGet_instance();
    }
}

