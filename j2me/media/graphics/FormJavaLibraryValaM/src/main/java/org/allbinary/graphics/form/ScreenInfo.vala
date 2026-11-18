// Generated Code Do Not Modify
// package org.allbinary.graphics.form

public class ScreenInfo : JObject {
    private static ScreenInfo? instance;
    private static bool staticSet_instance = false;
    private static ScreenInfo staticGet_instance() {
        if (!ScreenInfo.staticSet_instance) {
            ScreenInfo.staticSet_instance = true;
            ScreenInfo.instance = new ScreenInfo();
        }
        return ScreenInfo.instance;
    }
    public int32 SMALL_WIDTH;
    public int32 SMALL_HEIGHT;
    public int32 MEDIUM_WIDTH;
    public int32 MEDIUM_HEIGHT;

    // Java field initializers run after the base constructor
    private void initFieldsScreenInfo() {
    this.SMALL_WIDTH = 320;
    this.SMALL_HEIGHT = 240;
    this.MEDIUM_WIDTH = 800;
    this.MEDIUM_HEIGHT = 600;
    }

    public ScreenInfo() {
        base();
        this.initFieldsScreenInfo();
    }
    

    public static ScreenInfo getInstance() {
        return ScreenInfo.staticGet_instance();
    }
}

