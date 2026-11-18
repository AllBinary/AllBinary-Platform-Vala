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
// package org.allbinary.animation
// import org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface
// import org.allbinary.game.configuration.GameConfigurationCentral
// import org.allbinary.game.resource.FeaturedResourceFactory
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.RectangleFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class FeaturedAnimationInterfaceFactoryInterfaceFactory : FeaturedResourceFactory {
    private static FeaturedAnimationInterfaceFactoryInterfaceFactory? INSTANCE;
    private static bool staticSet_INSTANCE = false;
    private static FeaturedAnimationInterfaceFactoryInterfaceFactory staticGet_INSTANCE() {
        if (!FeaturedAnimationInterfaceFactoryInterfaceFactory.staticSet_INSTANCE) {
            FeaturedAnimationInterfaceFactoryInterfaceFactory.staticSet_INSTANCE = true;
            FeaturedAnimationInterfaceFactoryInterfaceFactory.INSTANCE = new FeaturedAnimationInterfaceFactoryInterfaceFactory();
        }
        return FeaturedAnimationInterfaceFactoryInterfaceFactory.INSTANCE;
    }
    

    public FeaturedAnimationInterfaceFactoryInterfaceFactory() {
        base();
    }
    

    public static FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance() {
        return FeaturedAnimationInterfaceFactoryInterfaceFactory.staticGet_INSTANCE();
    }
    

    public virtual Rectangle getRectangle(string resource) {
        return this.getRectangleXY(resource, 0, 0);
    }
    

    public virtual Rectangle getRectangleXY(string resource, int32 x, int32 y) {
        PointFactory pointFactory = PointFactory.getInstance();
        BasicArrayList list = this.getList();
        int32 scale = GameConfigurationCentral.getInstance().SCALE.getValue().intValue();
        int32 size = this.getList().size();
        for (int32 index = 0; index < size; index++) {
            FeatureResourceAnimationInterfaceFactoryInterface featureInterface = ((FeatureResourceAnimationInterfaceFactoryInterface) list.objectArray[index]);
            if (featureInterface.isFeature()) {
                Rectangle rectangle = featureInterface.getRectangle(resource);
                if (rectangle != RectangleFactory.SINGLETON) {
                    return new Rectangle(pointFactory.createXY(x, y), ((rectangle.getWidth() * scale) >> 1), ((rectangle.getHeight() * scale) >> 1));
                }
            }
        }
        JSystem.fatal(new JException("Exception", new StringMaker().append("No rectangle available for current feature selection or Resource: ").append(resource).toString()));
    }
    

    public virtual ProceduralAnimationInterfaceFactoryInterface getProcedural(string resource) {
        return ((ProceduralAnimationInterfaceFactoryInterface) this.getBasicAnimationInterfaceFactoryInstance(resource));
    }
    

    public virtual AnimationInterfaceFactoryInterface @get(string resource) {
        return ((AnimationInterfaceFactoryInterface) this.getBasicAnimationInterfaceFactoryInstance(resource));
    }
    

    private BasicAnimationInterfaceFactoryInterface getBasicAnimationInterfaceFactoryInstance(string resource) {
        BasicArrayList list = this.getList();
        BasicArrayList resourceTypeAvailableList = new BasicArrayListD();
        int32 size = this.getList().size();
        FeatureResourceAnimationInterfaceFactoryInterface featureInterface = null;
        BasicAnimationInterfaceFactoryInterface animationInterfaceFactoryInterface = null;
        for (int32 index = 0; index < size; index++) {
            featureInterface = ((FeatureResourceAnimationInterfaceFactoryInterface) list.objectArray[index]);
            if (featureInterface.isFeature()) {
                resourceTypeAvailableList.add(featureInterface);
                animationInterfaceFactoryInterface = featureInterface.getBasicAnimationInterfaceFactoryInstance(resource);
                if (animationInterfaceFactoryInterface != NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY) {
                    return animationInterfaceFactoryInterface;
                }
            }
        }
        if (resourceTypeAvailableList.size() > 0) {
            string NO_ANIMATION_AVAILABLE_FROM = "No animation available from: ";
            string FOR_FACTORIES = " factories: ";
            string FOR_RESOURCE = " for Resource: ";
            string HAS_KEY = " has: ";
            string RESOURCES_LABEL = " resources ";
            StringMaker stringBuffer = new StringMaker();
            stringBuffer.append(NO_ANIMATION_AVAILABLE_FROM);
            stringBuffer.appendint(resourceTypeAvailableList.size());
            stringBuffer.append(CommonSeps.getInstance().FORWARD_SLASH);
            stringBuffer.appendint(size);
            stringBuffer.append(FOR_FACTORIES);
            int32 size2 = resourceTypeAvailableList.size();
            for (int32 index = 0; index < size2; index++) {
                stringBuffer.append(resourceTypeAvailableList.@get(index).toString());
                stringBuffer.append(CommonSeps.getInstance().COMMA_SEP);
            }
            stringBuffer.append(FOR_RESOURCE);
            stringBuffer.append(resource);
            for (int32 index = 0; index < size; index++) {
                stringBuffer.append(CommonSeps.getInstance().NEW_LINE);
                featureInterface = ((FeatureResourceAnimationInterfaceFactoryInterface) list.objectArray[index]);
                if (featureInterface.isFeature()) {
                    stringBuffer.append(StringUtil.getInstance().toString1(featureInterface));
                    stringBuffer.append(HAS_KEY);
                    stringBuffer.appendint(featureInterface.getHashtable().size());
                    stringBuffer.append(RESOURCES_LABEL);
                }
            }
            JSystem.fatal(new JException("Exception", stringBuffer.toString()));
        } else {
            StringMaker stringBuffer = new StringMaker();
            for (int32 index = 0; index < size; index++) {
                featureInterface = ((FeatureResourceAnimationInterfaceFactoryInterface) list.objectArray[index]);
                stringBuffer.append(featureInterface.toString());
                stringBuffer.append(CommonSeps.getInstance().SPACE);
            }
            string result = stringBuffer.toString();
            stringBuffer.@delete(0, stringBuffer.length());
            JSystem.fatal(new JException("Exception", stringBuffer.append("No feature resource type available for Resource: ").append(resource).append(" Resource Factories Available: ").append(result).toString()));
        }
    }
}

