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
// package org.allbinary.game.score
// import java.io.ByteArrayInputStream
// import java.io.DataInputStream
// import java.io.EOFException
// import java.io.IOException
// import javax.microedition.rms.RecordComparator
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class ScoreComparator : JObject, RecordComparator {
    public LogUtil logUtil;
    private bool isHighestBest;

    // Java field initializers run after the base constructor
    private void initFieldsScoreComparator() {
    this.logUtil = LogUtil.getInstance();
    
    }
    

    public ScoreComparator(bool isHighestBest) {
        base();
        this.initFieldsScoreComparator();
        this.isHighestBest = isHighestBest;
    }
    

    public virtual int64 getBestScore() {
        return (this.isHighestBest ? Long.MAX_VALUE : 0);
    }
    

    public virtual int32 compare(int8[] recordOne, int8[] recordTwo) {
        ByteArrayInputStream byteArrayInputStreamOne = new ByteArrayInputStream(recordOne);
        DataInputStream inputStreamOne = new DataInputStream(byteArrayInputStreamOne);
        ByteArrayInputStream byteArrayInputStreamTwo = new ByteArrayInputStream(recordTwo);
        DataInputStream inputStreamTwo = new DataInputStream(byteArrayInputStreamTwo);
        int64 scoreOne = 0;
        int64 scoreTwo = 0;
        {
            inputStreamOne.readUTF();
            inputStreamTwo.readUTF();
            scoreOne = inputStreamOne.readLong();
            scoreTwo = inputStreamTwo.readLong();
        } /* catch (EOFException e): a thrown Java exception stops the program */ /* catch (IOException e): a thrown Java exception stops the program */ /* catch (Exception e): a thrown Java exception stops the program */
        if (this.isHighestBest) {
            return this.getHighTooLow(scoreOne, scoreTwo);
        } else {
            return this.getLowTooHigh(scoreOne, scoreTwo);
        }
    }
    

    public virtual int32 getHighTooLow(int64 scoreOne, int64 scoreTwo) {
        if (scoreOne > scoreTwo) {
            return RecordComparator.PRECEDES;
        } else if (scoreOne < scoreTwo) {
            return RecordComparator.FOLLOWS;
        } else {
            return RecordComparator.EQUIVALENT;
        }
    }
    

    public virtual int32 getLowTooHigh(int64 scoreOne, int64 scoreTwo) {
        if (scoreOne < scoreTwo) {
            return RecordComparator.PRECEDES;
        } else if (scoreOne > scoreTwo) {
            return RecordComparator.FOLLOWS;
        } else {
            return RecordComparator.EQUIVALENT;
        }
    }
}

