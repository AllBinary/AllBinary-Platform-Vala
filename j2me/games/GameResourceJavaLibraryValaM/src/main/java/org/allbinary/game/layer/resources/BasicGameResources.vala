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
// import org.allbinary.game.configuration.GameConfigurationCentral
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

public class BasicGameResources : JObject {
    public static StringMaker? stringBuffer;
    private static bool staticSet_stringBuffer = false;
    public static StringMaker staticGet_stringBuffer() {
        if (!BasicGameResources.staticSet_stringBuffer) {
            BasicGameResources.staticSet_stringBuffer = true;
            BasicGameResources.stringBuffer = new StringMaker();
        }
        return BasicGameResources.stringBuffer;
    }
    public LogUtil logUtil;
    public string RESOURCE;
    public string RESOURCE_DESTROY;

    // Java field initializers run after the base constructor
    private void initFieldsBasicGameResources() {
    this.logUtil = LogUtil.getInstance();
    this.RESOURCE = StringUtil.getInstance().EMPTY_STRING;
    this.RESOURCE_DESTROY = StringUtil.getInstance().EMPTY_STRING;
    }
    

    public BasicGameResources() {
        base();
        this.initFieldsBasicGameResources();
    }
    

    public virtual void init(string ROOT, string[] SIZE) {
        {
            int32 scale = GameConfigurationCentral.getInstance().SCALE.getValue().intValue();
            if (scale > 1 && scale - 1 < SIZE.length) {
                this.append(ROOT, SIZE[scale - 1]);
            } else {
                JSystem.fatal(new JException("Exception", new StringMaker().append("Invalid Value: ").appendint(scale).toString()));
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void append(string ROOT, string sizeString) {
        string DESTROY = "_destroy";
        string string = this.getString();
        BasicGameResources.staticGet_stringBuffer().@delete(0, BasicGameResources.staticGet_stringBuffer().length());
        BasicGameResources.staticGet_stringBuffer().append(ROOT);
        BasicGameResources.staticGet_stringBuffer().append(string);
        BasicGameResources.staticGet_stringBuffer().append(sizeString);
        this.RESOURCE = BasicGameResources.staticGet_stringBuffer().toString();
        BasicGameResources.staticGet_stringBuffer().@delete(0, BasicGameResources.staticGet_stringBuffer().length());
        BasicGameResources.staticGet_stringBuffer().append(ROOT);
        BasicGameResources.staticGet_stringBuffer().append(DESTROY);
        BasicGameResources.staticGet_stringBuffer().append(string);
        BasicGameResources.staticGet_stringBuffer().append(sizeString);
        this.RESOURCE_DESTROY = BasicGameResources.staticGet_stringBuffer().toString();
    }
    

    public virtual string getString() {
        return GameGraphicsResourceUtil.getInstance().getName();
    }
}

