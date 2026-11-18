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
// package org.allbinary.game.displayable.canvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.graphics.paint.PaintableComposite
// import org.allbinary.graphics.paint.PaintableInterface

public class DemoCanvasProgressUtil : JObject {

    public DemoCanvasProgressUtil() {
        base();
    }
    

    public static void showProgress(DemoCanvas demoCanvas) {
        DemoCanvasProgressUtil.showProgressOptionallyInTheBackground(demoCanvas, false);
    }
    

    public static void showProgressOptionallyInTheBackground(DemoCanvas demoCanvas, bool background) {
        ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        progressCanvas.startBackground(background);
        PaintableInterface[] paintableArray = new PaintableInterface[2];
        paintableArray[0] = progressCanvas;
        paintableArray[1] = demoCanvas.getDefaultPaintableInterface();
        demoCanvas.setDefaultPaintableInterface(new PaintableComposite(paintableArray));
        demoCanvas.setPaintableInterface(demoCanvas.getDefaultPaintableInterface());
    }
}

