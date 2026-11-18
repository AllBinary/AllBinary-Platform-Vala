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
// import java.io.ByteArrayOutputStream
// import java.io.DataInputStream
// import java.io.DataOutputStream
// import javax.microedition.rms.RecordEnumeration
// import javax.microedition.rms.RecordStore
// import javax.microedition.rms.RecordStoreException
// import org.allbinary.TsUtil
// import org.allbinary.game.GameInfo
// import org.allbinary.game.configuration.persistance.NullRecordComparator
// import org.allbinary.game.configuration.persistance.NullRecordFilter
// import org.allbinary.game.configuration.persistance.NullRecordStore
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.java.exception.ExceptionUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.persistance.PlatformRecordIdUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class HighScoreNamePersistanceSingleton : JObject {
    private static HighScoreNamePersistanceSingleton? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static HighScoreNamePersistanceSingleton staticGet_SINGLETON() {
        if (!HighScoreNamePersistanceSingleton.staticSet_SINGLETON) {
            HighScoreNamePersistanceSingleton.staticSet_SINGLETON = true;
            HighScoreNamePersistanceSingleton.SINGLETON = new HighScoreNamePersistanceSingleton();
        }
        return HighScoreNamePersistanceSingleton.SINGLETON;
    }
    public LogUtil logUtil;
    private TsUtil tsUtil;
    private CommonStrings commonStrings;
    private PlatformRecordIdUtil platformRecordIdUtil;
    private string RECORD_ID;
    private string name;
    private BasicArrayList nameBasicArrayList;

    // Java field initializers run after the base constructor
    private void initFieldsHighScoreNamePersistanceSingleton() {
    this.logUtil = LogUtil.getInstance();
    this.tsUtil = TsUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.platformRecordIdUtil = PlatformRecordIdUtil.getInstance();
    this.RECORD_ID = "_SN";
    this.name = StringUtil.getInstance().EMPTY_STRING;
    this.nameBasicArrayList = new BasicArrayListD();
    }

    public HighScoreNamePersistanceSingleton() {
        base();
        this.initFieldsHighScoreNamePersistanceSingleton();
    }
    

    public static HighScoreNamePersistanceSingleton getInstance() {
        return HighScoreNamePersistanceSingleton.staticGet_SINGLETON();
    }
    

    public virtual void clear() {
        this.name = StringUtil.getInstance().EMPTY_STRING;
    }
    

    public virtual void deleteAll(AbeClientInformationInterface abeClientInformation, GameInfo gameInfo) {
        int32 size = this.nameBasicArrayList.size();
        for (int32 index = 0; index < size; index++) {
            int32? integer = JNumber.unboxInt(this.nameBasicArrayList.objectArray[index]);
            this.@delete(abeClientInformation, gameInfo, ((int32) integer));
        }
        this.clear();
    }
    

    private string getRecordId(AbeClientInformationInterface abeClientInformation) {
        return this.platformRecordIdUtil.getRecordId(abeClientInformation, this.RECORD_ID);
    }
    

    public virtual void @delete(AbeClientInformationInterface abeClientInformation, GameInfo gameInfo, int32 deleteId) {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        {
            this.logUtil.putF(new StringMaker().append("Deleting: ").appendint(deleteId).toString(), this, this.commonStrings.@delete);
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            recordStore.deleteRecord(deleteId);
        } /* catch (Exception e): a thrown Java exception stops the program */
        {
            if (recordStore != null) {
                PreLogUtil.put("Closing RecordStore", this, this.commonStrings.@delete);
                recordStore.closeRecordStore();
            }
        }
    }
    

    public virtual BasicArrayList getIds() {
        return this.nameBasicArrayList;
    }
    

    public virtual string load(AbeClientInformationInterface abeClientInformation, GameInfo gameInfo) {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        {
            if (this.name == StringUtil.getInstance().EMPTY_STRING) {
                string LOADING_ID = "Loading id: ";
                recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
                RecordEnumeration recordEnum = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true);
                SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
                int8[] recordAsBytes = null;
                ByteArrayInputStream byteArrayInputStream = null;
                DataInputStream inputStream = null;
                while (recordEnum.hasNextElement()) {
                    int32 id = recordEnum.nextRecordId();
                    this.logUtil.putF(new StringMaker().append(LOADING_ID).appendint(id).toString(), this, this.commonStrings.LOAD);
                    recordAsBytes = this.tsUtil.getRecord(recordStore, id);
                    byteArrayInputStream = new ByteArrayInputStream(recordAsBytes);
                    inputStream = new DataInputStream(byteArrayInputStream);
                    while (inputStream.available() > 0) {
                        this.name = inputStream.readUTF();
                    }
                    this.nameBasicArrayList.add(smallIntegerSingletonFactory.getAt(id));
                }
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
        {
            {
                if (recordStore != null) {
                    PreLogUtil.put("Closing RecordStore", this, this.commonStrings.LOAD);
                    recordStore.closeRecordStore();
                }
            } /* catch (RecordStoreException e): a thrown Java exception stops the program */
        }
        return this.name;
    }
    

    public virtual void save(AbeClientInformationInterface abeClientInformation, GameInfo gameInfo, string name) {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        {
            this.logUtil.putF(new StringMaker().append("Saving: ").append(name).toString(), this, this.commonStrings.SAVE);
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream outputStream = new DataOutputStream(byteArrayOutputStream);
            outputStream.writeUTF(name);
            int8[] savedGameBytes = byteArrayOutputStream.toByteArray();
            recordStore.addRecord(savedGameBytes, 0, savedGameBytes.length);
            this.name = name;
        } /* catch (Exception e): a thrown Java exception stops the program */
        {
            {
                if (recordStore != null) {
                    PreLogUtil.put("Closing RecordStore", this, this.commonStrings.SAVE);
                    recordStore.closeRecordStore();
                }
            } /* catch (RecordStoreException e): a thrown Java exception stops the program */
        }
    }
}

