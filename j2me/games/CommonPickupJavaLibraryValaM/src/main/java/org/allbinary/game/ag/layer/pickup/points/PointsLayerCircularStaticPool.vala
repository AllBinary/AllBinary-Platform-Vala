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
// package org.allbinary.game.ag.layer.pickup.points
// import org.allbinary.game.score.ScoreableInterface
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerCircularPool
// import org.allbinary.layer.AllBinaryLayerFactoryInterface

public class PointsLayerCircularStaticPool : AllBinaryLayerCircularPool {
    

    public PointsLayerCircularStaticPool(AllBinaryLayerFactoryInterface allbinaryLayerFactoryInterface, int32 total) {
        base();
        base.initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface, total);
    }
    

    public virtual void visit(AllBinaryLayer sourceLayerInterface) {
        PointsLayer pointsLayer = ((PointsLayer) this.getNextInstance());
        ScoreableInterface scoreableInterface = ((ScoreableInterface) sourceLayerInterface);
        pointsLayer.visit(scoreableInterface);
    }
}

