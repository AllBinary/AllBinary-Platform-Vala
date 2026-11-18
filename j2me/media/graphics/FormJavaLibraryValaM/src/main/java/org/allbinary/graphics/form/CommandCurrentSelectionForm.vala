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
// package org.allbinary.graphics.form
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.Graphics
// import org.allbinary.J2MEUtil
// import org.allbinary.animation.Animation
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.animation.vector.RectangleAdjustedAnimation
// import org.allbinary.animation.vector.RectangleFilledAdjustedAnimation
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.form.item.CommandTextItem
// import org.allbinary.graphics.form.item.ABCustomItem

public class CommandCurrentSelectionForm : ScrollCurrentSelectionForm, UpdateMyFontInterface {
    public Animation[] selectedAnimationArray;
    public Animation[] unSelectedAnimationArray;

    // Java field initializers run after the base constructor
    private void initFieldsCommandCurrentSelectionForm() {
    this.selectedAnimationArray = new Animation[16];
    this.unSelectedAnimationArray = new Animation[16];
    }
    

    public CommandCurrentSelectionForm(string title, ABCustomItem[] items, int32 border, bool moveForSmallScreen, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        base(title, items, ItemPaintableFactory.getInstance(), border, -3, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor);
        this.initFieldsCommandCurrentSelectionForm();
        this.initAnimations();
        this.addAll(items);
    }
    

    public override void updateMeasurement(Graphics graphics) {
        this.updateAll(graphics, this.getAllitems());
        base.updateMeasurement(graphics);
    }
    

    private void initAnimations() {
        Animation nullAnimation = NullAnimationFactory.getFactoryInstance().getInstance1(0);
        for (int32 index = this.selectedAnimationArray.length; --index >= 0; ) {
            this.selectedAnimationArray[index] = nullAnimation;
        }
        for (int32 index = this.unSelectedAnimationArray.length; --index >= 0; ) {
            this.unSelectedAnimationArray[index] = nullAnimation;
        }
    }
    

    private void addAll(ABCustomItem[] items) {
        for (int32 index = items.length; --index >= 0; ) {
            this.addAt(index, items[index]);
        }
    }
    

