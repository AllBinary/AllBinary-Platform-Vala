// Generated Code Do Not Modify
// package org.allbinary.animation.vector
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColorFactory

public class ARectangleFilledAnimation : RectangleFilledAnimation {
    public int32 x;
    public int32 y;

    // Java field initializers run after the base constructor
    private void initFieldsARectangleFilledAnimation() {
    this.x = 0;
    this.y = 0;
    }
    

    public ARectangleFilledAnimation() {
        base(0, 0, BasicColorFactory.getInstance().BLACK);
        this.initFieldsARectangleFilledAnimation();
    }
    

    public override void nextFrame() {
    }
    

    public override void paintXY(Graphics graphics, int32 unusedX, int32 unusedY) {
        base.paintXY(graphics, this.x, this.y);
    }
}

