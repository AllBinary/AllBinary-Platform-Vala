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
// package org.allbinary.input.motion.button
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.image.opengles.OpenGLImageCacheFactory

public class TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory : TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory {
    

    public TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory() {
        base("OpenGL TouchButton Animations");
    }
    

    public override void init(int32 level) {
        base.initImageCache(OpenGLImageCacheFactory.getInstance(), level);
    }
    

    public override bool isFeature() {
        if (Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL)) {
            return true;
        } else {
            return false;
        }
    }
}

