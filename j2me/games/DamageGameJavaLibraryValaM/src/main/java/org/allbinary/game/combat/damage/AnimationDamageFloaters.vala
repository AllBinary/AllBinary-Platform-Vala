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
// package org.allbinary.game.combat.damage
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.CircularIndexUtil
// import org.allbinary.view.ViewPosition
// import org.allbinary.view.ViewPositionBase

public class AnimationDamageFloaters : DamageFloaters {
    public LogUtil logUtil;
    private AllBinaryLayer layerInterface;
    private IndexedAnimation[] animationInterfaceArray;
    private CircularIndexUtil circularIndexUtil;
    private int32 dx;
    private int32 dy;

    // Java field initializers run after the base constructor
    private void initFieldsAnimationDamageFloaters() {
    this.logUtil = LogUtil.getInstance();
    
    
    
    
    
    }
    

    public AnimationDamageFloaters(AllBinaryLayer layerInterface, IndexedAnimation[] animationInterfaceArray, int32 dx, int32 dy) {
        base();
        this.initFieldsAnimationDamageFloaters();
        this.animationInterfaceArray = animationInterfaceArray;
        for (int32 index = this.animationInterfaceArray.length - 1; index >= 0; index--) {
            this.animationInterfaceArray[index].setFrame(this.animationInterfaceArray[index].getSize() - 1);
        }
        this.layerInterface = layerInterface;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.animationInterfaceArray.length);
        this.dx = dx;
        this.dy = dy;
    }
    

    public override void add(int32 damage) {
        int32 i = this.circularIndexUtil.getIndex();
        this.animationInterfaceArray[i].setFrame(0);
        this.circularIndexUtil.next();
    }
    

    public override void paint(Graphics graphics) {
        {
            ViewPositionBase viewPosition = this.layerInterface.getViewPosition();
            int32 x = viewPosition.getX();
            int32 y = viewPosition.getY();
            for (int32 index = 0; index < this.animationInterfaceArray.length; index++) {
                IndexedAnimation animationInterface = this.animationInterfaceArray[index];
                if (animationInterface.getFrame() < animationInterface.getAnimationSize() - 1) {
                    int32 delta = animationInterface.getFrame() * 20;
                    animationInterface.paintXY(graphics, x + this.dx, y - delta + this.dy);
                    animationInterface.nextFrame();
                }
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

