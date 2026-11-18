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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

public class BasicTouchButtonsBuilder : BaseTouchInput {
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsBasicTouchButtonsBuilder() {
    this.logUtil = LogUtil.getInstance();
    }

    public BasicTouchButtonsBuilder() {
        base();
        this.initFieldsBasicTouchButtonsBuilder();
    }
    

    public override BasicArrayList getList() {
        {
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
            BasicArrayList list = new BasicArrayListD();
            CommonButtons commonButtons = CommonButtons.getInstance();
            TouchButtonLocationHelper touchButtonLocationHelper = new TouchButtonLocationHelper();
            BasicTouchButtonCellPositionFactory basicTouchButtonCellPositionFactory = new BasicTouchButtonCellPositionFactory();
            TouchButton UP = TouchButton.createButton(BasicTouchInputFactory.getInstance().UP, TouchButtonUpResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            TouchButton DOWN = TouchButton.createButton(BasicTouchInputFactory.getInstance().DOWN, TouchButtonDownResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            TouchButton LEFT = TouchButton.createButton(BasicTouchInputFactory.getInstance().SPECIAL_BUTTON_FOUR, TouchButtonTurnLeftResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_SECOND_FROM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            TouchButton RIGHT = TouchButton.createButton(BasicTouchInputFactory.getInstance().SPECIAL_BUTTON_THREE, TouchButtonTurnRightResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            list.add(UP);
            list.add(LEFT);
            list.add(RIGHT);
            list.add(DOWN);
            return list;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

