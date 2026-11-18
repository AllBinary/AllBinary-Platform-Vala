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
// import org.allbinary.util.BasicArrayListD

public class CurrentlyPressedTouchButtonSingleton : JObject {
    private static CurrentlyPressedTouchButtonSingleton? instance;
    private static bool staticSet_instance = false;
    private static CurrentlyPressedTouchButtonSingleton staticGet_instance() {
        if (!CurrentlyPressedTouchButtonSingleton.staticSet_instance) {
            CurrentlyPressedTouchButtonSingleton.staticSet_instance = true;
            CurrentlyPressedTouchButtonSingleton.instance = new CurrentlyPressedTouchButtonSingleton();
        }
        return CurrentlyPressedTouchButtonSingleton.instance;
    }
    public BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsCurrentlyPressedTouchButtonSingleton() {
    this.list = new BasicArrayListD();
    }
    

    public static CurrentlyPressedTouchButtonSingleton getInstance() {
        return CurrentlyPressedTouchButtonSingleton.staticGet_instance();
    }
    

    public CurrentlyPressedTouchButtonSingleton() {
        base();
        this.initFieldsCurrentlyPressedTouchButtonSingleton();
    }
    

    public virtual int32 size() {
        return this.list.size();
    }
    

    public virtual TouchButtonInput removeAt(int32 index) {
        return ((TouchButtonInput) this.list.removeAt(index));
    }
    

    public virtual bool remove(TouchButtonInput touchButtonInput) {
        return this.list.remove(touchButtonInput);
    }
    

    public virtual TouchButtonInput @get(int32 index) {
        return ((TouchButtonInput) this.list.objectArray[index]);
    }
    

    public virtual bool contains(TouchButtonInput touchButtonInput) {
        return this.list.contains(touchButtonInput);
    }
    

    public virtual void add(TouchButtonInput touchButtonInput) {
        this.list.add(touchButtonInput);
    }
}

