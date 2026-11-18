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
// package org.allbinary.game.resource
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.RelativeRelationship
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.relationship.RelativeLayerRelationship
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

public class FeaturedResourceRelativeRelationshipFactory : FeaturedResourceFactory {
    private static FeaturedResourceRelativeRelationshipFactory? INSTANCE;
    private static bool staticSet_INSTANCE = false;
    private static FeaturedResourceRelativeRelationshipFactory staticGet_INSTANCE() {
        if (!FeaturedResourceRelativeRelationshipFactory.staticSet_INSTANCE) {
            FeaturedResourceRelativeRelationshipFactory.staticSet_INSTANCE = true;
            FeaturedResourceRelativeRelationshipFactory.INSTANCE = new FeaturedResourceRelativeRelationshipFactory();
        }
        return FeaturedResourceRelativeRelationshipFactory.INSTANCE;
    }
    private BasicArrayListUtil basicArrayListUtil;

    // Java field initializers run after the base constructor
    private void initFieldsFeaturedResourceRelativeRelationshipFactory() {
    this.basicArrayListUtil = BasicArrayListUtil.getInstance();
    }
    

    public FeaturedResourceRelativeRelationshipFactory() {
        base();
        this.initFieldsFeaturedResourceRelativeRelationshipFactory();
    }
    

    public static FeaturedResourceRelativeRelationshipFactory getInstance() {
        return FeaturedResourceRelativeRelationshipFactory.staticGet_INSTANCE();
    }
    

    public virtual BasicArrayList getRelativeRelationshipList(string resource, AllBinaryLayer layer) {
        BasicArrayList featureReleaseList = this.getList();
        int32 size = this.getList().size();
        for (int32 index = 0; index < size; index++) {
            ResourceRelativeRelationshipFactoryInterface featureInterface = ((ResourceRelativeRelationshipFactoryInterface) featureReleaseList.objectArray[index]);
            if (featureInterface.isFeature()) {
                BasicArrayList list = featureInterface.getResourceRelativeRelationshipList(resource);
                if (list != this.basicArrayListUtil.getImmutableInstance()) {
                    return this.duplicate(list, layer);
                }
            }
        }
        JSystem.fatal(new JException("Exception", new StringMaker().append("Not available for current feature selection or Resource: ").append(resource).toString()));
    }
    

    private BasicArrayList duplicate(BasicArrayList list, AllBinaryLayer layer) {
        PointFactory pointFactory = PointFactory.getInstance();
        BasicArrayList newList = new BasicArrayListD();
        int32 size = list.size();
        for (int32 index = 0; index < size; index++) {
            RelativeRelationship relativeRelationship = ((RelativeRelationship) list.objectArray[index]);
            newList.add(new RelativeLayerRelationship(layer, pointFactory.createXY(relativeRelationship.getX(), relativeRelationship.getY()), BasicArrayListUtil.getInstance().getImmutableInstance()));
        }
        return newList;
    }
}

