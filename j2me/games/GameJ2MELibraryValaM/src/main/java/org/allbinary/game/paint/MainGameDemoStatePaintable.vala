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
// package org.allbinary.game.paint
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.paint.Paintable

public class MainGameDemoStatePaintable : Paintable {
    private Paintable ownershipPaintableInterface;
    private Paintable menuPaintableInterface;

    // Java field initializers run after the base constructor
    private void initFieldsMainGameDemoStatePaintable() {
    
    
    }
    

    public MainGameDemoStatePaintable(Paintable ownershipPaintableInterface, Paintable menuPaintableInterface) {
        base();
        this.initFieldsMainGameDemoStatePaintable();
        this.ownershipPaintableInterface = ownershipPaintableInterface;
        this.menuPaintableInterface = menuPaintableInterface;
    }
    

    public override void paint(Graphics graphics) {
        this.menuPaintableInterface.paint(graphics);
        this.ownershipPaintableInterface.paint(graphics);
    }
    

    public virtual Paintable getOwnershipPaintableInterface() {
        return this.ownershipPaintableInterface;
    }
    

    public virtual Paintable getMenuPaintableInterface() {
        return this.menuPaintableInterface;
    }
}

