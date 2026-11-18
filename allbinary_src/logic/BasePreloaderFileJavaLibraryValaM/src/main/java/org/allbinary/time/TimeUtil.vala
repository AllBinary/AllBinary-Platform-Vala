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
// import java.util.Calendar

public class TimeUtil : JObject {
    private static TimeUtil? instance;
    private static bool staticSet_instance = false;
    private static TimeUtil staticGet_instance() {
        if (!TimeUtil.staticSet_instance) {
            TimeUtil.staticSet_instance = true;
            TimeUtil.instance = new TimeUtil();
        }
        return TimeUtil.instance;
    }
    private static Calendar? calendar;
    private static bool staticSet_calendar = false;
    private static Calendar staticGet_calendar() {
        if (!TimeUtil.staticSet_calendar) {
            TimeUtil.staticSet_calendar = true;
            TimeUtil.calendar = Calendar.getInstance();
        }
        return TimeUtil.calendar;
    }

    public TimeUtil() {
        base();
    }
    

    public static TimeUtil getInstance() {
        return TimeUtil.staticGet_instance();
    }
    

    public virtual void setCalendar(Calendar calendar, string yearString, string monthString, string dayString, string hourString) {
        int32 year = ((int32) yearString);
        int32 month = ((int32) monthString);
        int32 day = ((int32) dayString);
        int32 hour = ((int32) hourString);
        calendar.@set(year, month, day, hour, 0);
    }
    

    public virtual void setCalendarWithTime(Calendar calendar, string yearString, string monthString, string dayString, string hourString, string minuteString, string secondString) {
        int32 year = ((int32) yearString);
        int32 month = ((int32) monthString);
        int32 day = ((int32) dayString);
        int32 hour = ((int32) hourString);
        int32 minute = ((int32) minuteString);
        int32 second = ((int32) secondString);
        calendar.@set(year, month, day, hour, minute, second);
    }
    

    public virtual void setExpirationCalendar(Calendar calendar, string yearsString, string monthsString, string daysString, string hoursString, string minutesString, string secondsString) {
        int32 year = calendar.@get(Calendar.YEAR) + ((int32) yearsString);
        int32 month = calendar.@get(Calendar.MONTH) + ((int32) monthsString);
        int32 day = calendar.@get(Calendar.DAY_OF_MONTH) + ((int32) daysString);
        int32 hour = calendar.@get(Calendar.HOUR) + ((int32) hoursString);
        int32 minute = calendar.@get(Calendar.MINUTE) + ((int32) minutesString);
        int32 second = calendar.@get(Calendar.SECOND) + ((int32) secondsString);
        calendar.@set(year, month, day, hour, minute, second);
    }
    

    public virtual int64 getTotalTime(string yearString, string monthString, string dayString, string hourString, string minuteString, string secondString) {
        int64 time = TimeUtil.staticGet_calendar().getTimeInMillis();
        this.setExpirationCalendar(TimeUtil.staticGet_calendar(), yearString, monthString, dayString, hourString, minuteString, secondString);
        int64 timeDelta = TimeUtil.staticGet_calendar().getTimeInMillis();
        return timeDelta - time;
    }
}

