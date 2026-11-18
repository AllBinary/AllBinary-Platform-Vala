// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColor

public class ABTextItem : CustomCustomItem, ABCustomItemInterface {
    

    public ABTextItem(string label, int32 layout, string altText, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        base(label, backgroundBasicColor, foregroundBasicColor);
    }
    

    public virtual void keyPressed(int32 keyCode) {
    }
    

    public override void paintUnselected(Graphics graphics, int32 x, int32 y) {
    }
    

    public virtual ABStringComponent getLabelStringComponent() {
        return ABStringComponent.NULL_STRING_COMPONENT;
    }
    

    public override int32 getMinimumWidth() {
        return base.getMinimumWidth();
    }
    

    public override int32 getMinimumHeight() {
        return base.getMinimumHeight();
    }
    

    public override string getLabel() {
        return base.getLabel();
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        base.paintXY(graphics, x, y);
    }
}

