// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.string.StringUtil

public class ABCustomGaugeItem : ABCustomItem {
    public static ABCustomGaugeItem? NULL_GAUGE_ITEM;
    private static bool staticSet_NULL_GAUGE_ITEM = false;
    public static ABCustomGaugeItem staticGet_NULL_GAUGE_ITEM() {
        if (!ABCustomGaugeItem.staticSet_NULL_GAUGE_ITEM) {
            ABCustomGaugeItem.staticSet_NULL_GAUGE_ITEM = true;
            ABCustomGaugeItem.NULL_GAUGE_ITEM = new ABCustomGaugeItem(StringUtil.getInstance().EMPTY_STRING, 1, 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return ABCustomGaugeItem.NULL_GAUGE_ITEM;
    }
    

    public ABCustomGaugeItem(string label, int32 maxValue, int32 initialValue, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        base(label, backgroundBasicColor, foregroundBasicColor);
    }
}

