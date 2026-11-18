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
// package org.allbinary.game.part
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.math.PrimitiveLongUtil
// import org.allbinary.util.ABHashtable

public class CountedLayerInterfaceFactoryPart : JObject, PartInterface, UpdateMyFontInterface, PaintableInterface, AnimationInterfaceCompositeInterface {
    public static CountedLayerInterfaceFactoryPart? NULL_COUNTED_LAYER_INTERFACE_FACTORY;
    private static bool staticSet_NULL_COUNTED_LAYER_INTERFACE_FACTORY = false;
    public static CountedLayerInterfaceFactoryPart staticGet_NULL_COUNTED_LAYER_INTERFACE_FACTORY() {
        if (!CountedLayerInterfaceFactoryPart.staticSet_NULL_COUNTED_LAYER_INTERFACE_FACTORY) {
            CountedLayerInterfaceFactoryPart.staticSet_NULL_COUNTED_LAYER_INTERFACE_FACTORY = true;
            CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY = new CountedLayerInterfaceFactoryPart(0, CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY);
        }
        return CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY;
    }
    private MyFontProcessor updateMyFontProcessor;
    private MyFontProcessor myFontProcessor;
    private Animation animationInterface;
    private int32 total;
    private uint16[] totalString;
    private int32 xOffset;
    private CountedPickedUpLayerInterfaceFactory countedPickedUpLayerInterfaceFactory;
    private PrimitiveLongUtil primitiveLongUtil;

    // Java field initializers run after the base constructor
    private void initFieldsCountedLayerInterfaceFactoryPart() {
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance1(0);
    this.total = 0;
    this.totalString = NullUtil.getInstance().NULL_CHAR_ARRAY;
    this.xOffset = 0;
    this.countedPickedUpLayerInterfaceFactory = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
    
    }
    

    public CountedLayerInterfaceFactoryPart(int32 total, CountedPickedUpLayerInterfaceFactory countedPickedUpLayerInterfaceFactory) {
        base();
        this.initFieldsCountedLayerInterfaceFactoryPart();
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(1000);
        this.init(total, countedPickedUpLayerInterfaceFactory);
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.setXOffset(font.charsWidth(this.totalString, 0, this.primitiveLongUtil.getCurrentTotalDigits()) + (font.getSize() >> 1));
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    private void init(int32 total, CountedPickedUpLayerInterfaceFactory countedPickedUpLayerInterfaceFactory) {
        this.setCountedPickedUpLayerInterfaceFactory(countedPickedUpLayerInterfaceFactory);
        this.total = total;
    }
    

    public virtual AllBinaryLayer getInstance4(ABHashtable hashtable, int32 x, int32 y, int32 z) {
        if (this.total > 0) {
            this.setTotal(this.total - 1);
            return this.getCountedPickedUpLayerInterfaceFactory().getNextInstance(hashtable, x, y, z);
        } else {
            JSystem.fatal(new JException("Exception", "No more left. Could use a listener to automatically remove"));
        }
    }
    

    public virtual int32 getTotal() {
        return this.total;
    }
    

    public virtual void setTotal(int32 total) {
        this.total = total;
        this.totalString = this.primitiveLongUtil.getCharArray(total);
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    public virtual void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
    }
    

    public virtual void paintThreed(Graphics graphics) {
    }
    

    public virtual Animation getAnimationInterface() {
        return this.animationInterface;
    }
    

    public virtual void setAnimationInterface(Animation animationInterface) {
        this.animationInterface = animationInterface;
    }
    

    public virtual int32 getXOffset() {
        return this.xOffset;
    }
    

    private void setXOffset(int32 totalStringWidth) {
        this.xOffset = totalStringWidth;
    }
    

    public virtual uint16[] getTotalString() {
        return this.totalString;
    }
    

    public virtual CountedPickedUpLayerInterfaceFactory getCountedPickedUpLayerInterfaceFactory() {
        return this.countedPickedUpLayerInterfaceFactory;
    }
    

    public virtual void setCountedPickedUpLayerInterfaceFactory(CountedPickedUpLayerInterfaceFactory countedPickedUpLayerInterfaceFactory) {
        this.countedPickedUpLayerInterfaceFactory = countedPickedUpLayerInterfaceFactory;
    }
}

