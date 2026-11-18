// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Screen
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringUtil

public class ABCustomItem : JObject {
    public static JObject? NULL_CUSTOM_ITEM;
    private static bool staticSet_NULL_CUSTOM_ITEM = false;
    public static JObject staticGet_NULL_CUSTOM_ITEM() {
        if (!ABCustomItem.staticSet_NULL_CUSTOM_ITEM) {
            ABCustomItem.staticSet_NULL_CUSTOM_ITEM = true;
            ABCustomItem.NULL_CUSTOM_ITEM = NullUtil.getInstance().NULL_OBJECT;
        }
        return ABCustomItem.NULL_CUSTOM_ITEM;
    }
    

    public static ABCustomItem getNullInstance() {
        if (ABCustomItem.staticGet_NULL_CUSTOM_ITEM() == NullUtil.getInstance().NULL_OBJECT) {
            ABCustomItem.NULL_CUSTOM_ITEM = new ABCustomItem(StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return ((ABCustomItem) ABCustomItem.staticGet_NULL_CUSTOM_ITEM());
    }
    

    public ABCustomItem(string label, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        base();
    }
    

    public virtual void setOwner(Screen owner) {
    }
    

    public virtual void paintXY(Graphics graphics, int32 x, int32 y) {
    }
    

    public virtual void paintUnselected(Graphics graphics, int32 x, int32 y) {
    }
    

    public virtual bool isFocusable() {
        return false;
    }
    

    public virtual string getLabel() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public virtual void setLabel(string label) {
    }
    

    public virtual int32 getHeight() {
        return 0;
    }
    

    public virtual void setHeight(int32 height) {
    }
    

    public virtual float getValue() {
        return 0.0f;
    }
    

    public virtual void setValue(float value) {
    }
    

    public virtual int32 getMinimumWidth() {
        return 0;
    }
    

    public virtual int32 getMinimumHeight() {
        return 0;
    }
    

    public virtual void preMeasurement(Graphics graphics) {
    }
}