    private void addAt(int32 index, ABCustomItem item) {
        BasicColorFactory basicColorFactory = BasicColorFactory.getInstance();
        BasicColor buttonColor = basicColorFactory.TRANSPARENT_GREY;
        BasicColor selectedButtonColor = basicColorFactory.TRANSPARENT_RED;
        int32 width = item.getMinimumWidth();
        int32 height = item.getMinimumHeight();
        int32 adjustedBorder = 3;
        int32 offset = -(this.halfBorder + adjustedBorder);
        int32 rectWidth = width + this.border - adjustedBorder;
        int32 rectHeight = height + this.border - adjustedBorder;
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            this.selectedAnimationArray[index] = new RectangleAdjustedAnimation(rectWidth, rectHeight, offset, offset, selectedButtonColor);
        } else {
            this.selectedAnimationArray[index] = new RectangleFilledAdjustedAnimation(rectWidth, rectHeight, offset, offset, selectedButtonColor);
        }
        adjustedBorder = 4;
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            this.unSelectedAnimationArray[index] = new RectangleAdjustedAnimation(rectWidth, rectHeight, offset, offset, buttonColor);
        } else {
            this.unSelectedAnimationArray[index] = new RectangleFilledAdjustedAnimation(rectWidth, rectHeight, offset, offset, buttonColor);
        }
    }
    

    private void updateAll(Graphics graphics, ABCustomItem[] items) {
        for (int32 index = items.length; --index >= 0; ) {
            items[index].preMeasurement(graphics);
            this.updateAt(index, items[index]);
        }
    }
    

    private void updateAt(int32 index, ABCustomItem item) {
        BasicColorFactory basicColorFactory = BasicColorFactory.getInstance();
        BasicColor buttonColor = basicColorFactory.TRANSPARENT_GREY;
        BasicColor selectedButtonColor = basicColorFactory.TRANSPARENT_RED;
        int32 width = item.getMinimumWidth();
        int32 height = item.getMinimumHeight();
        int32 adjustedBorder = 3;
        int32 offset = -(this.halfBorder + adjustedBorder);
        int32 rectWidth = width + this.border - adjustedBorder;
        int32 rectHeight = height + this.border - adjustedBorder;
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            RectangleAdjustedAnimation rectangleAdjustedAnimation = ((RectangleAdjustedAnimation) this.selectedAnimationArray[index]);
            rectangleAdjustedAnimation.setWidth(rectWidth);
            rectangleAdjustedAnimation.setHeight(rectHeight);
            rectangleAdjustedAnimation.setOffsetX(offset);
            rectangleAdjustedAnimation.setOffsetY(offset);
            rectangleAdjustedAnimation.setBasicColorP(selectedButtonColor);
        } else {
            RectangleFilledAdjustedAnimation rectangleAdjustedAnimation = ((RectangleFilledAdjustedAnimation) this.selectedAnimationArray[index]);
            rectangleAdjustedAnimation.setWidth(rectWidth);
            rectangleAdjustedAnimation.setHeight(rectHeight);
            rectangleAdjustedAnimation.setOffsetX(offset);
            rectangleAdjustedAnimation.setOffsetY(offset);
            rectangleAdjustedAnimation.setBasicColorP(selectedButtonColor);
        }
        adjustedBorder = 4;
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            RectangleAdjustedAnimation rectangleAdjustedAnimation = ((RectangleAdjustedAnimation) this.unSelectedAnimationArray[index]);
            rectangleAdjustedAnimation.setWidth(rectWidth);
            rectangleAdjustedAnimation.setHeight(rectHeight);
            rectangleAdjustedAnimation.setOffsetX(offset);
            rectangleAdjustedAnimation.setOffsetY(offset);
            rectangleAdjustedAnimation.setBasicColorP(buttonColor);
        } else {
            RectangleFilledAdjustedAnimation rectangleAdjustedAnimation = ((RectangleFilledAdjustedAnimation) this.unSelectedAnimationArray[index]);
            rectangleAdjustedAnimation.setWidth(rectWidth);
            rectangleAdjustedAnimation.setHeight(rectHeight);
            rectangleAdjustedAnimation.setOffsetX(offset);
            rectangleAdjustedAnimation.setOffsetY(offset);
            rectangleAdjustedAnimation.setBasicColorP(buttonColor);
        }
    }
    

    public virtual Command getSelectedCommand() {
        int32 index = base.getSelectedIndex();
        CommandTextItem commandTextItem = ((CommandTextItem) this.@get(index));
        return commandTextItem.getCommand();
    }
    

    public override int32 append(ABCustomItem item) {
        int32 result = base.append(item);
        this.addAt(result, item);
        return result;
    }
    

    public override void @delete(int32 itemNum) {
        base.@delete(itemNum);
    }
    

    public override void deleteAll() {
        this.initAnimations();
        base.deleteAll();
    }
    

    public override void insert(int32 itemNum, ABCustomItem item) {
        base.insert(itemNum, item);
    }
    

    public override void @set(int32 itemNum, ABCustomItem item) {
        base.@set(itemNum, item);
    }
    

    public override void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        base.paint(graphics);
    }
    

    public override int32 paintItem(Graphics graphics, int32 index, ABCustomItem item, int32 x, int32 y) {
        this.selectedAnimationArray[index].paintXY(graphics, x, y);
        return base.paintItem(graphics, index, item, x, y);
    }
    

    public override int32 paintUnselectedItem(Graphics graphics, int32 index, ABCustomItem item, int32 x, int32 y) {
        this.unSelectedAnimationArray[index].paintXY(graphics, x, y);
        return base.paintUnselectedItem(graphics, index, item, x, y);
    }
}

