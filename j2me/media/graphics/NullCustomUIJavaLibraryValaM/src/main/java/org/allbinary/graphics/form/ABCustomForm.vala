// Generated Code Do Not Modify
// package org.allbinary.graphics.form
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.form.item.ABCustomItem
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

public class ABCustomForm : CustomScreen {
    public LogUtil logUtil;
    public CommonStrings commonStrings;

    // Java field initializers run after the base constructor
    private void initFieldsABCustomForm() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    }
    

    public ABCustomForm(string title, ABCustomItem[] items, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        base();
        this.initFieldsABCustomForm();
    }
    

    public virtual ABCustomItem[] getAllitems() {
        return new ABCustomItem[0];
    }
    

    public virtual int32 size() {
        return 0;
    }
    

    public virtual void setSelectedIndex(int32 index) {
    }
    

    public virtual int32 getSelectedIndex() {
        return 0;
    }
    

    public virtual void deleteAll() {
    }
    

    public virtual void @delete(int32 itemNum) {
    }
    

    public virtual int32 append(ABCustomItem item) {
        return -1;
    }
    

    public virtual void insert(int32 itemNum, ABCustomItem item) {
    }
    

    public virtual void @set(int32 itemNum, ABCustomItem item) {
    }
    

    public virtual ABCustomItem @get(int32 itemNum) {
        return ABCustomItem.getNullInstance();
    }
    

    public virtual int32 getWidth() {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual void paint(Graphics graphics) {
    }
    

    public virtual string getTitle() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
}

