// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor

public class CustomCustomItem : ABCustomItem, UpdateMyFontInterface {
    public MyFontProcessor updateMyFontProcessor;
    public MyFontProcessor myFontProcessor;

    // Java field initializers run after the base constructor
    private void initFieldsCustomCustomItem() {
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    public CustomCustomItem(string label, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        base(label, backgroundBasicColor, foregroundBasicColor);
        this.initFieldsCustomCustomItem();
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
    }
}

