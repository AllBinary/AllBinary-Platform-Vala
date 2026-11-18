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
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.graphics.paint.StatePaintable

public class BasicGameDemoPaintable : StatePaintable {
    private Paintable mainDemoStatePaintable;
    private Paintable ownershipPaintable;
    private Paintable helpPaintableInterface;
    private Paintable currentStatePaintable;

    // Java field initializers run after the base constructor
    private void initFieldsBasicGameDemoPaintable() {
    
    
    
    this.currentStatePaintable = NullPaintable.getInstance();
    }
    

    public BasicGameDemoPaintable(Paintable mainDemoStatePaintable, Paintable ownershipPaintable, Paintable helpPaintableInterface) {
        base();
        this.initFieldsBasicGameDemoPaintable();
        this.mainDemoStatePaintable = mainDemoStatePaintable;
        this.setCurrentStatePaintable(NullPaintable.getInstance());
        this.ownershipPaintable = ownershipPaintable;
        this.helpPaintableInterface = helpPaintableInterface;
    }
    

    public override void setState(int32 state) {
        if (state == 0) {
            this.setCurrentStatePaintable(this.getMainDemoStatePaintable());
        } else if (state == 1) {
            this.setCurrentStatePaintable(this.helpPaintableInterface);
        } else {
            this.setCurrentStatePaintable(this.ownershipPaintable);
        }
    }
    

    public override void paint(Graphics graphics) {
        this.getCurrentStatePaintable().paint(graphics);
    }
    

    public virtual Paintable getHelpPaintableInterface() {
        return this.helpPaintableInterface;
    }
    

    public virtual void setCurrentStatePaintable(Paintable currentStatePaintable) {
        this.currentStatePaintable = currentStatePaintable;
    }
    

    public virtual Paintable getCurrentStatePaintable() {
        return this.currentStatePaintable;
    }
    

    public virtual Paintable getMainDemoStatePaintable() {
        return this.mainDemoStatePaintable;
    }
}

