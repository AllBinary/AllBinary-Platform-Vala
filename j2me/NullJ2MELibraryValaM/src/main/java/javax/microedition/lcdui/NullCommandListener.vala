// Generated Code Do Not Modify
// package javax.microedition.lcdui

public class NullCommandListener : JObject, CommandListener {
    public static NullCommandListener? NULL_COMMAND_LISTENER;
    private static bool staticSet_NULL_COMMAND_LISTENER = false;
    public static NullCommandListener staticGet_NULL_COMMAND_LISTENER() {
        if (!NullCommandListener.staticSet_NULL_COMMAND_LISTENER) {
            NullCommandListener.staticSet_NULL_COMMAND_LISTENER = true;
            NullCommandListener.NULL_COMMAND_LISTENER = new NullCommandListener();
        }
        return NullCommandListener.NULL_COMMAND_LISTENER;
    }

    public NullCommandListener() {
        base();
    }
    

    public virtual void commandAction(Command c, Displayable d) {
    }
}

