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
// package org.allbinary.game.layer.hud.event
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject

public class GameNotificationEvent : AllBinaryEventObject {
    private string string;
    private int32? seconds;
    private BasicColor basicColor;
    private bool removeable;

    // Java field initializers run after the base constructor
    private void initFieldsGameNotificationEvent() {
    this.string = StringUtil.getInstance().EMPTY_STRING;
    
    this.basicColor = BasicColorFactory.getInstance().BLACK;
    
    }
    

    public GameNotificationEvent(JObject anyType, string string, int32? seconds, BasicColor basicColor, bool permanent) {
        base(anyType);
        this.initFieldsGameNotificationEvent();
        this.setString(string);
        this.seconds = seconds;
        this.setBasicColorP(basicColor);
        this.removeable = permanent;
    }
    

    public virtual string getString() {
        return this.string;
    }
    

    public virtual int32? getSeconds() {
        return this.seconds;
    }
    

    public virtual BasicColor getBasicColorP() {
        return this.basicColor;
    }
    

    public virtual bool getPermanent() {
        return this.removeable;
    }
    

    public virtual void setString(string string) {
        this.string = string;
    }
    

    public virtual void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
    }
}

