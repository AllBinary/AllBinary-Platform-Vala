// Generated Code Do Not Modify
// package org.allbinary.animation
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColor

public class FillAnimation : IndexedAnimation {
    private int32[] pixelBuffer;
    private int32 width;
    private int32 height;

    // Java field initializers run after the base constructor
    private void initFieldsFillAnimation() {
    
    
    
    }
    

    public FillAnimation(int32[] pixelBuffer, int32 width, int32 height, AnimationBehavior animationBehavior) {
        base(animationBehavior);
        this.initFieldsFillAnimation();
        this.width = 100;
        this.height = 100;
        this.pixelBuffer = pixelBuffer;
    }
    

    public override void setBasicColorP(BasicColor basicColor) {
        bool changed = false;
        if (this.getBasicColorP() == null || this.getBasicColorP().intValue() != basicColor.intValue()) {
            changed = true;
        }
        base.setBasicColorP(basicColor);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    public override void changeBasicColor(BasicColor basicColor) {
        bool changed = false;
        if (this.getChangeBasicColor() == null || this.getChangeBasicColor().intValue() != basicColor.intValue()) {
            changed = true;
        }
        base.changeBasicColor(basicColor);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    public override void setAlpha(int32 alpha) {
        bool changed = false;
        if (this.alphaP != alpha) {
            changed = true;
        }
        base.setAlpha(alpha);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    public override void setScale(float scaleX, float scaleY) {
    }
    

    public override void setMaxScale(float maxScaleX, float maxScaleY) {
    }
    

    private void updateModifiers() {
    }
    

    public virtual void paint(Graphics g) {
        g.drawRGB(this.pixelBuffer, 0, this.width, 0, 0, this.width, this.height, true);
    }
}

