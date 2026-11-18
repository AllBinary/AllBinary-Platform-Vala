// Generated Code Do Not Modify
// package org.allbinary.graphics.form
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.J2MEUtil
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.form.item.ABCustomItem
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker

public class MultipleScrollSelectionHorizontalForm : ScrollSelectionForm, UpdateMyFontInterface {
    private Paintable rectPaintable;
    private ItemIndexPaintable multipleScrollSelectionHorizontalFormTypeItemIndexPaintable;
    private int32 backgroundColor;
    private MyFontProcessor myFontProcessor;
    private bool logged;
    private int32 fontHeight;

    // Java field initializers run after the base constructor
    private void initFieldsMultipleScrollSelectionHorizontalForm() {
    this.rectPaintable = NullPaintable.getInstance();
    this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = ItemIndexPaintable.getInstance();
    this.backgroundColor = BasicColorFactory.getInstance().TRANSPARENT_GREY.intValue();
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    this.logged = false;
    this.fontHeight = 0;
    }
    

    public static ScrollSelectionForm createForm(string title, ABCustomItem[] items, Rectangle rectangle, FormType formType, int32 border, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        ScrollSelectionForm scrollSelectionForm = new MultipleScrollSelectionHorizontalForm(title, items, ItemPaintableFactory.getInstance(), border, backgroundBasicColor, foregroundBasicColor);
        scrollSelectionForm.init(rectangle, formType);
        return scrollSelectionForm;
    }
    

    public MultipleScrollSelectionHorizontalForm(string title, ABCustomItem[] items, ItemPaintableFactory formPaintableFactory, int32 border, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        base(title, items, formPaintableFactory, border, 3, backgroundBasicColor, foregroundBasicColor);
        this.initFieldsMultipleScrollSelectionHorizontalForm();
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
        } else {
            this.rectPaintable = new MultipleScrollSelectionFormRectPaintable(this);
        }
    }
    

    public virtual void fillRect(Graphics graphics) {
        graphics.setColor(this.backgroundColor);
        graphics.fillRect(this.x, this.y, this.rectangle.getWidth(), this.rectangle.getHeight());
    }
    

    public override void init(Rectangle rectangle, FormType formType) {
        base.init(rectangle, formType);
        FormTypeFactory formTypeFactory = FormTypeFactory.getInstance();
        if (formType == formTypeFactory.HORIZONTAL_FORM) {
            this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = new MultipleScrollSelectionFormHorizontalPaintable(this);
        } else if (formType == formTypeFactory.VERTICAL_CENTER_FORM) {
            this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = new MultipleScrollSelectionFormVerticalPaintable(this);
        } else if (formType == formTypeFactory.NULL_FORM_TYPE) {
        } else {
            JSystem.fatal(new JException("Exception", formTypeFactory.UNK));
        }
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.fontHeight = font.getHeight();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public virtual int32 paintHorizontal(Graphics graphics, int32 index, ABCustomItem item, int32 dx, int32 dy) {
        int32 dx2 = this.paintItem(graphics, index, item, dx, dy) + this.border;
        this.paintable.paint(graphics, index, dx, dy);
        dx = dx2;
        return dx;
    }
    

    public virtual int32 paintVertical(Graphics graphics, int32 index, ABCustomItem item, int32 dx, int32 dy) {
        this.paintItem(graphics, index, item, dx, dy);
        this.paintable.paint(graphics, index, dx, dy);
        return dx;
    }
    

    public override int32 getStartIndex() {
        return this.getSelectedIndex();
    }
    

    public override void paint(Graphics graphics) {
        {
            this.myFontProcessor.process(graphics);
            int32 start = this.getStartIndex();
            int32 size = this.size();
            int32 dx = this.x;
            int32 dy = this.y;
            this.rectPaintable.paint(graphics);
            graphics.drawString(this.getTitle(), this.x, this.y - this.fontHeight, 0);
            ABCustomItem item = null;
            for (int32 index = start; index < size; index++) {
                item = this.@get(index);
                if (dx >= this.rectangle.getMaxX()) {
                    if (this.logged) {
                    } else {
                        this.logged = true;
                        PreLogUtil.put(new StringMaker().append("painting beyond maxx: ").appendint(this.rectangle.getMaxX()).toString(), this, this.canvasStrings.PAINT);
                    }
                }
                dx = this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable.paint(graphics, index, item, dx, dy);
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

