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
// package org.allbinary.game.ag.ai
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.string.CommonStrings

public class ThrustAIVisitor : Visitor {
    public LogUtil logUtil;
    private bool TRUE_;

    // Java field initializers run after the base constructor
    private void initFieldsThrustAIVisitor() {
    this.logUtil = LogUtil.getInstance();
    this.TRUE_ = BooleanFactory.getInstance().TRUE_;
    }
    

    public ThrustAIVisitor() {
        base();
        this.initFieldsThrustAIVisitor();
    }
    

    public override JObject visit(JObject anyType) {
        {
            BasicAI basicAI = ((BasicAI) anyType);
            basicAI.processKeyAI(Canvas.UP);
        } /* catch (Exception e): a thrown Java exception stops the program */
        return this.TRUE_;
    }
}

