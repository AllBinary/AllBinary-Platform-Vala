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
// package org.allbinary.game.ag.layer.weapon.mine
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerFactoryInterface
// import org.allbinary.view.ViewPositionFactoryInterface

public class MineLayerFactory : JObject, AllBinaryLayerFactoryInterface {
    private ViewPositionFactoryInterface viewPositionFactoryInterface;

    // Java field initializers run after the base constructor
    private void initFieldsMineLayerFactory() {
    
    }
    

    public MineLayerFactory(ViewPositionFactoryInterface viewPositionFactoryInterface) {
        base();
        this.initFieldsMineLayerFactory();
        this.viewPositionFactoryInterface = viewPositionFactoryInterface;
    }
    

    public virtual AllBinaryLayer getInstance() {
        return new MineLayer(this.viewPositionFactoryInterface.getInstance());
    }
}

