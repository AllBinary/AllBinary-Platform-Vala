// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Graphics

//Temp should not be in any build
public class NullDisplayable : Canvas {
    private static NullDisplayable? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static NullDisplayable staticGet_SINGLETON() {
        if (!NullDisplayable.staticSet_SINGLETON) {
            NullDisplayable.staticSet_SINGLETON = true;
            NullDisplayable.SINGLETON = new NullDisplayable();
        }
        return NullDisplayable.SINGLETON;
    }
    

    public static NullDisplayable getInstance() {
        return NullDisplayable.staticGet_SINGLETON();
    }
    

    public NullDisplayable() {
        base();
    }
    

    public override void paint(Graphics graphics) {
    }
}

