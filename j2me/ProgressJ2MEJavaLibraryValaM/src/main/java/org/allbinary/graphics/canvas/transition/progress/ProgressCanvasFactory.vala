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
// package org.allbinary.graphics.canvas.transition.progress
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringUtil

public class ProgressCanvasFactory : JObject {
    private static JObject? PROGRESS_FORM_SCREEN;
    private static bool staticSet_PROGRESS_FORM_SCREEN = false;
    private static JObject staticGet_PROGRESS_FORM_SCREEN() {
        if (!ProgressCanvasFactory.staticSet_PROGRESS_FORM_SCREEN) {
            ProgressCanvasFactory.staticSet_PROGRESS_FORM_SCREEN = true;
            ProgressCanvasFactory.PROGRESS_FORM_SCREEN = NullUtil.getInstance().NULL_OBJECT;
        }
        return ProgressCanvasFactory.PROGRESS_FORM_SCREEN;
    }

    public ProgressCanvasFactory() {
        base();
    }
    

    public static ProgressCanvas getInstance() {
        if (ProgressCanvasFactory.staticGet_PROGRESS_FORM_SCREEN() == NullUtil.getInstance().NULL_OBJECT) {
            ProgressCanvasFactory.PROGRESS_FORM_SCREEN = new ProgressCanvas(StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return ((ProgressCanvas) ProgressCanvasFactory.staticGet_PROGRESS_FORM_SCREEN());
    }
    

    public static PaintableInterface getLazyInstance() {
        return NullPaintable.getInstance();
    }
}

