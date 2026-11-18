/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary
// import javax.microedition.lcdui.Canvas

public class PostGameCommandFactory : JObject {
    private static PostGameCommandFactory? instance;
    private static bool staticSet_instance = false;
    private static PostGameCommandFactory staticGet_instance() {
        if (!PostGameCommandFactory.staticSet_instance) {
            PostGameCommandFactory.staticSet_instance = true;
            PostGameCommandFactory.instance = new PostGameCommandFactory();
        }
        return PostGameCommandFactory.instance;
    }

    public PostGameCommandFactory() {
        base();
    }
    

    public static PostGameCommandFactory getInstance() {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual void addCommands(Canvas canvas) {
    }
}

