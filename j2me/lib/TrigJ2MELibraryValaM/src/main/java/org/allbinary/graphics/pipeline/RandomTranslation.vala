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
// import org.allbinary.util.BasicArrayList

public class RandomTranslation : JObject {

    public RandomTranslation() {
        base();
    }
    

    public static BasicArrayList getInstance2(BasicArrayList vector, int32 howMuch) {
        MyRandomFactory myRandomFactory = MyRandomFactory.getInstance();
        int32 x = -myRandomFactory.getNextInt(howMuch);
        int32 y = myRandomFactory.getNextInt(howMuch);
        BasicGraphicsPipeline graphicsPipe = new BasicGraphicsPipeline(vector);
        graphicsPipe.createMatrix();
        graphicsPipe.translate(x, y);
        return graphicsPipe.getMatrix();
    }
}

