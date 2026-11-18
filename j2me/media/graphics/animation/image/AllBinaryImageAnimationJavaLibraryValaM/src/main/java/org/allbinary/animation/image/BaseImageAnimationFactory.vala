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
// package org.allbinary.animation.image
// import javax.microedition.lcdui.Image
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.animation.AnimationInterfaceFactoryInterface
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.image.AnimationFactoryImageScaleUtil
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.media.ScaleProperties
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps

public class BaseImageAnimationFactory : JObject, AnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    public AnimationFactoryImageScaleUtil animationFactoryImageScaleUtil;
    private Image image;
    public AnimationBehaviorFactory animationBehaviorFactory;
    private int32[] sequenceArray;
    public AnimationFactoryInitializationVisitor animationFactoryInitializationVisitor;
    public ScaleProperties scaleProperties;

    // Java field initializers run after the base constructor
    private void initFieldsBaseImageAnimationFactory() {
    this.animationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil.getInstance();
    
    
    
    
    this.scaleProperties = ScaleProperties.instance;
    }
    

    public static BaseImageAnimationFactory createFactoryBase(Image image, int32[] sequenceArray, int32 width, int32 height, AnimationBehaviorFactory animationBehaviorFactory) {
        return new BaseImageAnimationFactory(image, sequenceArray, width, height, 0, 0, animationBehaviorFactory);
    }
    

    public BaseImageAnimationFactory(Image image, int32[] sequenceArray, int32 width, int32 height, int32 dx, int32 dy, AnimationBehaviorFactory animationBehaviorFactory) {
        base();
        this.initFieldsBaseImageAnimationFactory();
        this.animationFactoryInitializationVisitor = new AnimationFactoryInitializationVisitor();
        this.image = image;
        this.animationFactoryInitializationVisitor.width = width;
        this.animationFactoryInitializationVisitor.height = height;
        this.animationBehaviorFactory = animationBehaviorFactory;
        this.sequenceArray = sequenceArray;
        this.animationFactoryInitializationVisitor.dx = dx;
        this.animationFactoryInitializationVisitor.dy = dy;
    }
    

    public virtual Animation getInstance1(int32 instanceId) {
        return NullAnimationFactory.getFactoryInstance().getInstance1(instanceId);
    }
    

    public virtual Image getImage() {
        return this.image;
    }
    

    public virtual int32[] getSequenceArray() {
        return this.sequenceArray;
    }
    

    public virtual void setInitialScale(ScaleProperties scaleProperties) {
        this.scaleProperties = scaleProperties;
        if (this.scaleProperties.shouldScale) {
            this.scaleProperties.scaleWidth = ((int32) JMath.toInt32((((float) (this.animationFactoryInitializationVisitor.width)) * this.scaleProperties.scaleX)));
            this.scaleProperties.scaleHeight = ((int32) JMath.toInt32((((float) (this.animationFactoryInitializationVisitor.height)) * this.scaleProperties.scaleY)));
        } else {
        }
    }
    

    public virtual AnimationFactoryInitializationVisitor getAnimationFactoryInitializationVisitorP() {
        return this.animationFactoryInitializationVisitor;
    }
    

    public virtual ScaleProperties getScalePropertiesP() {
        return this.scaleProperties;
    }
    

    public override string toString() {
        CommonSeps commonSeps = CommonSeps.getInstance();
        CommonLabels commonLabels = CommonLabels.getInstance();
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(base.toString());
        stringBuffer.append(commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(((int32) (this.image.getHeight())));
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(this.animationFactoryInitializationVisitor.toString());
        return stringBuffer.toString();
    }
}

