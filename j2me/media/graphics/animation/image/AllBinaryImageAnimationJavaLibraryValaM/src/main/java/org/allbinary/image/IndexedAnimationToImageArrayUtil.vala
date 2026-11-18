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
// import javax.microedition.lcdui.Image
// import org.allbinary.animation.IndexedAnimation

public class IndexedAnimationToImageArrayUtil : JObject {

    public IndexedAnimationToImageArrayUtil() {
        base();
    }
    

    public static Image[] getInstance3(int32 width, int32 height, IndexedAnimation sequentialAnimationInterface) {
        int32 size = sequentialAnimationInterface.getAnimationSize();
        Image[] imageArray = new Image[size];
        for (int32 index = 0; index < size; index++) {
            sequentialAnimationInterface.setFrame(index);
            imageArray[index] = AnimationFrameToImageUtil.getInstance().getInstanceWH(width, height, sequentialAnimationInterface);
        }
        return imageArray;
    }
}

