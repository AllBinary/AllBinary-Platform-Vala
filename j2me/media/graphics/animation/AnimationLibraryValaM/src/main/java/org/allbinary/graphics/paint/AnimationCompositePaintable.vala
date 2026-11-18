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
// package org.allbinary.graphics.paint
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation

public class AnimationCompositePaintable : InitUpdatePaintable {
    private Animation animationInterface;

    // Java field initializers run after the base constructor
    private void initFieldsAnimationCompositePaintable() {
    
    }
    

    public AnimationCompositePaintable(Animation animationInterface) {
        base();
        this.initFieldsAnimationCompositePaintable();
        this.animationInterface = animationInterface;
    }
    

    public override void paint(Graphics graphics) {
        this.animationInterface.paintXY(graphics, 0, 0);
    }
    

    public override void paintThreed(Graphics graphics) {
        this.animationInterface.paintThreedXYZ(graphics, 0, 0, 0);
    }
}

