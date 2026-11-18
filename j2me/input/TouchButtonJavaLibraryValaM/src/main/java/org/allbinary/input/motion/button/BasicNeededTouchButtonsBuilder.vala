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
// package org.allbinary.input.motion.button
// import org.allbinary.animation.Animation
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

public class BasicNeededTouchButtonsBuilder : BaseTouchInput {
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsBasicNeededTouchButtonsBuilder() {
    this.logUtil = LogUtil.getInstance();
    }

    public BasicNeededTouchButtonsBuilder() {
        base();
        this.initFieldsBasicNeededTouchButtonsBuilder();
    }
    

    public override BasicArrayList getList() {
        {
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
            BasicArrayList list = new BasicArrayListD();
            TouchButtonLocationHelper touchButtonLocationHelper = new TouchButtonLocationHelper();
            BasicTouchButtonCellPositionFactory basicTouchButtonCellPositionFactory = new BasicTouchButtonCellPositionFactory();
            CommonButtons commonButtons = CommonButtons.getInstance();
            Animation animationInterface = NullAnimationFactory.getFactoryInstance().getInstance1(0);
            TouchButton UP = new TouchButton.with7(BasicTouchInputFactory.getInstance().UP, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            TouchButton DOWN = new TouchButton.with7(BasicTouchInputFactory.getInstance().DOWN, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            TouchButton LEFT = new TouchButton.with7(BasicTouchInputFactory.getInstance().LEFT, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_SECOND_FROM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            TouchButton RIGHT = new TouchButton.with7(BasicTouchInputFactory.getInstance().RIGHT, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            list.add(UP);
            list.add(DOWN);
            list.add(LEFT);
            list.add(RIGHT);
            return list;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

