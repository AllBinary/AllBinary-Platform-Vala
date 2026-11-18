// Generated Code Do Not Modify
// package org.allbinary.graphics.form
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.RectangleFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.graphics.form.item.ABCustomItem
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringUtil

public class PaintableForm : ABCustomForm {
    private static JObject? NULL_PAINTABLE_FORM;
    private static bool staticSet_NULL_PAINTABLE_FORM = false;
    private static JObject staticGet_NULL_PAINTABLE_FORM() {
        if (!PaintableForm.staticSet_NULL_PAINTABLE_FORM) {
            PaintableForm.staticSet_NULL_PAINTABLE_FORM = true;
            PaintableForm.NULL_PAINTABLE_FORM = NullUtil.getInstance().NULL_OBJECT;
        }
        return PaintableForm.NULL_PAINTABLE_FORM;
    }
    public CanvasStrings canvasStrings;
    public Rectangle rectangle;
    public int32 x;
    public int32 y;
    public FormType formType;

    // Java field initializers run after the base constructor
    private void initFieldsPaintableForm() {
    this.canvasStrings = CanvasStrings.getInstance();
    this.rectangle = RectangleFactory.SINGLETON;
    this.x = 0;
    this.y = 0;
    this.formType = FormTypeFactory.getInstance().NULL_FORM_TYPE;
    }
    

    public static PaintableForm getNullPaintableForm() {
        if (PaintableForm.staticGet_NULL_PAINTABLE_FORM() == NullUtil.getInstance().NULL_OBJECT) {
            PaintableForm.NULL_PAINTABLE_FORM = new PaintableForm(StringUtil.getInstance().EMPTY_STRING, new ABCustomItem[0], BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return ((PaintableForm) PaintableForm.staticGet_NULL_PAINTABLE_FORM());
    }
    

    public PaintableForm(string title, ABCustomItem[] items, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        base(title, items, backgroundBasicColor, foregroundBasicColor);
        this.initFieldsPaintableForm();
        this.setSelectedIndex(0);
    }
    

    public virtual void init(Rectangle rectangle, FormType formType) {
        this.rectangle = rectangle;
        GPoint point = this.rectangle.getPoint();
        this.x = point.getX();
        this.y = point.getY();
        this.formType = formType;
    }
    

    public override int32 getWidth() {
        return this.rectangle.getWidth();
    }
}

