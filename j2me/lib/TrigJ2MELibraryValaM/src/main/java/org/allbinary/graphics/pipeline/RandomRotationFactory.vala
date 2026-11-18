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
// package org.allbinary.graphics.pipeline
// import org.allbinary.game.rand.MyRandomFactory
// import org.allbinary.math.AngleFactory
// import org.allbinary.util.BasicArrayList

public class RandomRotationFactory : JObject {
    private static RandomRotationFactory? instance;
    private static bool staticSet_instance = false;
    private static RandomRotationFactory staticGet_instance() {
        if (!RandomRotationFactory.staticSet_instance) {
            RandomRotationFactory.staticSet_instance = true;
            RandomRotationFactory.instance = new RandomRotationFactory();
        }
        return RandomRotationFactory.instance;
    }
    private MyRandomFactory myRandomFactory;
    private AngleFactory angleFactory;

    // Java field initializers run after the base constructor
    private void initFieldsRandomRotationFactory() {
    this.myRandomFactory = MyRandomFactory.getInstance();
    this.angleFactory = AngleFactory.getInstance();
    }

    public RandomRotationFactory() {
        base();
        this.initFieldsRandomRotationFactory();
    }
    

    public static RandomRotationFactory getInstance() {
        return RandomRotationFactory.staticGet_instance();
    }
    

    public virtual BasicArrayList getInstanceList(BasicArrayList vector, int32 howMuch) {
        BasicGraphicsPipeline graphicsPipe = new BasicGraphicsPipeline(vector);
        graphicsPipe.createMatrix();
        graphicsPipe.rotateToAngle(this.angleFactory.getAt(this.getNextRandomAngle(howMuch)));
        return graphicsPipe.getMatrix();
    }
    

    public virtual int32 getNextRandomAngle(int32 howMuch) {
        return this.myRandomFactory.getNextInt(howMuch * 10);
    }
}

