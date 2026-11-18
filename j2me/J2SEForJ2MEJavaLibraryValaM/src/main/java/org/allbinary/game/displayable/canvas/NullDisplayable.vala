// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Graphics
// import org.allbinary.canvas.BaseGameStatistics
// import org.allbinary.canvas.GameStatisticsFactory

//J2SEForJ2ME
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
    private BaseGameStatistics baseGameStatistics;

    // Java field initializers run after the base constructor
    private void initFieldsNullDisplayable() {
    this.baseGameStatistics = GameStatisticsFactory.getInstance();
    }
    

    public static NullDisplayable getInstance() {
        return NullDisplayable.staticGet_SINGLETON();
    }
    

    public NullDisplayable() {
        base();
        this.initFieldsNullDisplayable();
    }
    

    public override void paint(Graphics graphics) {
        this.baseGameStatistics.nextRefresh();
    }
}

