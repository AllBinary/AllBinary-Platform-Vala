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
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.form.item.ABCustomItem
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.math.RectangleCollisionUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings

public class ScrollSelectionForm : PaintableForm {
    private static JObject? NULL_SCROLL_SELECTION_FORM;
    private static bool staticSet_NULL_SCROLL_SELECTION_FORM = false;
    private static JObject staticGet_NULL_SCROLL_SELECTION_FORM() {
        if (!ScrollSelectionForm.staticSet_NULL_SCROLL_SELECTION_FORM) {
            ScrollSelectionForm.staticSet_NULL_SCROLL_SELECTION_FORM = true;
            ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM = NullUtil.getInstance().NULL_OBJECT;
        }
        return ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM;
    }
    private static JObject? NULL_SCROLL_SELECTION_HORIZONTAL_FORM;
    private static bool staticSet_NULL_SCROLL_SELECTION_HORIZONTAL_FORM = false;
    private static JObject staticGet_NULL_SCROLL_SELECTION_HORIZONTAL_FORM() {
        if (!ScrollSelectionForm.staticSet_NULL_SCROLL_SELECTION_HORIZONTAL_FORM) {
            ScrollSelectionForm.staticSet_NULL_SCROLL_SELECTION_HORIZONTAL_FORM = true;
            ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM = NullUtil.getInstance().NULL_OBJECT;
        }
        return ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM;
    }
    private const string INSIDE_FORM = " inside form";
    private const string IS_IN_FORM = "isInForm";
    private const string GET_SELECTED_INDEX = "getSelectedIndexForPoint";
    private RectangleCollisionUtil rectangleCollisionUtil;
    public int32 border;
    public int32 halfBorder;
    private BasicColor buttonBasicColor;
    public ItemIndexPaintable scrollSelectionFormFormTypeItemIndexPaintable;
    private ItemIndexDx formTypeItemIndexDx;
    public ItemPaintable paintable;
    private int32 adjustedExtraBorder;

    // Java field initializers run after the base constructor
    private void initFieldsScrollSelectionForm() {
    this.rectangleCollisionUtil = RectangleCollisionUtil.getInstance();
    
    
    
    this.scrollSelectionFormFormTypeItemIndexPaintable = ItemIndexPaintable.getInstance();
    this.formTypeItemIndexDx = ItemIndexDx.getInstance();
    this.paintable = ItemPaintableFactory.getInstance();
    
    }
    

