/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.apache.xmlrpc
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.logic.NullUtil

public class NullXmlRpcHandler : JObject, XmlRpcHandler {
    public static NullXmlRpcHandler? NULL_XML_RPC_HANDLER;
    private static bool staticSet_NULL_XML_RPC_HANDLER = false;
    public static NullXmlRpcHandler staticGet_NULL_XML_RPC_HANDLER() {
        if (!NullXmlRpcHandler.staticSet_NULL_XML_RPC_HANDLER) {
            NullXmlRpcHandler.staticSet_NULL_XML_RPC_HANDLER = true;
            NullXmlRpcHandler.NULL_XML_RPC_HANDLER = new NullXmlRpcHandler();
        }
        return NullXmlRpcHandler.NULL_XML_RPC_HANDLER;
    }

    public NullXmlRpcHandler() {
        base();
    }
    

    public virtual JObject execute(string method, BasicArrayList @params) {
        return NullUtil.getInstance().NULL_OBJECT;
    }
}

