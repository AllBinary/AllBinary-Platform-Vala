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
// package org.allbinary

//import org.allbinary.logic.communication.log.PreLogUtil;
public class AppletUtil : JObject {
    private static bool applet = false;
    

    public AppletUtil() {
        base();
    }
    

    public static void setApplet() {
        AppletUtil.applet = true;
    }
    

    public static bool isAppletLoader(JObject anyType) {
        return AppletUtil.applet;
    }
}

