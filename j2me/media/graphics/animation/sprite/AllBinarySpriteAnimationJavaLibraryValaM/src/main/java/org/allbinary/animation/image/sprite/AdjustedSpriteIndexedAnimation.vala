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
// package org.allbinary.animation.image.sprite
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.game.Sprite
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorUtil

public class AdjustedSpriteIndexedAnimation : SpriteIndexedAnimation {
    private int32 dx;
    private int32 dy;

    // Java field initializers run after the base constructor
    private void initFieldsAdjustedSpriteIndexedAnimation() {
    
    
    }
    

    public AdjustedSpriteIndexedAnimation(Sprite sprite, Image image, BasicColor[] basicColorArray, int32 dx, int32 dy, AnimationBehavior animationBehavior) {
        base(sprite, image, basicColorArray, animationBehavior);
        this.initFieldsAdjustedSpriteIndexedAnimation();
        this.dx = dx;
        this.dy = dy;
    }
    

    public override void paintFrame(Graphics graphics, int32 frame, int32 x, int32 y) {
        this.setFrame(frame);
        this.sprite.setPosition(x + this.dx, y + this.dy);
        base.paint(graphics);
    }
    

    public override void paintXY(Graphics g, int32 x, int32 y) {
        this.sprite.setPosition(x + this.dx, y + this.dy);
        base.paint(g);
    }
    

    public override void paint(Graphics g) {
        this.sprite.setPosition(this.dx, this.dy);
        base.paint(g);
    }
}

