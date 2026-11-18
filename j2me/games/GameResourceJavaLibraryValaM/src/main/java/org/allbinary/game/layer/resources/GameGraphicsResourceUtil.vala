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
// package org.allbinary.game.layer.resources
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GraphicsFeature
// import org.allbinary.game.configuration.feature.GraphicsFeatureFactory
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.graphics.opengles.OpenGLFeatureUtil
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

public class GameGraphicsResourceUtil : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!GameGraphicsResourceUtil.staticSet_instance) {
            GameGraphicsResourceUtil.staticSet_instance = true;
            GameGraphicsResourceUtil.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return GameGraphicsResourceUtil.instance;
    }
    public LogUtil logUtil;
    public string SPRITE;
    public string QUARTER;
    private string name;

    // Java field initializers run after the base constructor
    private void initFieldsGameGraphicsResourceUtil() {
    this.logUtil = LogUtil.getInstance();
    this.SPRITE = "_sprite";
    this.QUARTER = "_quarter";
    this.name = StringUtil.getInstance().EMPTY_STRING;
    }
    

    public static GameGraphicsResourceUtil getInstance() {
        if (GameGraphicsResourceUtil.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            GameGraphicsResourceUtil.instance = new GameGraphicsResourceUtil();
        }
        return ((GameGraphicsResourceUtil) GameGraphicsResourceUtil.staticGet_instance());
    }
    

    public GameGraphicsResourceUtil() {
        base();
        this.initFieldsGameGraphicsResourceUtil();
        {
            this.name = this.getString();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    private string getString() {
        GraphicsFeatureFactory graphicsFeatureFactory = GraphicsFeatureFactory.getInstance();
        GraphicsFeature graphicsFeature = graphicsFeatureFactory.NONE;
        Features features = Features.getInstance();
        if (features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS)) {
            graphicsFeature = graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS;
        } else if (features.isFeature(graphicsFeatureFactory.SPRITE_FULL_GRAPHICS)) {
            graphicsFeature = graphicsFeatureFactory.SPRITE_FULL_GRAPHICS;
        } else if (features.isFeature(graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS)) {
            graphicsFeature = graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS;
        } else if (features.isFeature(graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY)) {
            graphicsFeature = graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY;
        }
        return this.getStringForFeature(graphicsFeature);
    }
    

    public virtual string getStringForFeature(GraphicsFeature graphicsFeature) {
        StringMaker stringBuffer = new StringMaker();
        GraphicsFeatureFactory graphicsFeatureFactory = GraphicsFeatureFactory.getInstance();
        stringBuffer.@delete(0, stringBuffer.length());
        Features features = Features.getInstance();
        if (features.isFeature(graphicsFeatureFactory.VECTOR_GRAPHICS)) {
        } else if (features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS)) {
            if (graphicsFeature == graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS || graphicsFeature == graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY) {
            } else if (graphicsFeature == graphicsFeatureFactory.SPRITE_FULL_GRAPHICS) {
                stringBuffer.append(this.SPRITE);
            } else if (graphicsFeature == graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS) {
                stringBuffer.append(this.QUARTER);
                stringBuffer.append(this.SPRITE);
            } else {
                JSystem.fatal(new JException("Exception", "None/Unknown Sub Image Resource Type Specified"));
            }
        } else if (OpenGLFeatureUtil.getInstance().isAnyThreed()) {
            stringBuffer.append(CanvasStrings.getInstance().OBJ_MODEL);
        } else {
            JSystem.fatal(new JException("Exception", "None/Unknown Main Image Resource Type Specified"));
        }
        return stringBuffer.toString();
    }
    

    public virtual string getName() {
        return this.name;
    }
}

