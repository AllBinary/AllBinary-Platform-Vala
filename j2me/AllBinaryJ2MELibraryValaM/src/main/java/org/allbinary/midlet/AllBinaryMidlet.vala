/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.midlet
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Display
// import javax.microedition.lcdui.Displayable
// import javax.microedition.lcdui.NullCanvas
// import javax.microedition.midlet.MIDlet
// import javax.microedition.midlet.MIDletStateChangeException
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings
// import org.allbinary.system.Memory
// import org.allbinary.logic.NullUtil
// import org.allbinary.util.ABHashtable

public class AllBinaryMidlet : MIDlet, CommandListener {
    private static JObject? NULL_ALLBINARY_MIDLET;
    private static bool staticSet_NULL_ALLBINARY_MIDLET = false;
    private static JObject staticGet_NULL_ALLBINARY_MIDLET() {
        if (!AllBinaryMidlet.staticSet_NULL_ALLBINARY_MIDLET) {
            AllBinaryMidlet.staticSet_NULL_ALLBINARY_MIDLET = true;
            AllBinaryMidlet.NULL_ALLBINARY_MIDLET = NullUtil.getInstance().NULL_OBJECT;
        }
        return AllBinaryMidlet.NULL_ALLBINARY_MIDLET;
    }
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    private string SET_DISPLAY;
    private string SETTING_;
    private string _DISPLAY_;
    private string SETTING_NO_TITLE;
    private ABHashtable hashtable;
    private bool midletDestroyed;

    // Java field initializers run after the base constructor
    private void initFieldsAllBinaryMidlet() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.SET_DISPLAY = "setDisplay";
    this.SETTING_ = "Setting: ";
    this._DISPLAY_ = " Display: ";
    this.SETTING_NO_TITLE = "Setting: No Title, Display: ";
    this.hashtable = StdUtil.getInstance().createHashtable();
    this.midletDestroyed = false;
    }
    

    public static AllBinaryMidlet getNullInstance() {
        if (AllBinaryMidlet.staticGet_NULL_ALLBINARY_MIDLET() == NullUtil.getInstance().NULL_OBJECT) {
            AllBinaryMidlet.NULL_ALLBINARY_MIDLET = new AllBinaryMidlet();
        }
        return ((AllBinaryMidlet) AllBinaryMidlet.staticGet_NULL_ALLBINARY_MIDLET());
    }
    

    public AllBinaryMidlet() {
        base();
        this.initFieldsAllBinaryMidlet();
        this.logUtil.putF(this.commonStrings.CONSTRUCTOR, this, "AllBinaryMidlet::AllBinaryMidlet");
    }
    

    public virtual void setDisplay(Displayable newDisplay) {
        string title = StringUtil.getInstance().EMPTY_STRING;
        if (newDisplay != NullCanvas.NULL_CANVAS) {
            title = newDisplay.getTitle();
            this.logUtil.putF(new StringMaker().append(this.SETTING_).append(title).append(this._DISPLAY_).append(StringUtil.getInstance().toString1(newDisplay)).toString(), this, this.SET_DISPLAY);
        }
        Display display = this.getDisplay();
        display.setCurrent(newDisplay);
    }
    

    public virtual Display getDisplay() {
        return Display.getDisplay(this);
    }
    

    public virtual Displayable getCurrentDisplayable() {
        return Display.getDisplay(this).getCurrent();
    }
    

    public virtual void setDestroyed(bool destroyed) {
        this.midletDestroyed = destroyed;
    }
    

    public virtual bool isDestroyed() {
        return this.midletDestroyed;
    }
    

    public override void startApp() {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public override void pauseApp() {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public virtual void destroyAppInRunnable(bool unconditional, bool isProgress) {
    }
    

    public override void destroyApp(bool unconditional) {
        string METHOD_NAME = "AllBinaryMidlet::destroyApp";
        {
            this.logUtil.putF(this.commonStrings.START, this, METHOD_NAME);
            PreLogUtil.put(Memory.getInfo(), this, METHOD_NAME);
            this.setDestroyed(true);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void setStartStateHashtable(ABHashtable hashtable) {
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString1(hashtable)).toString(), this, "setStartStateHashtable");
        this.hashtable = hashtable;
    }
    

    public virtual ABHashtable getStartStateHashtable() {
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString1(this.hashtable)).toString(), this, "getStartStateHashtable");
        return this.hashtable;
    }
    

    public virtual ABHashtable getCurrentStateHashtable() {
        this.logUtil.putF(this.commonStrings.START, this, "getStateHashtable");
        return StdUtil.getInstance().NULL_TABLE;
    }
    

    public override void commandAction(Command command, Displayable displayable) {
    }
}

