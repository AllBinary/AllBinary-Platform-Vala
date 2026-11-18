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
// package org.allbinary.media.audio
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class PlayerQueue : JObject {
    private const string TOTAL = "Sounds In Queue: ";
    private CommonStrings commonStrings;
    private BasicArrayList list;
    private int32 max;

    // Java field initializers run after the base constructor
    private void initFieldsPlayerQueue() {
    this.commonStrings = CommonStrings.getInstance();
    this.list = new BasicArrayListD();
    
    }
    

    public PlayerQueue(int32 max) {
        base();
        this.initFieldsPlayerQueue();
        this.max = max;
    }
    

    public virtual void add(Sound sound) {
        {
            if (!this.list.contains(sound)) {
                this.list.add(sound);
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual bool process() {
        Sound sound = NoSound.getInstance();
        {
            bool played = false;
            if (this.list.size() > 0) {
                sound = ((Sound) this.list.removeAt(0));
                if (sound != null) {
                    sound.getPlayerP().start();
                }
                while (this.list.size() > this.max) {
                    this.list.removeAt(0);
                }
                played = true;
            }
            return played;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void clear() {
        this.list.clear();
    }
    

    public override string toString() {
        return new StringMaker().append(PlayerQueue.TOTAL).appendint(this.list.size()).toString();
    }
}

