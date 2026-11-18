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
// package org.allbinary.game.ag.layer.hud.basic
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.business.advertisement.GameAdStateFactory
// import org.allbinary.canvas.Processor
// import org.allbinary.game.GameAdState
// import org.allbinary.game.ag.layer.hud.basic.notification.GameNotification
// import org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud
// import org.allbinary.game.layer.hud.event.GameNotificationEventHandler
// import org.allbinary.graphics.CustomGPoint
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.CircularIndexUtil

public class PlayerGameNotificationHud : GameNotificationHud, UpdateMyFontInterface {
    private GameTickTimeDelayHelper gameTickTimeDelayHelper;
    private string EMPTY_STRING;
    private DisplayInfoSingleton displayInfo;
    private TimeDelayHelper timeDelayHelper;
    private CircularIndexUtil circularIndexUtil;
    private GameNotification gameNotification;
    private GameNotification permanentGameNotification;
    private Processor setAndRemoveProcessor;
    private Processor nextUnremoveableProcessor;
    private Processor processor;
    private string PERMANENT_GAME_NOTIFICATION;
    private string lastString;
    private string string;
    private CustomGPoint point;
    private int32 width;

    // Java field initializers run after the base constructor
    private void initFieldsPlayerGameNotificationHud() {
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    this.displayInfo = DisplayInfoSingleton.getInstance();
    this.timeDelayHelper = new TimeDelayHelper(0);
    
    this.gameNotification = new GameNotification();
    this.permanentGameNotification = new GameNotification();
    this.setAndRemoveProcessor = new SetAndRemoveProcessor(this);
    this.nextUnremoveableProcessor = new NextUnremoveableProcessor(this);
    this.processor = Processor.getInstance();
    this.PERMANENT_GAME_NOTIFICATION = "Permanent Game Notification: ";
    this.lastString = StringUtil.getInstance().EMPTY_STRING;
    this.string = this.EMPTY_STRING;
    this.point = CustomGPoint.NULL_CUSTOM_POINT;
    this.width = 0;
    }
    

    public PlayerGameNotificationHud(int32 location, int32 direction, int32 bufferZone, BasicColor basicColor) {
        base(location, direction, bufferZone, basicColor);
        this.initFieldsPlayerGameNotificationHud();
        this.circularIndexUtil = CircularIndexUtil.createInstance(0);
        GameNotificationEventHandler gameNotificationEventHandler = GameNotificationEventHandler.getInstance();
        gameNotificationEventHandler.removeAllListeners();
        gameNotificationEventHandler.addListenerInterface(this);
    }
    

    public override void updateMeasurement(Graphics graphics) {
        {
            base.updateMeasurement(graphics);
            Font font = graphics.getFont();
            this.width = font.stringWidth(this.string);
            this.processor.process();
            this.processor = Processor.getInstance();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override GPoint getPoint(int32 x, int32 y) {
        this.point = CustomGPoint.getInstance3(0, 0);
        this.point.setX(x);
        this.point.setY(y);
        return this.point;
    }
    

    public override void add(string string, int32? seconds, BasicColor basicColor, bool permanent) {
        if (permanent) {
            if (this.lastString != string) {
                this.lastString = string;
                this.logUtil.putF(new StringMaker().append(this.PERMANENT_GAME_NOTIFICATION).append(string).toString(), this, this.commonStrings.ADD);
            }
            this.permanentGameNotification.add(string, seconds, basicColor);
            this.circularIndexUtil.setSize(this.permanentGameNotification.getSize());
        } else {
            this.gameNotification.add(string, seconds, basicColor);
        }
    }
    

    public override void processTick() {
        if (this.timeDelayHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
            GameAdState gameAdState = GameAdStateFactory.getInstance().getCurrentInstance();
            if (gameAdState.isShowingAtLocation(this.getLocation())) {
                this.offsetY = -54;
            } else {
                this.offsetY = 0;
            }
            if (this.gameNotification.getSize() > 0) {
                this.setAndRemove();
            } else if (this.permanentGameNotification.getSize() > 0) {
                this.setNextUnremoveable();
            } else {
                this.string = this.EMPTY_STRING;
            }
        }
    }
    

    private void setAndRemove() {
        this.string = JString.unbox(this.gameNotification.stringList.removeAt(0));
        this.processor = this.setAndRemoveProcessor;
    }
    

    public virtual void setAndRemoveProcess() {
        this.setX((this.displayInfo.getLastWidth() - this.width) >> 1);
        this.point.setX(this.getX());
        this.point.setY(this.getY());
        int32? time = JNumber.unboxInt(this.gameNotification.timeList.removeAt(0));
        int32 iTime = ((int32) time) * 1000;
        if (iTime == 0) {
            iTime = 500;
        }
        this.timeDelayHelper.delay = iTime;
        this.setBasicColorP(((BasicColor) this.gameNotification.colorList.removeAt(0)));
    }
    

    private void setNextUnremoveable() {
        int32 index = this.circularIndexUtil.getIndex();
        this.string = JString.unbox(this.permanentGameNotification.stringList.objectArray[index]);
        this.processor = this.nextUnremoveableProcessor;
    }
    

    public virtual void setNextUnremoveableProcess() {
        int32 index = this.circularIndexUtil.getIndex();
        this.setX((this.displayInfo.getLastWidth() - this.width) >> 1);
        this.point.setX(this.getX());
        this.point.setY(this.getY());
        int32? time = JNumber.unboxInt(this.permanentGameNotification.timeList.objectArray[index]);
        this.timeDelayHelper.delay = ((int32) time) * 1000;
        this.setBasicColorP(((BasicColor) this.permanentGameNotification.colorList.objectArray[index]));
        this.circularIndexUtil.next();
    }
    

    public override void clear() {
        this.gameNotification.clear();
        this.permanentGameNotification.clear();
    }
    

    public override void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        base.paintString(graphics, this.string);
    }
}

