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
// import org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.resource.ResourceLoadingLevelFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.image.ImageCache
// import org.allbinary.image.ImageCacheFactory
// import org.allbinary.logic.StdUtil

public class TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory : BaseResourceAnimationInterfaceFactoryInterfaceFactory {
    

    public static TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory createFactory() {
        return new TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory("TouchButton Animations");
    }
    

    public TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory(string name) {
        base(name, StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable());
    }
    

    public override void init(int32 level) {
        this.initImageCache(ImageCacheFactory.getInstance(), level);
    }
    

    public override void initImageCache(ImageCache imageCache, int32 level) {
        if (this.isInitialized()) {
            return;
        }
        base.init(level);
    }
    

    public override bool isLoadingLevel(int32 level) {
        ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        if (level == resourceLoadingLevelFactory.LOAD_TOUCH.getLevel()) {
            return true;
        } else {
            return base.isLoadingLevel(level);
        }
    }
    

    public override bool isFeature() {
        if (!Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL)) {
            return true;
        } else {
            return false;
        }
    }
}

