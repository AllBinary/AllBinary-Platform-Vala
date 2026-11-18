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
// package org.allbinary.graphics.form.item
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.ImageItem
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.form.ScreenInfo
// import org.allbinary.logic.VectorUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class CommandTextItemArrayFactory : JObject {
    private BasicArrayList list;
    private Visitor visitorInterface;

    // Java field initializers run after the base constructor
    private void initFieldsCommandTextItemArrayFactory() {
    this.list = new BasicArrayListD();
    
    }
    

    public CommandTextItemArrayFactory(Visitor visitorInterface) {
        base();
        this.initFieldsCommandTextItemArrayFactory();
        this.visitorInterface = visitorInterface;
    }
    

    public virtual ABCustomItem[] getInstance3(JObject vector, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        VectorUtil vectorUtil = VectorUtil.getInstance();
        int32 size = vectorUtil.getSize(vector);
        this.list.clear();
        CommandTextItem textItem = null;
        int32 priorityLimit = 7;
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        bool isLargeEnoughDisplayForBigMenu = (displayInfo.isPortrait() && displayInfo.getLastHeight() >= ScreenInfo.getInstance().MEDIUM_WIDTH) || (!displayInfo.isPortrait() && displayInfo.getLastWidth() >= ScreenInfo.getInstance().MEDIUM_WIDTH);
        if (!isLargeEnoughDisplayForBigMenu && size > 3) {
            priorityLimit = 3;
        }
        Command command = null;
        for (int32 index = 0; index < size; index++) {
            command = ((Command) vectorUtil.elementAt(vector, index));
            if (command.getPriority() < priorityLimit) {
                bool aBoolean = ((bool) this.visitorInterface.visit(command));
                if (aBoolean) {
                    textItem = new CommandTextItem(command, ImageItem.LAYOUT_DEFAULT, StringUtil.getInstance().EMPTY_STRING, backgroundBasicColor, foregroundBasicColor);
                    this.list.add(textItem);
                }
            }
        }
        ABCustomItem[] textItemArray = new ABCustomItem[this.list.size()];
        int32 size2 = textItemArray.length;
        for (int32 index = 0; index < size2; index++) {
            textItemArray[index] = ((ABCustomItem) this.list.objectArray[index]);
        }
        return textItemArray;
    }
}

