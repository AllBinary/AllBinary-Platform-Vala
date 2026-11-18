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
// package org.allbinary.game.combat.destroy.event
// import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
// import org.allbinary.game.displayable.canvas.NullGameCanvas
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject

public class DestroyedEvent : AllBinaryEventObject {
    private AllBinaryGameCanvas allBinaryGameCanvas;
    private AllBinaryLayer allBinaryLayerInterface;

    // Java field initializers run after the base constructor
    private void initFieldsDestroyedEvent() {
    this.allBinaryGameCanvas = NullGameCanvas.getInstance();
    this.allBinaryLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    }
    

    public DestroyedEvent(AllBinaryGameCanvas combatGameCanvas) {
        base(DestroyedEventHandler.getInstance());
        this.initFieldsDestroyedEvent();
        this.setAllBinaryGameCanvas(combatGameCanvas);
    }
    

    public virtual AllBinaryGameCanvas getAllBinaryGameCanvas() {
        return this.allBinaryGameCanvas;
    }
    

    public virtual AllBinaryLayer getLayerInterface() {
        return this.allBinaryLayerInterface;
    }
    

    private void setAllBinaryGameCanvas(AllBinaryGameCanvas allBinaryGameCanvas) {
        this.allBinaryGameCanvas = allBinaryGameCanvas;
    }
    

    public virtual void setLayerInterfaceForCircularStaticPool(AllBinaryLayer allBinaryLayerInterface) {
        this.allBinaryLayerInterface = allBinaryLayerInterface;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("DestroyedEvent: \n");
        stringBuffer.append("AllBinaryLayerInterface: ");
        stringBuffer.append(this.allBinaryLayerInterface.toString());
        stringBuffer.append("\nAllBinaryGameCanvas: ");
        stringBuffer.append(StringUtil.getInstance().toString1(this.getAllBinaryGameCanvas()));
        return stringBuffer.toString();
    }
}

