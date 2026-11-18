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
// package org.allbinary.game.layer.pickup
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.view.ViewPosition

public class IconLayer : AllBinaryLayer {
    public static IconLayer? NULL_ICON_LAYER;
    private static bool staticSet_NULL_ICON_LAYER = false;
    public static IconLayer staticGet_NULL_ICON_LAYER() {
        if (!IconLayer.staticSet_NULL_ICON_LAYER) {
            IconLayer.staticSet_NULL_ICON_LAYER = true;
            IconLayer.NULL_ICON_LAYER = new IconLayer(NullAnimationFactory.getFactoryInstance().getInstance1(0), 0, 0);
        }
        return IconLayer.NULL_ICON_LAYER;
    }
    private Animation animationInterface;

    // Java field initializers run after the base constructor
    private void initFieldsIconLayer() {
    
    }
    

    public IconLayer(Animation animationInterface, int32 width, int32 height) {
        base(StringUtil.getInstance().EMPTY_STRING, new Rectangle(PointFactory.getInstance().ZERO_ZERO, width, height), ViewPosition.getInstanceD());
        this.initFieldsIconLayer();
        this.animationInterface = animationInterface;
    }
    

    public override void paint(Graphics graphics) {
        this.animationInterface.paintXY(graphics, this.x, this.y);
    }
    

    public override void paintThreed(Graphics graphics) {
        this.animationInterface.paintThreedXYZ(graphics, this.x, this.y, this.z);
    }
    

    public virtual Animation getAnimationInterface() {
        return this.animationInterface;
    }
}

