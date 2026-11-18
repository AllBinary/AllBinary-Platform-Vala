// Generated Code Do Not Modify
// package org.allbinary.graphics.font
// import javax.microedition.lcdui.Font
// import org.allbinary.logic.string.StringMaker

//OpenGLESBaseJavaLibrary
public class FontDebugBase : JObject {
    private static FontDebugBase? instanceBase;
    private static bool staticSet_instanceBase = false;
    private static FontDebugBase staticGet_instanceBase() {
        if (!FontDebugBase.staticSet_instanceBase) {
            FontDebugBase.staticSet_instanceBase = true;
            FontDebugBase.instanceBase = new FontDebugBase();
        }
        return FontDebugBase.instanceBase;
    }
    public string SET_FONT;

    // Java field initializers run after the base constructor
    private void initFieldsFontDebugBase() {
    this.SET_FONT = "setFont";
    }

    public FontDebugBase() {
        base();
        this.initFieldsFontDebugBase();
    }
    

    public static FontDebugBase getInstance() {
        return FontDebugBase.staticGet_instanceBase();
    }
    

    public virtual void debugMetrics(Font currentFont, float convertedTextSize, JObject displayMetrics, StringMaker stringBuffer) {
    }
    

    public virtual void debugDpi(int32 densityDpi, StringMaker stringBuffer) {
    }
    

    public virtual void debugDimension(Font currentFont, float convertedTextSize, int32 longestDimensionTotalPixels, StringMaker stringBuffer) {
    }
}

