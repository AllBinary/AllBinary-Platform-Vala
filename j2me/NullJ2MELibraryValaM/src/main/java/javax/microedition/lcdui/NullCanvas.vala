// Generated Code Do Not Modify
// package javax.microedition.lcdui
// import java.util.Stack

public class NullCanvas : Canvas {
    public static NullCanvas? NULL_CANVAS;
    private static bool staticSet_NULL_CANVAS = false;
    public static NullCanvas staticGet_NULL_CANVAS() {
        if (!NullCanvas.staticSet_NULL_CANVAS) {
            NullCanvas.staticSet_NULL_CANVAS = true;
            NullCanvas.NULL_CANVAS = new NullCanvas();
        }
        return NullCanvas.NULL_CANVAS;
    }
    

    public NullCanvas() {
        base();
    }
    

    public override void setFullScreenMode(bool mode) {
    }
    

    public override void sizeChanged(int32 w, int32 h) {
    }
    

    public virtual Stack getCommandStack() {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual bool isCommand(Command command) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public override void addCommand(Command command) {
    }
    

    public override void removeCommand(Command command) {
    }
    

    public virtual void removeAllCommands() {
    }
    

    public override void setCommandListener(CommandListener l) {
    }
    

    public virtual CommandListener getCustomCommandListener() {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual bool isPaused() {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual void removePauseCommand() {
    }
    

    public virtual void pause() {
    }
    

    public virtual void unPause() {
    }
    

    public virtual void process() {
    }
    

    public override void paint(Graphics graphics) {
    }
    

    public virtual void destroy() {
    }
    

    public virtual void setPaused(bool isPaused) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public override void pointerDragged(int32 x, int32 y) {
    }
    

    public override void pointerPressed(int32 x, int32 y) {
    }
    

    public override void pointerReleased(int32 x, int32 y) {
    }
}

