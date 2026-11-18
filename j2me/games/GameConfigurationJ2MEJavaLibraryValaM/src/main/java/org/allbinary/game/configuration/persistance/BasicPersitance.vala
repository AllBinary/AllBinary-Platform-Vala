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
// package org.allbinary.game.configuration.persistance
// import javax.microedition.rms.RecordStore
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.persistance.PlatformRecordIdUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class BasicPersitance : JObject {
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    public PersistanceStrings persistanceStrings;
    private PlatformRecordIdUtil platformRecordIdUtil;
    private string recordId;
    public BasicArrayList valueList;
    public BasicArrayList idList;

    // Java field initializers run after the base constructor
    private void initFieldsBasicPersitance() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.persistanceStrings = PersistanceStrings.getInstance();
    this.platformRecordIdUtil = PlatformRecordIdUtil.getInstance();
    
    this.valueList = new BasicArrayListD();
    this.idList = new BasicArrayListD();
    }
    

    public BasicPersitance(string recordId) {
        base();
        this.initFieldsBasicPersitance();
        this.recordId = recordId;
    }
    

    public virtual void deleteRecoreStore(AbeClientInformationInterface abeClientInformation) {
        RecordStore.deleteRecordStore(this.getRecordId(abeClientInformation));
    }
    

    public virtual void deleteAll(AbeClientInformationInterface abeClientInformation) {
        int32 size = this.idList.size();
        for (int32 index = 0; index < size; index++) {
            int32? integer = JNumber.unboxInt(this.idList.objectArray[index]);
            this.@delete(abeClientInformation, ((int32) integer));
        }
        this.clear();
    }
    

    public virtual void @delete(AbeClientInformationInterface abeClientInformation, int32 deleteId) {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        {
            this.logUtil.putF(new StringMaker().append(this.persistanceStrings.DELETING_WITH_ID).appendint(deleteId).toString(), this, this.commonStrings.@delete);
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            recordStore.deleteRecord(deleteId);
        } /* catch (Exception e): a thrown Java exception stops the program */
        {
            if (recordStore != null) {
                PreLogUtil.put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.commonStrings.@delete);
                recordStore.closeRecordStore();
            }
        }
    }
    

    public virtual string getRecordId(AbeClientInformationInterface abeClientInformation) {
        return this.platformRecordIdUtil.getRecordId(abeClientInformation, this.recordId);
    }
    

    public virtual BasicArrayList getList() {
        return this.valueList;
    }
    

    public virtual BasicArrayList getIds() {
        return this.idList;
    }
    

    public virtual void clear() {
        this.valueList.clear();
        this.idList.clear();
    }
}

