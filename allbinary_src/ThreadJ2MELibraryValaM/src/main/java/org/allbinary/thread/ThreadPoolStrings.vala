/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.thread

public class ThreadPoolStrings : JObject {
    private static ThreadPoolStrings? instance;
    private static bool staticSet_instance = false;
    private static ThreadPoolStrings staticGet_instance() {
        if (!ThreadPoolStrings.staticSet_instance) {
            ThreadPoolStrings.staticSet_instance = true;
            ThreadPoolStrings.instance = new ThreadPoolStrings();
        }
        return ThreadPoolStrings.instance;
    }
    public string ADD_TASK;
    public string START_TASK;
    public string COMPLETE_TASK;

    // Java field initializers run after the base constructor
    private void initFieldsThreadPoolStrings() {
    this.ADD_TASK = "addTask";
    this.START_TASK = "Started Task: ";
    this.COMPLETE_TASK = "Completed Task: ";
    }

    public ThreadPoolStrings() {
        base();
        this.initFieldsThreadPoolStrings();
    }
    

    public static ThreadPoolStrings getInstance() {
        return ThreadPoolStrings.staticGet_instance();
    }
}