    private static PaintableForm createForm(string title, ABCustomItem[] items, ItemPaintableFactory formPaintableFactory, int32 border, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        {
            if (formPaintableFactory == ItemPaintableFactory.getInstance()) {
                return new ScrollSelectionForm(title, items, formPaintableFactory, border, -3, backgroundBasicColor, foregroundBasicColor);
            } else {
                CommonStrings commonStrings = CommonStrings.getInstance();
                LogUtil logUtil = LogUtil.getInstance();
                logUtil.putF(commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION);
                return PaintableForm.getNullPaintableForm();
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public static ScrollSelectionForm getNullScrollSelectionForm() {
        if (ScrollSelectionForm.staticGet_NULL_SCROLL_SELECTION_FORM() == NullUtil.getInstance().NULL_OBJECT) {
            ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM = ScrollSelectionForm.createForm(StringUtil.getInstance().EMPTY_STRING, new ABCustomItem[0], ItemPaintableFactory.getInstance(), 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return ((ScrollSelectionForm) ScrollSelectionForm.staticGet_NULL_SCROLL_SELECTION_FORM());
    }
    

    public static ScrollSelectionForm getNullScrollSelectionFormHorizontal() {
        if (ScrollSelectionForm.staticGet_NULL_SCROLL_SELECTION_HORIZONTAL_FORM() == NullUtil.getInstance().NULL_OBJECT) {
            ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM = ScrollSelectionForm.createForm(StringUtil.getInstance().EMPTY_STRING, new ABCustomItem[0], ItemPaintableFactory.getInstance(), 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return ((ScrollSelectionForm) ScrollSelectionForm.staticGet_NULL_SCROLL_SELECTION_HORIZONTAL_FORM());
    }
    

    public ScrollSelectionForm(string title, ABCustomItem[] items, ItemPaintableFactory formPaintableFactory, int32 border, int32 adjustedExtraBorder, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        base(title, items, backgroundBasicColor, foregroundBasicColor);
        this.initFieldsScrollSelectionForm();
        this.adjustedExtraBorder = adjustedExtraBorder;
        this.buttonBasicColor = foregroundBasicColor;
        this.border = border;
        this.halfBorder = (border >> 1);
        this.paintable = formPaintableFactory.getInstanceItemPaintable(this);
    }
    

    public override void init(Rectangle rectangle, FormType formType) {
        base.init(rectangle, formType);
        FormTypeFactory formTypeFactory = FormTypeFactory.getInstance();
        if (formType == formTypeFactory.HORIZONTAL_FORM) {
            this.scrollSelectionFormFormTypeItemIndexPaintable = new ScrollSelectionFormHorizontalPaintable(this);
            this.formTypeItemIndexDx = new ScrollSelectionFormHorizontalDx(this);
        } else if (formType == formTypeFactory.VERTICAL_CENTER_FORM) {
            this.scrollSelectionFormFormTypeItemIndexPaintable = new ScrollSelectionFormVerticalPaintable(this);
            this.formTypeItemIndexDx = new ScrollSelectionFormVericalDx(this);
        } else if (formType == formTypeFactory.TEMP_HORIZONTAL_FORM) {
            this.scrollSelectionFormFormTypeItemIndexPaintable = new ScrollSelectionFormTempHorizontalPaintable(this);
            this.formTypeItemIndexDx = new ScrollSelectionFormTempHorizontalDx(this);
        } else if (formType == formTypeFactory.NULL_FORM_TYPE) {
        } else {
            JSystem.fatal(new JException("Exception", formTypeFactory.UNK));
        }
    }
    

    public virtual int32 paintItemHorizontal(Graphics graphics, int32 index, ABCustomItem item, int32 x, int32 y) {
        int32 width = item.getMinimumWidth();
        return x + width + this.border;
    }
    

    public virtual int32 paintItemVertical(Graphics graphics, int32 index, ABCustomItem item, int32 x, int32 y) {
        int32 height = item.getMinimumHeight();
        return y + height + this.border;
    }
    

    public virtual int32 paintItemTempHorizontal(Graphics graphics, int32 index, ABCustomItem item, int32 x, int32 y) {
        return 0;
    }
    

    public virtual int32 getSelectedIndexForPointHorizontalDx(int32 index, ABCustomItem item, int32 dx, int32 dy) {
        return dx - this.halfBorder;
    }
    

    public virtual int32 getSelectedIndexForPointVerticalDx(int32 index, ABCustomItem item, int32 dx, int32 dy) {
        return dx + this.getDiffX(item);
    }
    

    public virtual int32 getSelectedIndexForPointTempHorizontalDx(int32 index, ABCustomItem item, int32 dx, int32 dy) {
        return dx + this.getDiffX(item);
    }
    

    public override int32 append(ABCustomItem item) {
        return base.append(item);
    }
    

    public virtual ABCustomItem getSelectedItem(GPoint point) {
        int32 index = this.getSelectedIndexForPoint(point);
        if (index != -1) {
            return this.@get(index);
        } else {
            return ABCustomItem.getNullInstance();
        }
    }
    

    public virtual int32 getItemIndex(ABCustomItem item) {
        ABCustomItem nextItem = null;
        int32 size = this.size();
        for (int32 index = 0; index < size; index++) {
            nextItem = ((ABCustomItem) this.@get(index));
            if (nextItem == item) {
                return index;
            }
        }
        return -1;
    }
    

    public virtual int32 getStartIndex() {
        return 0;
    }
    

    public virtual int32 getSelectedIndexForPoint(GPoint point) {
        int32 start = this.getStartIndex();
        int32 size = this.size();
        int32 dx = this.getDx();
        int32 dy = this.getDy();
        FormTypeFactory formTypeFactory = FormTypeFactory.getInstance();
        CommonLabels commonLabels = CommonLabels.getInstance();
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(commonLabels.START_LABEL);
        stringBuffer.appendint(start);
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(commonLabels.TOTAL_LABEL);
        stringBuffer.appendint(size);
        this.logUtil.putF(stringBuffer.toString(), this, ScrollSelectionForm.GET_SELECTED_INDEX);
        ABCustomItem item = null;
        int32 width = 0;
        int32 height = 0;
        int32 diffX = 0;
        for (int32 index = start; index < size; index++) {
            item = this.@get(index);
            width = item.getMinimumWidth();
            height = item.getMinimumHeight();
            diffX = this.formTypeItemIndexDx.getDx(index, item, dx, dy);
            if (this.rectangleCollisionUtil.isInside(diffX, dy - this.halfBorder, diffX + width + this.border, dy + height + this.halfBorder + 1, point.getX(), point.getY())) {
                stringBuffer.@delete(0, stringBuffer.length());
                stringBuffer.append(commonLabels.ITEM_LABEL);
                stringBuffer.append(item.getLabel());
                stringBuffer.append(CommonSeps.getInstance().SPACE);
                stringBuffer.append(commonLabels.INDEX_LABEL);
                stringBuffer.appendint(index);
                this.logUtil.putF(stringBuffer.toString(), this, ScrollSelectionForm.GET_SELECTED_INDEX);
                return index;
            }
            if (this.formType == formTypeFactory.HORIZONTAL_FORM) {
                dx = dx + width + this.border;
                if (dx > this.rectangle.getMaxX()) {
                    break;
                }
            } else if (this.formType == formTypeFactory.VERTICAL_CENTER_FORM) {
                dy = dy + height + this.border;
                if (dy > this.rectangle.getMaxY()) {
                    break;
                }
            } else if (this.formType == formTypeFactory.NULL_FORM_TYPE) {
            } else {
                JSystem.fatal(new JException("Exception", formTypeFactory.UNK));
            }
        }
        return -1;
    }
    

    public virtual int32 processInputKey(int32 gameKeyCode) {
        FormTypeFactory formTypeFactory = FormTypeFactory.getInstance();
        if (this.size() == 0) {
            return -1;
        }
        int32 index = this.getSelectedIndex();
        if (this.formType == formTypeFactory.HORIZONTAL_FORM || this.formType == formTypeFactory.TEMP_HORIZONTAL_FORM) {
            if (gameKeyCode == Canvas.RIGHT) {
                index++;
            } else if (gameKeyCode == Canvas.LEFT) {
                index--;
            }
        } else if (this.formType == formTypeFactory.VERTICAL_CENTER_FORM) {
            if (gameKeyCode == Canvas.DOWN) {
                index++;
            } else if (gameKeyCode == Canvas.UP) {
                index--;
            }
        } else if (this.formType == formTypeFactory.NULL_FORM_TYPE) {
        } else {
            JSystem.fatal(new JException("Exception", formTypeFactory.UNK));
        }
        int32 max = this.size() - 1;
        if (index < 0) {
            this.setSelectedIndex(0);
        } else if (index > max) {
            this.setSelectedIndex(max);
        } else {
            this.setSelectedIndex(index);
        }
        return -1;
    }
    

    public virtual bool isInForm(GPoint point) {
        if (this.rectangleCollisionUtil.isInside(this.x, this.y - this.halfBorder, this.rectangle.getMaxX() + this.border, this.rectangle.getMaxY() + this.border, point.getX(), point.getY())) {
            this.logUtil.putF(new StringMaker().append(StringUtil.getInstance().toString1(point)).append(ScrollSelectionForm.INSIDE_FORM).toString(), this, ScrollSelectionForm.IS_IN_FORM);
            return true;
        }
        return false;
    }
    

    public virtual int32 paintItem(Graphics graphics, int32 index, ABCustomItem item, int32 x, int32 y) {
        item.paintXY(graphics, x, y);
        int32 width = item.getMinimumWidth();
        int32 height = item.getMinimumHeight();
        graphics.setColor(this.getButtonBasicColor().intValue());
        int32 adjustedBorder = 3;
        graphics.drawRect(x - this.halfBorder - adjustedBorder, y - this.halfBorder - adjustedBorder, width + this.border + this.adjustedExtraBorder, height + this.border + this.adjustedExtraBorder);
        return this.scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics, index, item, x, y);
    }
    

    public virtual int32 paintUnselectedItem(Graphics graphics, int32 index, ABCustomItem item, int32 x, int32 y) {
        graphics.setColor(this.getButtonBasicColor().intValue());
        item.paintUnselected(graphics, x, y);
        return this.scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics, index, item, x, y);
    }
    

    public virtual int32 getDiffX(ABCustomItem item) {
        return 0;
    }
    

    public virtual int32 getDx() {
        return this.x;
    }
    

    public virtual int32 getDy() {
        return this.y;
    }
    

    public virtual void setButtonBasicColor(BasicColor buttonBasicColor) {
        this.buttonBasicColor = buttonBasicColor;
    }
    

    private BasicColor getButtonBasicColor() {
        return this.buttonBasicColor;
    }
}

