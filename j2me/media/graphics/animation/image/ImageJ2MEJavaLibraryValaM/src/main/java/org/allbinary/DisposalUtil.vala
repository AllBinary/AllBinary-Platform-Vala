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
// import javax.microedition.lcdui.Image
// import org.eclipse.swt.graphics.Resource

public class DisposalUtil : JObject {
    private static DisposalUtil? instance;
    private static bool staticSet_instance = false;
    private static DisposalUtil staticGet_instance() {
        if (!DisposalUtil.staticSet_instance) {
            DisposalUtil.staticSet_instance = true;
            DisposalUtil.instance = new DisposalUtil();
        }
        return DisposalUtil.instance;
    }

    public DisposalUtil() {
        base();
    }
    

    public static DisposalUtil getInstance() {
        return DisposalUtil.staticGet_instance();
    }
    

    public virtual void disposeImage(Image image) {
    }
    

    public virtual void disposeResource(Resource resource) {
        if (!resource.isDisposed()) {
            resource.dispose();
        }
    }
}

