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

public class LastKeyAIVisitorFactory : JObject {
    private static LastKeyAIVisitor? instance;
    private static bool staticSet_instance = false;
    private static LastKeyAIVisitor staticGet_instance() {
        if (!LastKeyAIVisitorFactory.staticSet_instance) {
            LastKeyAIVisitorFactory.staticSet_instance = true;
            LastKeyAIVisitorFactory.instance = new LastKeyAIVisitor();
        }
        return LastKeyAIVisitorFactory.instance;
    }

    public LastKeyAIVisitorFactory() {
        base();
    }
    

    public static LastKeyAIVisitor getInstance() {
        return LastKeyAIVisitorFactory.staticGet_instance();
    }
}

