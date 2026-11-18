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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.canvas.Processor
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.form.item.ABCustomItem

public class ScrollCurrentSelectionForm : ScrollSelectionForm, UpdateMyFontInterface {
    private bool moveForSmallScreen;
    public MyFontProcessor updateMyFontProcessor;
    public MyFontProcessor myFontProcessor;
    public Processor processor;
    private ItemIndexDx preItemIndexDx;
    private int32 dx;
    private int32 dy;
    private int32 maxWidth;

    // Java field initializers run after the base constructor
    private void initFieldsScrollCurrentSelectionForm() {
    
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.processor = Processor.getInstance();
    this.preItemIndexDx = ItemIndexDx.getInstance();
    this.dx = 0;
    this.dy = 0;
    this.maxWidth = 0;
    }
    

    public ScrollCurrentSelectionForm(string title, ABCustomItem[] items, ItemPaintableFactory formPaintableFactory, int32 border, int32 adjustedExtraBorder, bool moveForSmallScreen, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        base(title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor);
        this.initFieldsScrollCurrentSelectionForm();
        this.moveForSmallScreen = moveForSmallScreen;
    }
    

    public override void init(Rectangle rectangle, FormType formType) {
        base.init(rectangle, formType);
        FormTypeFactory formTypeFactory = FormTypeFactory.getInstance();
        if (formType == formTypeFactory.TEMP_HORIZONTAL_FORM) {
            this.processor = new TempHorizontalFormProcessor(this);
            this.preItemIndexDx = new TempHorizontalItemIndexDx(this);
        } else if (formType == formTypeFactory.HORIZONTAL_FORM) {
            this.processor = new HorizontalFormProcessor(this);
            this.preItemIndexDx = new HorizontalItemIndexDx(this);
        } else if (formType == formTypeFactory.VERTICAL_CENTER_FORM) {
            this.processor = new VerticalFormProcessor(this);
            this.preItemIndexDx = new VerticalItemIndexDx(this);
        } else if (formType == formTypeFactory.NULL_FORM_TYPE) {
        } else {
            this.logUtil.putF(formTypeFactory.UNK, this, this.commonStrings.INIT);
        }
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public virtual void processTempHorizontalForm() {
        this.dx = this.x - 30 + (this.rectangle.getWidth() >> 1);
        this.dy = this.y;
    }
    

    public virtual void processHorizontalForm() {
        int32 size = this.size();
        int32 totalWidth = 0;
        ABCustomItem item = null;
        for (int32 index = 0; index < size; index++) {
            item = this.@get(index);
            totalWidth += item.getMinimumWidth() + this.border;
        }
        this.dx = this.x + (this.rectangle.getWidth() >> 1) - (totalWidth >> 1);
        this.dy = this.y + (this.rectangle.getHeight() >> 1);
        if (this.moveForSmallScreen) {
            int32 maxTitleHeight = 175;
            if (this.dy < maxTitleHeight) {
                this.dy = maxTitleHeight;
            }
        }
    }
    

    public virtual void processVerticalForm() {
        int32 totalHeight = 0;
        int32 size = this.size();
        ABCustomItem item2 = null;
        for (int32 index = 0; index < size; index++) {
            item2 = this.@get(index);
            if (this.maxWidth < item2.getMinimumWidth()) {
                this.maxWidth = item2.getMinimumWidth();
            }
            totalHeight += item2.getMinimumHeight() + this.border;
        }
        this.dx = ((this.rectangle.getWidth() - this.maxWidth) / 2);
        if (this.size() > 0) {
            this.dy = this.y + ((this.rectangle.getHeight() - totalHeight) / 2);
            if (this.moveForSmallScreen) {
                int32 maxTitleHeight = 175;
                if (this.dy < maxTitleHeight) {
                    this.dy = maxTitleHeight;
                }
            }
        } else {
            this.dy = this.y;
        }
    }
    

    public virtual int32 getXTempHorizontalForm(int32 index, ABCustomItem item, int32 dx, int32 dy) {
        return this.getDiffX(item);
    }
    

    public virtual int32 getXHorizontalForm(int32 index, ABCustomItem item, int32 dx, int32 dy) {
        return 0;
    }
    

    public virtual int32 getXVerticalForm(int32 index, ABCustomItem item, int32 dx, int32 dy) {
        return this.getDiffX(item) + this.halfBorder;
    }
    

    public override int32 getDiffX(ABCustomItem item) {
        return ((this.maxWidth - item.getMinimumWidth()) >> 1);
    }
    

    public override int32 getDx() {
        return this.dx;
    }
    

    public override int32 getDy() {
        return this.dy;
    }
    

    public override void paint(Graphics graphics) {
        {
            this.processor.process();
            int32 delta = 0;
            int32 deltaX = this.getDx();
            int32 deltaY = this.getDy();
            int32 size = this.size();
            FormTypeFactory formTypeFactory = FormTypeFactory.getInstance();
            ABCustomItem item = null;
            for (int32 index = 0; index < size; index++) {
                item = this.@get(index);
                int32 diffX = this.preItemIndexDx.getDx(index, item, this.dx, this.dy);
                if (index == this.getSelectedIndex()) {
                    delta = this.paintItem(graphics, index, item, deltaX + diffX, deltaY);
                    this.paintable.paint(graphics, index, deltaX + diffX, deltaY);
                } else {
                    delta = this.paintUnselectedItem(graphics, index, item, deltaX + diffX, deltaY);
                    this.paintable.paint(graphics, index, deltaX + diffX, deltaY);
                }
                if (this.formType == formTypeFactory.TEMP_HORIZONTAL_FORM) {
                } else if (this.formType == formTypeFactory.HORIZONTAL_FORM) {
                    deltaX = delta;
                } else if (this.formType == formTypeFactory.VERTICAL_CENTER_FORM) {
                    deltaY = delta;
                } else {
                    JSystem.fatal(new JException("Exception", formTypeFactory.UNK));
                }
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

