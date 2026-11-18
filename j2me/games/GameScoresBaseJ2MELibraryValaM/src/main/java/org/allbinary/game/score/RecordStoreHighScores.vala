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
// import javax.microedition.rms.RecordEnumeration
// import javax.microedition.rms.RecordStore
// import javax.microedition.rms.RecordStoreException
// import javax.microedition.rms.RecordStoreNotFoundException
// import org.allbinary.TsUtil
// import org.allbinary.game.GameInfo
// import org.allbinary.game.configuration.persistance.NullRecordComparator
// import org.allbinary.game.configuration.persistance.NullRecordFilter
// import org.allbinary.game.configuration.persistance.NullRecordStore
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.persistance.PlatformRecordIdUtil
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class RecordStoreHighScores : HighScores {
    private static ABHashtable? hashTable;
    private static bool staticSet_hashTable = false;
    private static ABHashtable staticGet_hashTable() {
        if (!RecordStoreHighScores.staticSet_hashTable) {
            RecordStoreHighScores.staticSet_hashTable = true;
            RecordStoreHighScores.hashTable = StdUtil.getInstance().createHashtable();
        }
        return RecordStoreHighScores.hashTable;
    }
    public LogUtil logUtil;
    private CommonStrings commonStrings;
    private PlatformRecordIdUtil platformRecordIdUtil;
    private TsUtil tsUtil;
    private string RECORD_ID;
    private int32 MAXHIGHSCORES;
    private GameInfo gameInfo;
    private AbeClientInformationInterface abeClientInformation;
    private RecordComparator recordComparatorInterface;

    // Java field initializers run after the base constructor
    private void initFieldsRecordStoreHighScores() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.platformRecordIdUtil = PlatformRecordIdUtil.getInstance();
    this.tsUtil = TsUtil.getInstance();
    this.RECORD_ID = "_HS";
    this.MAXHIGHSCORES = 100;
    
    
    
    }
    

    public RecordStoreHighScores(AbeClientInformationInterface abeClientInformation, GameInfo gameInfo, string name, string heading, string columnTwoHeading, RecordComparator recordComparatorInterface) {
        base(name, heading, columnTwoHeading);
        this.initFieldsRecordStoreHighScores();
        this.abeClientInformation = abeClientInformation;
        this.gameInfo = gameInfo;
        this.recordComparatorInterface = recordComparatorInterface;
        this.load();
    }
    

    public static HighScores getInstance6(AbeClientInformationInterface abeClientInformation, GameInfo gameInfo, string highScoreName, string heading, string columnTwoHeading, RecordComparator recordComparatorInterface) {
        JObject highScoresCanBeNull = RecordStoreHighScores.staticGet_hashTable().@get(((JObject) highScoreName));
        if (highScoresCanBeNull == null) {
            HighScores highScores = new RecordStoreHighScores(abeClientInformation, gameInfo, highScoreName, heading, columnTwoHeading, recordComparatorInterface);
            RecordStoreHighScores.staticGet_hashTable().put(JString.box(highScores.getName()), highScores);
            return highScores;
        }
        return ((HighScores) highScoresCanBeNull);
    }
    

    private string getRecordId(AbeClientInformationInterface abeClientInformation) {
        return this.platformRecordIdUtil.getRecordId(abeClientInformation, new StringMaker().append(CommonSeps.getInstance().UNDERSCORE).append(this.getName()).append(this.RECORD_ID).toString());
    }
    

    public override void addHighScore(HighScore newHighScore) {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        {
            this.logUtil.putF(new StringMaker().append("Adding HighScore: ").appendlong(newHighScore.getScore()).toString(), this, this.commonStrings.ADD);
            if (this.isTooManyHighScores()) {
                this.logUtil.putF("Removing Lowest Score", this, this.commonStrings.ADD);
                this.removeLowestHighScore();
            }
            recordStore = RecordStore.openRecordStore(this.getRecordId(this.abeClientInformation), true);
            int8[] highScoreBytes = newHighScore.getAsBytes();
            recordStore.addRecord(highScoreBytes, 0, highScoreBytes.length);
            this.load();
        } /* catch (RecordStoreException e): a thrown Java exception stops the program */ /* catch (IOException e): a thrown Java exception stops the program */ /* catch (Exception e): a thrown Java exception stops the program */
        {
            {
                if (recordStore != null) {
                    PreLogUtil.put("Closing RecordStore", this, this.commonStrings.ADD);
                    recordStore.closeRecordStore();
                }
            } /* catch (RecordStoreException e): a thrown Java exception stops the program */
        }
    }
    

    private void removeLowestHighScore() {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        {
            recordStore = RecordStore.openRecordStore(this.getRecordId(this.abeClientInformation), true);
            RecordEnumeration recordEnum = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true);
            ScoreComparator scoreComparator = (((ScoreComparator) this.recordComparatorInterface));
            HighScore bestHighScore = new HighScore(-1, "none", GameInfo.NONE, scoreComparator.getBestScore());
            int8[] recordAsBytes = null;
            ByteArrayInputStream byteArrayInputStream = null;
            DataInputStream inputStream = null;
            while (recordEnum.hasNextElement()) {
                int32 id = recordEnum.nextRecordId();
                recordAsBytes = this.tsUtil.getRecord(recordStore, id);
                if (recordAsBytes != null) {
                    byteArrayInputStream = new ByteArrayInputStream(recordAsBytes);
                    inputStream = new DataInputStream(byteArrayInputStream);
                    string name = inputStream.readUTF();
                    int64 nextScore = inputStream.readLong();
                    HighScore nextCurrentHighScore = new HighScore(id, name, GameInfo.NONE, nextScore);
                    if (this.recordComparatorInterface.compare(nextCurrentHighScore.getAsBytes(), bestHighScore.getAsBytes()) == RecordComparator.FOLLOWS) {
                        bestHighScore = nextCurrentHighScore;
                    }
                }
            }
            if (bestHighScore.getId() != -1) {
                this.logUtil.putF(new StringMaker().append("Removing Lowest HighScore: ").appendlong(bestHighScore.getScore()).toString(), this, this.commonStrings.LOAD);
                recordStore.deleteRecord(bestHighScore.getId());
            }
        } /* catch (RecordStoreException e): a thrown Java exception stops the program */ /* catch (Exception e): a thrown Java exception stops the program */
        {
            {
                if (recordStore != null) {
                    PreLogUtil.put("Closing RecordStore", this, "removeLowestHighScore");
                    recordStore.closeRecordStore();
                }
            } /* catch (RecordStoreException e): a thrown Java exception stops the program */
        }
    }
    

    private void load() {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        {
            recordStore = RecordStore.openRecordStore(this.getRecordId(this.abeClientInformation), true);
            this.setList(new BasicArrayListD());
            RecordEnumeration recordEnum = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true);
            int8[] recordAsBytes = null;
            ByteArrayInputStream byteArrayInputStream = null;
            DataInputStream inputStream = null;
            while (recordEnum.hasNextElement()) {
                int32 id = recordEnum.nextRecordId();
                recordAsBytes = this.tsUtil.getRecord(recordStore, id);
                if (recordAsBytes != null) {
                    byteArrayInputStream = new ByteArrayInputStream(recordAsBytes);
                    inputStream = new DataInputStream(byteArrayInputStream);
                    {
                        string name = inputStream.readUTF();
                        int64 score = inputStream.readLong();
                        HighScore newHighScore = new HighScore(id, name, GameInfo.NONE, score);
                        BasicArrayList list = this.getList();
                        int32 size = list.size();
                        int32 lastIndex = size;
                        for (int32 index = 0; index < size; index++) {
                            HighScore highScore = ((HighScore) list.objectArray[index]);
                            if (this.recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore.getAsBytes()) == RecordComparator.PRECEDES) {
                                lastIndex = index;
                                break;
                            }
                        }
                        list.addAt(lastIndex, newHighScore);
                    } /* catch (EOFException e): a thrown Java exception stops the program */
                }
            }
        } /* catch (RecordStoreNotFoundException e): a thrown Java exception stops the program */ /* catch (RecordStoreException e): a thrown Java exception stops the program */ /* catch (IOException e): a thrown Java exception stops the program */ /* catch (Exception e): a thrown Java exception stops the program */
        {
            {
                if (recordStore != null) {
                    PreLogUtil.put("Closing RecordStore", this, this.commonStrings.LOAD);
                    recordStore.closeRecordStore();
                }
            } /* catch (RecordStoreException e): a thrown Java exception stops the program */
        }
    }
    

    private bool isTooManyHighScores() {
        if (this.getList() != null && this.getList().size() < this.MAXHIGHSCORES) {
            return false;
        } else {
            this.logUtil.putF(new StringMaker().append("HighScores RecordStore Max Reached: ").appendint(this.MAXHIGHSCORES).toString(), this, "isTooManyHighScores");
            return true;
        }
    }
    

    public override bool isBestScore(HighScore newHighScore) {
        {
            if (!this.isTooManyHighScores()) {
                this.logUtil.putF("Slot Available for a High Score", this, "isBestScore");
                return true;
            } else {
                BasicArrayList list = this.getList();
                int32 size = list.size();
                for (int32 index = 0; index < size; index++) {
                    HighScore highScore = ((HighScore) list.objectArray[index]);
                    if (this.recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore.getAsBytes()) == RecordComparator.FOLLOWS) {
                        this.logUtil.putF("Obtained a High Score", this, "isBestScore");
                        return true;
                    }
                }
            }
            this.logUtil.putF("Not a High Score", this, "isBestScore");
            return false;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(base.toString());
        BasicArrayList list = this.getList();
        int32 size = list.size();
        for (int32 index = 0; index < size; index++) {
            HighScore highScore = ((HighScore) list.objectArray[index]);
            stringBuffer.append(highScore.getScoreString());
            stringBuffer.append(CommonSeps.getInstance().COMMA_SEP);
        }
        return stringBuffer.toString();
    }
}

