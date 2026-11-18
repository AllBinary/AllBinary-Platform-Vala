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
// import org.allbinary.game.layer.resources.BasicGameResources
// import org.allbinary.logic.NullUtil

public class MineWeaponResources : BasicGameResources {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!MineWeaponResources.staticSet_instance) {
            MineWeaponResources.staticSet_instance = true;
            MineWeaponResources.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return MineWeaponResources.instance;
    }
    public string DROP_TEXT_RESOURCE;
    public string DROP_RESOURCE;
    public string DROP_ICON_RESOURCE;

    // Java field initializers run after the base constructor
    private void initFieldsMineWeaponResources() {
    this.DROP_TEXT_RESOURCE = "/mine_drop_text_20_by_20.png";
    this.DROP_RESOURCE = "/mine_drop_20_by_20.png";
    this.DROP_ICON_RESOURCE = "/mine_drop_icon_20_by_20.png";
    }
    

    public static MineWeaponResources getInstance() {
        if (MineWeaponResources.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            MineWeaponResources.instance = new MineWeaponResources();
        }
        return ((MineWeaponResources) MineWeaponResources.staticGet_instance());
    }
    

    public MineWeaponResources() {
        base();
        this.initFieldsMineWeaponResources();
        string ROOT = "/mine";
        string SMALL = "_20_by_20.png";
        string MEDIUM = SMALL;
        string SIZE_FOUR = SMALL;
        string SIZE_FIVE = SMALL;
        string SIZE_SIX = SMALL;
        string[] SIZE = new string[] {SMALL, MEDIUM, SIZE_FOUR, SIZE_FIVE, SIZE_SIX};
        base.init(ROOT, SIZE);
    }
}

