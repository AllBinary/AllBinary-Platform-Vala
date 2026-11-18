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
// package org.allbinary.globals

public class URLGLOBALS : JObject {
    private static UrlGlobalsInterface? urlGlobalsInterface;
    private static bool staticSet_urlGlobalsInterface = false;
    private static UrlGlobalsInterface staticGet_urlGlobalsInterface() {
        if (!URLGLOBALS.staticSet_urlGlobalsInterface) {
            URLGLOBALS.staticSet_urlGlobalsInterface = true;
            URLGLOBALS.urlGlobalsInterface = AppUrlGlobals.NULL_APP_URL_GLOBALS;
        }
        return URLGLOBALS.urlGlobalsInterface;
    }

    public URLGLOBALS() {
        base();
    }
    

    public static void init(UrlGlobalsInterface urlGlobalsInterface) {
        URLGLOBALS.urlGlobalsInterface = urlGlobalsInterface;
    }
    

    public static bool isTestingMode() {
        return URLGLOBALS.staticGet_urlGlobalsInterface().isTestingMode();
    }
    

    public static string getWebappPath() {
        return URLGLOBALS.staticGet_urlGlobalsInterface().getWebappPath();
    }
    

    public static string getTestHtmlPath() {
        return URLGLOBALS.staticGet_urlGlobalsInterface().getTestHtmlPath();
    }
    

    public static string getMainPath() {
        return URLGLOBALS.staticGet_urlGlobalsInterface().getMainPath();
    }
}

