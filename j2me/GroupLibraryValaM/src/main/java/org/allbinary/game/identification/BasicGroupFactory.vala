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
// package org.allbinary.game.identification
// import org.allbinary.logic.NullUtil

public class BasicGroupFactory : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!BasicGroupFactory.staticSet_instance) {
            BasicGroupFactory.staticSet_instance = true;
            BasicGroupFactory.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return BasicGroupFactory.instance;
    }
    public string NAME;
    public string NO_SUCH_GROUP;
    public Group GOOD;
    public Group ENEMY;
    public Group ENEMY_ON_LEVEL;
    public Group NONE;
    public Group[] GOOD_ARRAY;
    public Group[] ENEMY_ARRAY;
    public Group[] ENEMY_ON_LEVEL_ARRAY;
    public Group[] NONE_ARRAY;

    // Java field initializers run after the base constructor
    private void initFieldsBasicGroupFactory() {
    this.NAME = "GROUP_NAME";
    this.NO_SUCH_GROUP = "No Such Group: ";
    this.GOOD = new Group("Good Guys", ((int16) (0)));
    this.ENEMY = new Group("Bad Guys", ((int16) (1)));
    this.ENEMY_ON_LEVEL = new Group("Bad Guys on Level", ((int16) (2)));
    this.NONE = new Group("Not On A Team", ((int16) (3)));
    this.GOOD_ARRAY = new Group[] {this.GOOD};
    this.ENEMY_ARRAY = new Group[] {this.ENEMY};
    this.ENEMY_ON_LEVEL_ARRAY = new Group[] {this.ENEMY, this.ENEMY_ON_LEVEL};
    this.NONE_ARRAY = new Group[] {this.NONE};
    }

    public BasicGroupFactory() {
        base();
        this.initFieldsBasicGroupFactory();
    }
    

    public static BasicGroupFactory getInstance() {
        if (BasicGroupFactory.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            BasicGroupFactory.instance = new BasicGroupFactory();
        }
        return ((BasicGroupFactory) BasicGroupFactory.staticGet_instance());
    }
}

