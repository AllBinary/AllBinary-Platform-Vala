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
// import org.allbinary.graphics.paint.NullPaintable

public class BaseMenuBehavior : JObject {
    private static BaseMenuBehavior? instance;
    private static bool staticSet_instance = false;
    private static BaseMenuBehavior staticGet_instance() {
        if (!BaseMenuBehavior.staticSet_instance) {
            BaseMenuBehavior.staticSet_instance = true;
            BaseMenuBehavior.instance = new BaseMenuBehavior();
        }
        return BaseMenuBehavior.instance;
    }

    public BaseMenuBehavior() {
        base();
    }
    

    public static BaseMenuBehavior getInstance() {
        return BaseMenuBehavior.staticGet_instance();
    }
    

    public virtual void onDisplayChangeEvent(AllBinaryGameCanvas allBinaryGameCanvas, DisplayChangeEvent displayChangeEvent) {
    }
    

    public virtual void initSpecialPaint(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.setNonBotPaintableP(NullPaintable.getInstance());
    }
    

    public virtual void initMenu(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    public virtual void updateMenu(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    public virtual void popupMenu(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    public virtual void closeMenu(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
}

