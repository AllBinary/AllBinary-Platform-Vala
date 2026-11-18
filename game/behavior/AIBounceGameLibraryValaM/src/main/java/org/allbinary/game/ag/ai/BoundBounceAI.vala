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
// package org.allbinary.game.ag.ai
// import javax.microedition.lcdui.Graphics
// import org.allbinary.bounds.BoundsVisitorInterface
// import org.allbinary.bounds.LayerBounds
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.graphics.Rectangle
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager

public class BoundBounceAI : BasicAI {
    public int32 currentRelativeAngle;
    private LayerBounds layerBounds;
    private BoundsVisitorInterface boundsVisitorInterface;

    // Java field initializers run after the base constructor
    private void initFieldsBoundBounceAI() {
    this.currentRelativeAngle = 0;
    
    
    }
    

    public BoundBounceAI(AllBinaryLayer ownerLayerInterface, GameInput gameInput, LayerBounds layerBounds, BoundsVisitorInterface boundsVisitorInterface) {
        base(ownerLayerInterface, gameInput);
        this.initFieldsBoundBounceAI();
        this.layerBounds = layerBounds;
        this.boundsVisitorInterface = boundsVisitorInterface;
    }
    

    public virtual void paint(Graphics graphics) {
        Rectangle rectange = this.layerBounds.getRectangleP();
        graphics.drawRect(rectange.getPoint().getX(), rectange.getPoint().getY(), rectange.getWidth(), rectange.getHeight());
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        this.layerBounds.visit(this.boundsVisitorInterface);
    }
}

