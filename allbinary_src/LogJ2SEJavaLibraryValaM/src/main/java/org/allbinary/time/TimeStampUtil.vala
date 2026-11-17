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
// package org.allbinary.time
// import java.text.SimpleDateFormat
// import java.util.Calendar
// import java.util.Date

//ActualPlatform
public class TimeStampUtil : JObject {
    private static TimeStampUtil? instance;
    private static bool staticSet_instance = false;
    private static TimeStampUtil staticGet_instance() {
        if (!TimeStampUtil.staticSet_instance) {
            TimeStampUtil.staticSet_instance = true;
            TimeStampUtil.instance = new TimeStampUtil();
        }
        return TimeStampUtil.instance;
    }
    private SimpleDateFormat simpleDataFormat;

    // Java field initializers run after the base constructor
    private void initFieldsTimeStampUtil() {
    this.simpleDataFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
    }
    

    public static TimeStampUtil getInstance() {
        return TimeStampUtil.staticGet_instance();
    }
    

    public TimeStampUtil() {
        base();
        this.initFieldsTimeStampUtil();
    }
    

    public virtual string getAsString() {
        Calendar calendar = Calendar.getInstance();
        Date date = calendar.getTime();
        return this.simpleDataFormat.format(date);
    }
}

