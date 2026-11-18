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
// package org.allbinary.input.motion.gesture.configuration
// import org.allbinary.game.input.CompleteMotionGestureInputEvent
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class MotionGestureConfiguration : JObject {
    private bool diagonalMotionGestureAllowed;
    private int32 diagonalTolerance;
    private int32 minimumMotionGesture;
    private string button;
    private BasicColor color;
    private bool executingActions;
    private int32 mouseButtonMask;
    private BasicArrayList activeCommands;

    // Java field initializers run after the base constructor
    private void initFieldsMotionGestureConfiguration() {
    this.diagonalMotionGestureAllowed = true;
    this.diagonalTolerance = 7;
    this.minimumMotionGesture = 9;
    this.button = StringUtil.getInstance().EMPTY_STRING;
    this.color = BasicColorFactory.getInstance().BLUE;
    this.executingActions = true;
    this.mouseButtonMask = 0;
    this.activeCommands = new BasicArrayListD();
    }
    

    public MotionGestureConfiguration() {
        base();
        this.initFieldsMotionGestureConfiguration();
    }
    

    public virtual void addMotionGestureAction(BasicArrayList list, CompleteMotionGestureInputEvent commandAction) {
        this.activeCommands.add(new MotionGestureToMotionGestureActionAssociation(list, commandAction));
    }
    

    public virtual void clearMotionGestureAction() {
        this.activeCommands.clear();
    }
    

    public virtual BasicArrayList getAssociateCommandActionsList() {
        return this.activeCommands;
    }
    

    public virtual bool isDiagonalMotionGestureAllowed() {
        return this.diagonalMotionGestureAllowed;
    }
    

    public virtual bool isExecutingActionsAllowed() {
        return this.executingActions;
    }
    

    public virtual void setExecutingActionsAllowed(bool executingActionAllowed) {
        this.executingActions = executingActionAllowed;
    }
    

    public virtual void setDiagonalMotionGestureAllowed(bool diagonalMotionGestureAllowed) {
        this.diagonalMotionGestureAllowed = diagonalMotionGestureAllowed;
    }
    

    public virtual int32 getDiagonalTolerance() {
        return this.diagonalTolerance;
    }
    

    public virtual void setDiagonalTolerance(int32 diagonalTolerance) {
        this.diagonalTolerance = diagonalTolerance;
    }
    

    public virtual int32 getMinimumMotionGesture() {
        return this.minimumMotionGesture;
    }
    

    public virtual void setMinimumMotionGesture(int32 minimumMotionGesture) {
        this.minimumMotionGesture = minimumMotionGesture;
    }
    

    public virtual string getButton() {
        return this.button;
    }
    

    public virtual void setButton(string button) {
        this.button = button;
    }
    

    public virtual BasicColor getColor() {
        return this.color;
    }
    

    public virtual void setColor(BasicColor color) {
        this.color = color;
    }
    

    public virtual int32 getMouseButtonMask() {
        return this.mouseButtonMask;
    }
    

    public virtual void setMouseButtonMask(int32 mouseButtonMask) {
        this.mouseButtonMask = mouseButtonMask;
    }
}

