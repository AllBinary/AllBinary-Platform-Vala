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
// package org.allbinary.animation.resource
// import org.allbinary.animation.BasicAnimationInterfaceFactoryInterface
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.game.resource.ResourceLoadingLevelFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.RectangleFactory
// import org.allbinary.image.ImageCache
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.ABHashtable

public class BaseResourceAnimationInterfaceFactoryInterfaceFactory : JObject, FeatureResourceAnimationInterfaceFactoryInterface, ResourceAnimationInterfaceFactoryInterface, RectangleResourceFactoryInterface, GameFeatureControlledInterface {
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    private ABHashtable hashtable;
    private ABHashtable rectangleHashtable;
    private ABHashtable rectangleArrayOfArraysHashtable;
    private string name;
    private bool initialized;

    // Java field initializers run after the base constructor
    private void initFieldsBaseResourceAnimationInterfaceFactoryInterfaceFactory() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    
    
    this.initialized = false;
    }
    

    public BaseResourceAnimationInterfaceFactoryInterfaceFactory(string name, ABHashtable hashtable, ABHashtable rectangleHashtable, ABHashtable rectangleArrayHashtable) {
        base();
        this.initFieldsBaseResourceAnimationInterfaceFactoryInterfaceFactory();
        this.hashtable = hashtable;
        this.rectangleHashtable = rectangleHashtable;
        this.rectangleArrayOfArraysHashtable = rectangleArrayHashtable;
        this.name = name;
    }
    

    public virtual string getName() {
        return this.name;
    }
    

    public virtual void init(int32 level) {
        CommonStrings commonStrings = CommonStrings.getInstance();
        this.logUtil.putF(new StringMaker().append("Available List of Animations: ").append(this.hashtable.toString()).toString(), this, commonStrings.INIT);
        this.setInitialized(true);
    }
    

    public virtual void initImageCache(ImageCache imageCache, int32 level) {
    }
    

    public virtual void add(string resource, BasicAnimationInterfaceFactoryInterface animationInterfaceFactoryInterface) {
        if (this.hashtable.containsKey(((JObject) resource))) {
            JSystem.fatal(new JException("Exception", new StringMaker().append("Resource Already Created: ").append(resource).toString()));
        }
        this.hashtable.put(JString.box(resource), animationInterfaceFactoryInterface);
    }
    

    public virtual BasicAnimationInterfaceFactoryInterface getBasicAnimationInterfaceFactoryInstance(string resource) {
        JObject basicAnimationInterfaceFactoryInterfaceCanBeNull = this.hashtable.@get(resource);
        if (basicAnimationInterfaceFactoryInterfaceCanBeNull == null) {
            return NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY;
        }
        return ((BasicAnimationInterfaceFactoryInterface) basicAnimationInterfaceFactoryInterfaceCanBeNull);
    }
    

    public virtual Rectangle getRectangle(string resource) {
        JObject rectangleCanBeNull = this.rectangleHashtable.@get(resource);
        if (rectangleCanBeNull == null) {
            return RectangleFactory.SINGLETON;
        }
        return ((Rectangle) rectangleCanBeNull);
    }
    

    public virtual void addRectangle(string resource, Rectangle rectangle) {
        this.rectangleHashtable.put(JString.box(resource), rectangle);
    }
    

    public virtual Rectangle[,] getRectangleArrayOfArrays(string resource) {
        JObject valueCanBeNull = this.rectangleArrayOfArraysHashtable.@get(resource);
        if (valueCanBeNull != null) {
            Rectangle[,] rectangleArrayOfArrays = ((Rectangle[,]) valueCanBeNull);
            return rectangleArrayOfArrays;
        } else {
            return RectangleFactory.ARRAY_OF_ARRAYS;
        }
    }
    

    public virtual void addRectangleArrayOfArrays(string resource, Rectangle[,] rectangleArrayOfArrays) {
        this.rectangleArrayOfArraysHashtable.put(JString.box(resource), rectangleArrayOfArrays);
    }
    

    public virtual bool isFeature() {
        return false;
    }
    

    public virtual bool isLoadingLevel(int32 level) {
        ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        if (level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()) {
            return true;
        } else {
            return false;
        }
    }
    

    public override string toString() {
        return new StringMaker().append(JObject.className(this)).append(CommonSeps.getInstance().SEMICOLON).append(CommonSeps.getInstance().SPACE).append(this.name).toString();
    }
    

    public virtual ABHashtable getHashtable() {
        return this.hashtable;
    }
    

    public virtual ABHashtable getRectangleHashtable() {
        return this.rectangleHashtable;
    }
    

    public virtual ABHashtable getRectangleArrayOfArraysHashtable() {
        return this.rectangleArrayOfArraysHashtable;
    }
    

    public virtual void setInitialized(bool initialized) {
        this.initialized = initialized;
    }
    

    public virtual bool isInitialized() {
        return this.initialized;
    }
}

