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
// package org.allbinary.input.motion.button
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListUtil

public class TouchButtonFactory : JObject {
    private static TouchButtonFactory? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static TouchButtonFactory staticGet_SINGLETON() {
        if (!TouchButtonFactory.staticSet_SINGLETON) {
            TouchButtonFactory.staticSet_SINGLETON = true;
            TouchButtonFactory.SINGLETON = new TouchButtonFactory();
        }
        return TouchButtonFactory.SINGLETON;
    }
    private BasicArrayList LIST;
    private BasicArrayList list;
    private BasicArrayList savedList;
    private bool saved;

    // Java field initializers run after the base constructor
    private void initFieldsTouchButtonFactory() {
    this.LIST = BasicArrayListUtil.getInstance().getImmutableInstance();
    this.list = this.LIST;
    this.savedList = this.LIST;
    this.saved = false;
    }
    

    public static TouchButtonFactory getInstance() {
        return TouchButtonFactory.staticGet_SINGLETON();
    }
    

    public TouchButtonFactory() {
        base();
        this.initFieldsTouchButtonFactory();
    }
    

    public virtual void defaultList() {
        this.list = this.LIST;
        this.toggle(false, this.LIST);
    }
    

    public virtual void toggle(bool save, BasicArrayList list) {
        if (list != BasicArrayListUtil.getInstance().getImmutableInstance()) {
            this.savedList = list;
            if (!this.saved) {
                this.list = this.savedList;
            }
        } else {
            if (save) {
                if (!this.saved) {
                    this.saved = true;
                    this.savedList = this.list;
                    this.list = this.LIST;
                } else {
                }
            } else {
                this.list = this.savedList;
                this.saved = false;
            }
        }
    }
    

    public virtual void setList(BasicArrayList list) {
        if (list == null) {
            JSystem.fatal(new JException("Exception", "Null List"));
        }
        this.list = list;
    }
    

    public virtual BasicArrayList getList() {
        return this.list;
    }
}

