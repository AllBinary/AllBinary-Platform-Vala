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
// import java.io.ByteArrayInputStream
// import java.io.ByteArrayOutputStream
// import java.io.DataInputStream
// import java.io.DataOutputStream
// import javax.microedition.rms.RecordEnumeration
// import javax.microedition.rms.RecordStore
// import org.allbinary.TsUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.HashtableUtil

public class KeyValuePersistance : BasicPersitance {
    private TsUtil tsUtil;

    // Java field initializers run after the base constructor
    private void initFieldsKeyValuePersistance() {
    this.tsUtil = TsUtil.getInstance();
    }
    

    public KeyValuePersistance(string recordId) {
        base(recordId);
        this.initFieldsKeyValuePersistance();
    }
    

    public virtual void loadAll(AbeClientInformationInterface abeClientInformation) {
        this.loadAllSize(abeClientInformation, 1);
    }
    

    public virtual void loadAllSize(AbeClientInformationInterface abeClientInformation, int32 size) {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        {
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            RecordEnumeration recordEnum = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true);
            ABHashtable hashtable = null;
            string name = null;
            string value = null;
            SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
            StringMaker stringBuffer = new StringMaker();
            int8[] recordAsBytes = null;
            ByteArrayInputStream byteArrayInputStream = null;
            DataInputStream inputStream = null;
            while (recordEnum.hasNextElement()) {
                int32 id = recordEnum.nextRecordId();
                stringBuffer.@delete(0, stringBuffer.length());
                this.logUtil.putF(stringBuffer.append(this.persistanceStrings.LOADING_ID).appendint(id).toString(), this, this.persistanceStrings.LOAD_ALL);
                recordAsBytes = this.tsUtil.getRecord(recordStore, id);
                if (recordAsBytes != null) {
                    byteArrayInputStream = new ByteArrayInputStream(recordAsBytes);
                    inputStream = new DataInputStream(byteArrayInputStream);
                    hashtable = new ABHashtable.with0();
                    for (int32 index = 0; index < size; index++) {
                        name = inputStream.readUTF();
                        inputStream.readUTF();
                        value = inputStream.readUTF();
                        hashtable.put(JString.box(name), JString.box(value));
                    }
                    this.valueList.add(hashtable);
                    this.idList.add(smallIntegerSingletonFactory.getAt(id));
                }
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
        {
            if (recordStore != null) {
                PreLogUtil.put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.persistanceStrings.LOAD_ALL);
                recordStore.closeRecordStore();
            }
        }
    }
    

    public virtual void save(AbeClientInformationInterface abeClientInformation, ABHashtable hashtable) {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        {
            this.logUtil.putF(new StringMaker().append(this.persistanceStrings.SAVING).append(StringUtil.getInstance().toString1(hashtable)).toString(), this, this.commonStrings.SAVE);
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream outputStream = new DataOutputStream(byteArrayOutputStream);
            string value = null;
            CommonSeps commonSeps = CommonSeps.getInstance();
            JObject[] objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable);
            JObject anyType = null;
            int32 size = objectArray.length;
            for (int32 index = 0; index < size; index++) {
                outputStream.writeUTF(JString.unbox(objectArray[index]));
                outputStream.writeUTF(commonSeps.EQUALS);
                anyType = ((JObject) objectArray[index]);
                value = JString.unbox(hashtable.@get(anyType));
                outputStream.writeUTF(value);
            }
            TsUtil tsUtil = TsUtil.getInstance();
            int8[] savedGameBytes = tsUtil.getByteArray(byteArrayOutputStream.toString());
            recordStore.addRecord(savedGameBytes, 0, savedGameBytes.length);
        } /* catch (Exception e): a thrown Java exception stops the program */
        {
            if (recordStore != null) {
                PreLogUtil.put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.commonStrings.SAVE);
                recordStore.closeRecordStore();
            }
        }
    }
    

    public virtual ABHashtable @get(int32 index) {
        ABHashtable hashtable = ((ABHashtable) this.valueList.objectArray[index]);
        return hashtable;
    }
}

