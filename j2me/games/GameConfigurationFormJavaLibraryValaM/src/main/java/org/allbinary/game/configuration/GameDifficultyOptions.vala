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
// import javax.microedition.lcdui.NullImage
// import org.allbinary.MIDPUtil
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.configuration.persistance.GameDifficultyFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.screen.CommandForm
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList

public class GameDifficultyOptions : CommandForm {
    private MIDPUtil meUtil;
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsGameDifficultyOptions() {
    this.meUtil = MIDPUtil.getInstance();
    
    }
    

    public GameDifficultyOptions(CommandListener commandListener, string title, BasicArrayList list, BasicColor backgrounBasicColor, BasicColor foregroundBasicColor) {
        base(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        this.initFieldsGameDifficultyOptions();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.list = list;
        this.update();
        this.initCommands(commandListener);
        GameDifficultyFactory gameDifficultyFactory = GameDifficultyFactory.getInstance();
        this.setSelectedId(gameDifficultyFactory.getLevel());
    }
    

    public override void open() {
        base.open();
    }
    

    public override void close() {
        base.close();
        this.save();
    }
    

    public virtual void save() {
        GameDifficultyFactory gameDifficultyFactory = GameDifficultyFactory.getInstance();
        gameDifficultyFactory.setLevel(this.getSelectedId());
    }
    

    public override void initCommands(CommandListener cmdListener) {
        GameCommandsFactory gameCommandsFactory = GameCommandsFactory.getInstance();
        this.removeAllCommands();
        this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
        this.setCommandListener(cmdListener);
    }
    

    public override void update() {
        this.deleteAll();
        this.add(this.list, "Difficulty", Choice.EXCLUSIVE);
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
        string METHOD_NAME = "addChoiceGroup";
        string NAME = "Adding Choice: ";
        ChoiceGroup choiceGroup = new ChoiceGroup(name, option, StringUtil.getInstance().getArrayInstance(), NullImage.NULL_IMAGE_ARRAY);
        int32 size = list.size();
        JObject anyType = null;
        for (int32 index = 0; index < size; index++) {
            anyType = list.objectArray[index];
            this.logUtil.putF(new StringMaker().append(NAME).append(anyType.toString()).toString(), this, METHOD_NAME);
            choiceGroup.append(anyType.toString(), NullImage.NULL_IMAGE);
        }
        return choiceGroup;
    }
    

    public virtual void setSelectedId(int32 id) {
        ChoiceGroup choiceGroup = ((ChoiceGroup) this.@get(0));
        choiceGroup.setSelectedIndex(id, true);
    }
    

    public virtual int32 getSelectedId() {
        ChoiceGroup choiceGroup = ((ChoiceGroup) this.@get(0));
        return choiceGroup.getSelectedIndex();
    }
    

    public virtual int32 getSelectedText() {
        ChoiceGroup choiceGroup = ((ChoiceGroup) this.@get(0));
        int32 value = (choiceGroup.getString(choiceGroup.getSelectedIndex())).to_string().intValue();
        return value;
    }
}

