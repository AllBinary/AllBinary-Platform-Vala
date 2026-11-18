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
// package org.allbinary.game.ag.layer.pickup.life
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.ag.life.Life
// import org.allbinary.game.ag.life.LifeVisitorInterface
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.view.ViewPosition

public class LifeLayer : AllBinaryLayer, LifeVisitorInterface {
    

    public LifeLayer() {
        base(StringUtil.getInstance().EMPTY_STRING, new Rectangle(PointFactory.getInstance().ZERO_ZERO, 0, 0), ViewPosition.getInstanceD());
    }
    

    public override void paint(Graphics graphics) {
    }
    

    public virtual void visit(Life lifeInterface) {
        lifeInterface.add(((int16) (1)));
    }
}

