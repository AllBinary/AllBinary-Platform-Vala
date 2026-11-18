/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// import org.allbinary.graphics.displayable.event.DisplayChangeEvent

public class InGameMenuBehavior : BaseMenuBehavior {
    private static InGameMenuBehavior? instanceC;
    private static bool staticSet_instanceC = false;
    private static InGameMenuBehavior staticGet_instanceC() {
        if (!InGameMenuBehavior.staticSet_instanceC) {
            InGameMenuBehavior.staticSet_instanceC = true;
            InGameMenuBehavior.instanceC = new InGameMenuBehavior();
        }
        return InGameMenuBehavior.instanceC;
    }

    public InGameMenuBehavior() {
        base();
    }
    

    public static InGameMenuBehavior getInstance() {
        return InGameMenuBehavior.staticGet_instanceC();
    }
    

    public override void onDisplayChangeEvent(AllBinaryGameCanvas allBinaryGameCanvas, DisplayChangeEvent displayChangeEvent) {
        allBinaryGameCanvas.updateMenuFromEvent(displayChangeEvent);
    }
    

    public override void initSpecialPaint(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.setNonBotPaintableP(new GameCanvasNonBotPaintable(allBinaryGameCanvas));
    }
    

    public override void initMenu(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.initMenu2();
    }
    

    public override void updateMenu(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.initMenu2();
    }
    

    public override void popupMenu(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.popupMenu2();
    }
    

    public override void closeMenu(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.closeMenu2();
    }
}

