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
// package org.allbinary.canvas
// import org.allbinary.logic.math.PrimitiveLongSingleton
// import org.allbinary.logic.math.ScaleFactorFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper

public class BaseGameStatistics : JObject {
    private TimeDelayHelper timeDelayHelper;
    private TimeDelayHelper updateDelayHelper;
    private int64 totalRefreshes;
    private int64 totalFrames;
    public GameTickTimeDelayHelper gameTickTimeDelayHelper;
    private int32 DEFAULT_SCALE_FACTOR;
    public string NOT;
    private string EMPTY_STRING;
    private string[] STRING_ARRAY;
    private uint16 SPACE_CHAR;
    private uint16 PLUS_CHAR;
    private uint16 X_CHAR;
    private uint16[,] CHAR_ARRAY;
    private PrimitiveLongSingleton primitiveLongSingleton;

    // Java field initializers run after the base constructor
    private void initFieldsBaseGameStatistics() {
    this.timeDelayHelper = new TimeDelayHelper(Integer.MAX_VALUE);
    this.updateDelayHelper = new TimeDelayHelper(2000);
    this.totalRefreshes = 0;
    this.totalFrames = 0;
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    this.DEFAULT_SCALE_FACTOR = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR;
    this.NOT = "Not enough Time to Calculate";
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    this.STRING_ARRAY = new string[] {" Total Time: ", this.EMPTY_STRING, " Total Frames: ", this.EMPTY_STRING, " Frames/10 Sec: ", this.EMPTY_STRING, " Total Paints: ", this.EMPTY_STRING, " Paints/10 Sec: ", this.EMPTY_STRING};
    this.SPACE_CHAR = ((uint16) ' ');
    this.PLUS_CHAR = ((uint16) '+');
    this.X_CHAR = ((uint16) 'X');
    this.CHAR_ARRAY = new uint16[,] {{((uint16) 'F'), ((uint16) 'r'), ((uint16) 'a'), ((uint16) 'm'), ((uint16) 'e'), ((uint16) 's'), ((uint16) '/'), ((uint16) '1'), ((uint16) '0'), ((uint16) ' '), ((uint16) 'S'), ((uint16) 'e'), ((uint16) 'c'), ((uint16) ':')}, {((uint16) 'X'), ((uint16) 'X'), ((uint16) 0), ((uint16) 0), ((uint16) 0), ((uint16) 0), ((uint16) 0), ((uint16) 0), ((uint16) 0), ((uint16) 0), ((uint16) 0), ((uint16) 0), ((uint16) 0), ((uint16) 0)}, {((uint16) 'P'), ((uint16) 'a'), ((uint16) 'i'), ((uint16) 'n'), ((uint16) 't'), ((uint16) 's'), ((uint16) '/'), ((uint16) '1'), ((uint16) '0'), ((uint16) ' '), ((uint16) 'S'), ((uint16) 'e'), ((uint16) 'c'), ((uint16) ':')}, {((uint16) 'X'), ((uint16) 'X'), ((uint16) 0), ((uint16) 0), ((uint16) 0), ((uint16) 0), ((uint16) 0), ((uint16) 0), ((uint16) 0), ((uint16) 0), ((uint16) 0), ((uint16) 0), ((uint16) 0), ((uint16) 0)}};
    this.primitiveLongSingleton = PrimitiveLongSingleton.getInstance();
    }
    

    public BaseGameStatistics() {
        base();
        this.initFieldsBaseGameStatistics();
    }
    

    public virtual void init() {
        this.timeDelayHelper.setStartTimeTNT();
        this.totalRefreshes = 0;
        this.totalFrames = 0;
    }
    

    public virtual void add(string string) {
    }
    

    public virtual void process() {
    }
    

    public virtual void nextFrame() {
        this.totalFrames++;
    }
    

    public virtual void nextRefresh() {
        this.totalRefreshes++;
    }
    

