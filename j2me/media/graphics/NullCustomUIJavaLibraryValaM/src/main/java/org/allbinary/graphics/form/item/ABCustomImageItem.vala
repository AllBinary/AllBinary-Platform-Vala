// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.NullImage
// import org.allbinary.graphics.color.BasicColor

public class ABCustomImageItem : ABCustomItem {
    public int32 yOffset;

    // Java field initializers run after the base constructor
    private void initFieldsABCustomImageItem() {
    this.yOffset = 0;
    }
    

    public ABCustomImageItem(string label, Image image, int32 layout, string altText, BasicColor basicColor, int32 yOffset) {
        base(label, basicColor, basicColor);
        this.initFieldsABCustomImageItem();
    }
    

    public virtual Image getImage() {
        return NullImage.NULL_IMAGE;
    }
}

