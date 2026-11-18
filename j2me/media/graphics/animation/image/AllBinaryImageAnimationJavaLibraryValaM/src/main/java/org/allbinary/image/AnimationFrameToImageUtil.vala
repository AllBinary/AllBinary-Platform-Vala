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
// package org.allbinary.image
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Image
// import org.allbinary.animation.Animation

public class AnimationFrameToImageUtil : JObject {
    private static AnimationFrameToImageUtil? instance;
    private static bool staticSet_instance = false;
    private static AnimationFrameToImageUtil staticGet_instance() {
        if (!AnimationFrameToImageUtil.staticSet_instance) {
            AnimationFrameToImageUtil.staticSet_instance = true;
            AnimationFrameToImageUtil.instance = new AnimationFrameToImageUtil();
        }
        return AnimationFrameToImageUtil.instance;
    }

    public AnimationFrameToImageUtil() {
        base();
    }
    

    public static AnimationFrameToImageUtil getInstance() {
        return AnimationFrameToImageUtil.staticGet_instance();
    }
    

    public virtual Image getInstanceTranslate(int32 width, int32 height, Animation animationInterface) {
        Image image = GameFeatureImageCacheFactory.getInstance().@get(JObject.className(AnimationFrameToImageUtil.staticGet_instance()), ((width * 3) >> 1), ((height * 3) >> 1));
        Graphics graphics = image.getGraphics();
        int32 tranlateX = (width >> 2);
        int32 tranlateY = (height >> 2);
        graphics.translate(tranlateX, tranlateY);
        animationInterface.paintXY(graphics, 0, 0);
        graphics.translate(-tranlateX, -tranlateY);
        return image;
    }
    

    public virtual Image getInstanceWH(int32 width, int32 height, Animation animationInterface) {
        Image image = GameFeatureImageCacheFactory.getInstance().@get(JObject.className(AnimationFrameToImageUtil.staticGet_instance()), width, height);
        Graphics graphics = image.getGraphics();
        animationInterface.paintXY(graphics, 0, 0);
        return image;
    }
}

