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
// import javax.microedition.lcdui.Image
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory
// import org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.resource.ResourceLoadingLevelFactory
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.image.ImageCache
// import org.allbinary.image.ImageCacheFactory
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.os.OperatingSystemFactory
// import org.allbinary.media.image.ImageCompleteUtil

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
        int32 portion = 140;
        string loadingString = new StringMaker().append(this.toString()).append(" Loading: ").toString();
        int32 index = 0;
        ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        progressCanvas.addPortion(portion, loadingString, index++);
        TouchButtonResource touchButtonBlankResource = TouchButtonBlankResource.getInstance();
        TouchButtonResource touchButtonGenericActionResource = TouchButtonGenericActionResource.getInstance();
        TouchButtonResource touchButtonStartResource = TouchButtonStartResource.getInstance();
        TouchButtonResource touchButtonUpResource = TouchButtonUpResource.getInstance();
        TouchButtonResource touchButtonDownResource = TouchButtonDownResource.getInstance();
        TouchButtonResource touchButtonTurnLeftResource = TouchButtonTurnLeftResource.getInstance();
        TouchButtonResource touchButtonTurnRightResource = TouchButtonTurnRightResource.getInstance();
        TouchButtonResource touchButtonStrafeLeftResource = TouchButtonStrafeLeftResource.getInstance();
        TouchButtonResource touchButtonStrafeRightResource = TouchButtonStrafeRightResource.getInstance();
        Image touchButtonBlankResourceImage = imageCache.getWithKey(JString.box(touchButtonBlankResource.RESOURCE));
        Image touchButtonGenericActionResourceImage = imageCache.getWithKey(JString.box(touchButtonGenericActionResource.RESOURCE));
        Image touchButtonStartResourceImage = imageCache.getWithKey(JString.box(touchButtonStartResource.RESOURCE));
        Image touchButtonUpResourceImage = imageCache.getWithKey(JString.box(touchButtonUpResource.RESOURCE));
        Image touchButtonDownResourceImage = imageCache.getWithKey(JString.box(touchButtonDownResource.RESOURCE));
        Image touchButtonTurnLeftResourceImage = imageCache.getWithKey(JString.box(touchButtonTurnLeftResource.RESOURCE));
        Image touchButtonTurnRightResourceImage = imageCache.getWithKey(JString.box(touchButtonTurnRightResource.RESOURCE));
        Image touchButtonStrafeLeftResourceImage = imageCache.getWithKey(JString.box(touchButtonStrafeLeftResource.RESOURCE));
        Image touchButtonStrafeRightResourceImage = imageCache.getWithKey(JString.box(touchButtonStrafeRightResource.RESOURCE));
        NullAnimationFactory nullAnimationFactory = NullAnimationFactory.getFactoryInstance();
        if (OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()) {
            imageCache.getWithKey(JString.box(TouchButtonStartResource.getInstance().HINT));
        }
        progressCanvas.addPortion(portion, loadingString, index++);
        ImageCompleteUtil imageCompleteUtil = ImageCompleteUtil.getInstance();
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonBlankResourceImage, touchButtonBlankResource.RESOURCE);
        this.add(touchButtonBlankResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonBlankResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonBlankResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonGenericActionResourceImage, touchButtonGenericActionResource.RESOURCE);
        this.add(touchButtonGenericActionResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonGenericActionResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonGenericActionResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonStartResourceImage, touchButtonStartResource.RESOURCE);
        this.add(touchButtonStartResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartResourceImage, AnimationBehaviorFactory.getInstance()));
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonUpResourceImage, touchButtonUpResource.RESOURCE);
        this.add(touchButtonUpResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonUpResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonUpResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonDownResourceImage, touchButtonDownResource.RESOURCE);
        this.add(touchButtonDownResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonDownResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonDownResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonTurnLeftResourceImage, touchButtonTurnLeftResource.RESOURCE);
        this.add(touchButtonTurnLeftResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnLeftResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonTurnLeftResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonTurnRightResourceImage, touchButtonTurnRightResource.RESOURCE);
        this.add(touchButtonTurnRightResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnRightResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonTurnRightResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonStrafeLeftResourceImage, touchButtonStrafeLeftResource.RESOURCE);
        this.add(touchButtonStrafeLeftResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeLeftResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonStrafeLeftResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonStrafeRightResourceImage, touchButtonStrafeRightResource.RESOURCE);
        this.add(touchButtonStrafeRightResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeRightResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonStrafeRightResource.HINT, nullAnimationFactory);
        if (OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()) {
            Image touchButtonStartHintResource = imageCache.getWithKey(JString.box(TouchButtonStartResource.getInstance().HINT));
            this.add(touchButtonStartResource.HINT, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartHintResource, AnimationBehaviorFactory.getInstance()));
        } else {
            this.add(touchButtonStartResource.HINT, nullAnimationFactory);
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

