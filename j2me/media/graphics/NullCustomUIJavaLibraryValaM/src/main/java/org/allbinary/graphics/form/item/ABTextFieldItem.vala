// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Font
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.visitor.Visitor

public class ABTextFieldItem : ABTextItem {
    private Font font;

    // Java field initializers run after the base constructor
    private void initFieldsABTextFieldItem() {
    
    }
    

    public ABTextFieldItem(Canvas canvas, Visitor visitor, string label, string value, int32 maxSize, int32 layout, string altText, Font font, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        base(label, layout, altText, backgroundBasicColor, foregroundBasicColor);
        this.initFieldsABTextFieldItem();
        this.font = font;
    }
    

    public override string getLabel() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public override void setLabel(string label) {
    }
    

    public virtual string getString() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public virtual void setString(string string) {
    }
    

    public virtual void setFocus(bool state) {
    }
    

    public virtual int32 getFontHeight() {
        return this.font.getHeight();
    }
    

    public virtual void setBackgroundBasicColorP(BasicColor basicColor) {
    }
    

    public virtual void setForegroundBasicColorP(BasicColor basicColor) {
    }
}

