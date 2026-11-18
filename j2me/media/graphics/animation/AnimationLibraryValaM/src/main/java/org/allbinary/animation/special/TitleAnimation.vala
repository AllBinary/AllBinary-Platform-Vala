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
// package org.allbinary.animation.special
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.animation.IndexedAnimationBehavior
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.logic.ABSystemWrapper
// import org.allbinary.logic.math.PrimitiveIntUtil

public class TitleAnimation : SpecialAnimation {
    public ABSystemWrapper systemWrapper;
    public float deltaX;
    public float deltaY;
    public float deltaZ;
    public BasicColor[] basicColorArray;
    public int32[] dxArray;
    public int32[] dyArray;
    public int32 widthP;
    public IndexedAnimation[] animationInterfaceArray;
    public int32 sizeP;
    public int32 y;
    private int64 lastFrameStartTime;
    private DisplayInfoSingleton displayInfoSingleton;
    public BasicColor CLEAR_COLOR;

    // Java field initializers run after the base constructor
    private void initFieldsTitleAnimation() {
    this.systemWrapper = ABSystemWrapper.getInstance();
    this.deltaX = 0.0;
    this.deltaY = 0.0;
    this.deltaZ = 0.0;
    
    
    
    
    
    
    
    
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.CLEAR_COLOR = BasicColorFactory.getInstance().CLEAR_COLOR;
    }
    

    public static TitleAnimation createAnimation(IndexedAnimation[] animationInterfaceArray, BasicColor[] basicColorArray, int32[] dxArray, int32[] dyArray, int32 y, int32 width) {
        return new TitleAnimation(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, new IndexedAnimationBehavior(1, 250));
    }
    

    public TitleAnimation(IndexedAnimation[] animationInterfaceArray, BasicColor[] basicColorArray, int32[] dxArray, int32[] dyArray, int32 y, int32 width, AnimationBehavior animationBehavior) {
        base(animationBehavior);
        this.initFieldsTitleAnimation();
        this.lastFrameStartTime = this.systemWrapper.currentTimeMillis();
        this.animationInterfaceArray = animationInterfaceArray;
        this.sizeP = this.animationInterfaceArray.length;
        this.basicColorArray = basicColorArray;
        this.dxArray = dxArray;
        this.dyArray = dyArray;
        this.y = y;
        this.widthP = width;
        this.reset();
    }
    

    public override void nextFrame() {
        int64 currentTime = this.systemWrapper.currentTimeMillis();
        int64 totalTimeElapsed = currentTime - this.lastFrameStartTime;
        IndexedAnimationBehavior indexedAnimationBehavior = ((IndexedAnimationBehavior) this.getAnimationBehavior());
        if (totalTimeElapsed > indexedAnimationBehavior.frameDelayTime) {
            this.previousFrame();
            this.lastFrameStartTime = currentTime;
        }
        if (this.animationInterfaceArray[0].getFrame() == 0) {
            indexedAnimationBehavior.loopIndex++;
        }
    }
    

    public override bool isComplete() {
        IndexedAnimationBehavior indexedAnimationBehavior = ((IndexedAnimationBehavior) this.getAnimationBehavior());
        if (indexedAnimationBehavior.loopTotal == -1 || indexedAnimationBehavior.loopIndex < indexedAnimationBehavior.loopTotal || this.getFrame() != 0) {
            return false;
        } else {
            return true;
        }
    }
    

    public override void setSequence(int32[] sequence) {
    }
    

    public override int32[] getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    public override int32 getSize() {
        return this.animationInterfaceArray[0].getSize();
    }
    

    public override int32 getFrame() {
        return this.animationInterfaceArray[0].getFrame();
    }
    

    public override void setFrame(int32 frame) {
        for (int32 index = 0; index < this.sizeP; index++) {
            this.animationInterfaceArray[index].setFrame(frame);
        }
    }
    

    public override void setLastFrame() {
        this.setFrame(this.getSize() - 1);
    }
    

    public override void reset() {
        this.setLastFrame();
        IndexedAnimationBehavior indexedAnimationBehavior = (((IndexedAnimationBehavior) this.getAnimationBehavior()));
        indexedAnimationBehavior.reset();
    }
    

    public override void previousFrame() {
        for (int32 index = 0; index < this.sizeP; index++) {
            this.animationInterfaceArray[index].previousFrame();
        }
    }
    

    public virtual void paintFrameXY(Graphics graphics, int32 frame, int32 x, int32 y) {
        this.setFrame(frame);
        this.paintXY(graphics, x, y);
    }
    

    public override void paintXY(Graphics graphics, int32 ax, int32 ay) {
        int32 x = 0;
        if (this.widthP != Integer.MIN_VALUE) {
            x = ((this.displayInfoSingleton.getLastWidth() - this.widthP) / 2);
        }
        int32 deltaX = 0;
        int32 deltaY = 0;
        for (int32 index = 0; index < this.sizeP; index++) {
            deltaX = this.dxArray[index] + x;
            deltaY = this.dyArray[index] + this.y;
            if (this.basicColorArray[index] != this.CLEAR_COLOR) {
                this.basicSetColorUtil.setBasicColorP(graphics, this.basicColorArray[index]);
            }
            this.animationInterfaceArray[index].paintXY(graphics, deltaX, deltaY);
        }
    }
}

