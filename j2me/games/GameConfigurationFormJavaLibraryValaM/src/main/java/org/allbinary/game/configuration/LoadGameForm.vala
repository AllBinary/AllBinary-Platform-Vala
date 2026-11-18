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
// package org.allbinary.game.configuration
// import javax.microedition.lcdui.Choice
// import javax.microedition.lcdui.ChoiceGroup
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Item
// import javax.microedition.lcdui.NullImage
// import javax.microedition.lcdui.StringItem
// import org.allbinary.MIDPUtil
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.configuration.persistance.GamePersistanceSingleton
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.screen.CommandForm
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList

public class LoadGameForm : CommandForm {
    private MIDPUtil meUtil;
    private bool areChoices;

    // Java field initializers run after the base constructor
    private void initFieldsLoadGameForm() {
    this.meUtil = MIDPUtil.getInstance();
    this.areChoices = false;
    }
    

    public LoadGameForm(CommandListener commandListener, string title, BasicColor backgrounBasicColor, BasicColor foregroundBasicColor) {
        base(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        this.initFieldsLoadGameForm();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.update();
        this.initCommands(commandListener);
    }
    

    public override void initCommands(CommandListener cmdListener) {
        GameCommandsFactory gameCommandsFactory = GameCommandsFactory.getInstance();
        this.removeAllCommands();
        this.addCommand(gameCommandsFactory.LOAD_FILE);
        this.addCommand(gameCommandsFactory.DELETE_FILE);
        this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
        this.setCommandListener(cmdListener);
    }
    

    public override void update() {
        BasicArrayList list = GamePersistanceSingleton.getInstance().getIds();
        this.deleteAll();
        if (list.size() > 0) {
            this.add(list, "Select A Saved Game", Choice.EXCLUSIVE);
            this.areChoices = true;
        } else {
            this.meUtil.appendItem(this, new StringItem("No Saved Games", StringUtil.getInstance().EMPTY_STRING, Item.PLAIN));
            this.areChoices = false;
        }
        base.update();
    }
    

    private void add(BasicArrayList list, string name, int32 option) {
        ChoiceGroup choiceGroup = this.getChoiceGroup(list, name, option);
        if (list.size() > 0) {
            choiceGroup.setSelectedIndex(0, true);
        }
        this.meUtil.appendItem(this, choiceGroup);
    }
    

    private ChoiceGroup getChoiceGroup(BasicArrayList list, string name, int32 option) {
        string METHOD_NAME = "getChoiceGroup";
        string ADDING_CHOICE = "Adding Choice: ";
        ChoiceGroup choiceGroup = new ChoiceGroup(name, option, StringUtil.getInstance().getArrayInstance(), NullImage.NULL_IMAGE_ARRAY);
        int32 size = list.size();
        for (int32 index = 0; index < size; index++) {
            JObject anyType = list.objectArray[index];
            this.logUtil.putF(new StringMaker().append(ADDING_CHOICE).append(anyType.toString()).toString(), this, METHOD_NAME);
            choiceGroup.append(anyType.toString(), NullImage.NULL_IMAGE);
        }
        return choiceGroup;
    }
    

    public virtual int32 getSelectedId() {
        if (this.areChoices) {
            ChoiceGroup choiceGroup = ((ChoiceGroup) this.@get(0));
            return choiceGroup.getSelectedIndex();
        } else {
            return -1;
        }
    }
    

    public virtual int32 getSelectedText() {
        if (this.areChoices) {
            ChoiceGroup choiceGroup = ((ChoiceGroup) this.@get(0));
            int32 value = (choiceGroup.getString(choiceGroup.getSelectedIndex())).to_string().intValue();
            return value;
        } else {
            return -1;
        }
    }
}

