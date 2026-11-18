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
// package org.allbinary.game.input
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class GameInputProcessorComposite : PlayerGameInput {
    private string name;
    private GameInputProcessorInterface gameInputProcessorInterface;
    private string NAME_LABEL;

    // Java field initializers run after the base constructor
    private void initFieldsGameInputProcessorComposite() {
    
    
    this.NAME_LABEL = " GameInputProcessorInterface: ";
    }
    

    public GameInputProcessorComposite(string name, GameInputProcessorInterface gameInputProcessorInterface) {
        base(new BasicArrayListD(), new BasicArrayListD(), -1);
        this.initFieldsGameInputProcessorComposite();
        this.name = name;
        this.gameInputProcessorInterface = gameInputProcessorInterface;
    }
    

    public override void update() {
        {
            BasicArrayList list = this.getGameKeyEventList();
            this.gameInputProcessorInterface.onInput(list);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override string toString() {
        return new StringMaker().append(base.toString()).append(this.NAME_LABEL).append(this.name).toString();
    }
}

