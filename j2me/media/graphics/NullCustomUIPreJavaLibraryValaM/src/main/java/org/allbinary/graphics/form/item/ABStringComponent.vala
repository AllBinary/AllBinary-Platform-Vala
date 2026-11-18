// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory

public class ABStringComponent : JObject {
    public static ABStringComponent? NULL_STRING_COMPONENT;
    private static bool staticSet_NULL_STRING_COMPONENT = false;
    public static ABStringComponent staticGet_NULL_STRING_COMPONENT() {
        if (!ABStringComponent.staticSet_NULL_STRING_COMPONENT) {
            ABStringComponent.staticSet_NULL_STRING_COMPONENT = true;
            ABStringComponent.NULL_STRING_COMPONENT = new ABStringComponent(BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return ABStringComponent.NULL_STRING_COMPONENT;
    }
    

    public virtual BasicColor getBackgroundBasicColor() {
        return BasicColorFactory.getInstance().WHITE;
    }
    

    public ABStringComponent(BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        base();
    }
    

    public virtual BasicColor getForegroundBasicColor() {
        return BasicColorFactory.getInstance().WHITE;
    }
    

    public virtual void setForegroundBasicColor(BasicColor foregroundBasicColor) {
    }
}