    public virtual int16 getRefreshRate() {
        int64 elapsed = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime);
        if (elapsed > 1) {
            int16 time = ((int16) ((this.totalRefreshes / (elapsed >> this.DEFAULT_SCALE_FACTOR))));
            return time;
        } else {
            return 0;
        }
    }
    

    public virtual TimeDelayHelper getTimeDelayHelper() {
        return this.timeDelayHelper;
    }
    

    public virtual uint16[,] to2DCharArray() {
        int64 totalTime = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime);
        totalTime = (totalTime >> this.DEFAULT_SCALE_FACTOR);
        if (totalTime > 0 && this.updateDelayHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
            int32 framesPerSec = ((int32) ((this.totalFrames / totalTime)));
            if (framesPerSec < 10) {
                this.CHAR_ARRAY[1, 0] = this.SPACE_CHAR;
                this.CHAR_ARRAY[1, 1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[framesPerSec];
            } else if (framesPerSec < 100) {
                int32 tens = framesPerSec / 10;
                int32 removeTens = tens * 10;
                this.CHAR_ARRAY[1, 0] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[tens];
                this.CHAR_ARRAY[1, 1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[framesPerSec - removeTens];
            } else {
                this.CHAR_ARRAY[1, 0] = this.PLUS_CHAR;
                this.CHAR_ARRAY[1, 1] = this.PLUS_CHAR;
            }
            int32 refreshesPerSec = ((int32) ((this.totalRefreshes / totalTime)));
            if (refreshesPerSec < 10) {
                this.CHAR_ARRAY[3, 0] = this.X_CHAR;
                this.CHAR_ARRAY[3, 1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec];
            } else if (refreshesPerSec < 100) {
                int32 tens = refreshesPerSec / 10;
                int32 removeTens = tens * 10;
                this.CHAR_ARRAY[3, 0] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec / 10];
                this.CHAR_ARRAY[3, 1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec - removeTens];
            } else {
                this.CHAR_ARRAY[3, 0] = this.PLUS_CHAR;
                this.CHAR_ARRAY[3, 1] = this.PLUS_CHAR;
            }
        }
        return this.CHAR_ARRAY;
    }
    

    public virtual string[] toStringArray() {
        int64 totalTime = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime);
        totalTime = (totalTime / 10000);
        if (totalTime > 0) {
            this.STRING_ARRAY[1] = (totalTime).to_string();
            this.STRING_ARRAY[3] = (this.totalFrames).to_string();
            this.STRING_ARRAY[5] = (this.totalFrames / totalTime).to_string();
            this.STRING_ARRAY[7] = (this.totalRefreshes).to_string();
            this.STRING_ARRAY[9] = (this.totalRefreshes / totalTime).to_string();
        } else {
            string string = this.EMPTY_STRING;
            this.STRING_ARRAY[1] = string;
            this.STRING_ARRAY[3] = string;
            this.STRING_ARRAY[5] = string;
            this.STRING_ARRAY[7] = string;
            this.STRING_ARRAY[9] = string;
        }
        return this.STRING_ARRAY;
    }
    

    public virtual string toStringAt(int64 totalTime) {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(this.STRING_ARRAY[0]);
        stringBuffer.appendlong(totalTime);
        stringBuffer.append(this.STRING_ARRAY[2]);
        stringBuffer.appendlong(this.totalFrames);
        stringBuffer.append(this.STRING_ARRAY[4]);
        stringBuffer.appendlong(this.totalFrames / totalTime);
        if (this.totalRefreshes > 0) {
            stringBuffer.append(this.STRING_ARRAY[6]);
            stringBuffer.appendlong(this.totalRefreshes);
            stringBuffer.append(this.STRING_ARRAY[8]);
            stringBuffer.appendlong(this.totalRefreshes / totalTime);
            stringBuffer.append(CommonSeps.getInstance().NEW_LINE);
        }
        return stringBuffer.toString();
    }
    

    public override string toString() {
        int64 totalTime = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime);
        totalTime = (totalTime / 1000);
        if (totalTime > 0) {
            return this.toStringAt(totalTime);
        } else {
            return this.NOT;
        }
    }
}

