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
// package org.allbinary.game.input
// import java.io.ByteArrayInputStream
// import java.io.ByteArrayOutputStream
// import java.io.DataInputStream
// import java.io.DataOutputStream
// import javax.microedition.rms.RecordEnumeration
// import javax.microedition.rms.RecordStore
// import org.allbinary.TsUtil
// import org.allbinary.game.configuration.persistance.BasicPersitance
// import org.allbinary.game.configuration.persistance.NullRecordComparator
// import org.allbinary.game.configuration.persistance.NullRecordFilter
// import org.allbinary.game.configuration.persistance.NullRecordStore
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.HashtableUtil
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable

//GameInputPersistanceLibrary
public class InputPersistance : BasicPersitance {
    private TsUtil tsUtil;
    private HashtableUtil hashtableUtil;

    // Java field initializers run after the base constructor
    private void initFieldsInputPersistance() {
    this.tsUtil = TsUtil.getInstance();
    this.hashtableUtil = HashtableUtil.getInstance();
    }
    

    public InputPersistance(string name) {
        base(name);
        this.initFieldsInputPersistance();
    }
    

    public virtual void loadAll(AbeClientInformationInterface abeClientInformation) {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        {
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            RecordEnumeration recordEnum = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true);
            int64 gameActionInputId = 0;
            int64 inputId = 0;
            Input gameActionInput = null;
            Input input = null;
            ABHashtable hashtable = null;
            GameKeyMappingFactory gameKeyFactory = GameKeyMappingFactory.getInstance();
            StringMaker stringBuffer = new StringMaker();
            InputFactory inputFactory = InputFactory.getInstance();
            SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
            StdUtil stdUtil = StdUtil.getInstance();
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
                    hashtable = stdUtil.createHashtable();
                    int32 value = 0;
                    while (inputStream.available() > 0) {
                        string gameActionInputIdAsString = inputStream.readUTF();
                        value = (int32) int.parse(gameActionInputIdAsString);
                        gameActionInputId = ((int64) (value));
                        inputStream.readUTF();
                        value = (int32) int.parse(inputStream.readUTF());
                        inputId = ((int64) (value));
                        gameActionInput = gameKeyFactory.getGameKey(((int32) (gameActionInputId)));
                        input = inputFactory.getInstanceById(((int32) (inputId)));
                        if (input == inputFactory.NO_INPUT || gameActionInput == null) {
                            stringBuffer.@delete(0, stringBuffer.length());
                            if (input == inputFactory.NO_INPUT) {
                                stringBuffer.append(this.persistanceStrings.ERROR_LOADING_ID);
                                stringBuffer.appendlong(inputId);
                                stringBuffer.append(this.persistanceStrings.GAME_ACTION_INPUT);
                                stringBuffer.appendlong(gameActionInputId);
                                PreLogUtil.put(stringBuffer.toString(), this, this.persistanceStrings.LOAD_ALL);
                            }
                            if (gameActionInput == null) {
                                stringBuffer.@delete(0, stringBuffer.length());
                                stringBuffer.append(this.persistanceStrings.ERROR_LOADING);
                                stringBuffer.appendlong(gameActionInputId);
                                stringBuffer.append(this.persistanceStrings.ID);
                                stringBuffer.appendlong(inputId);
                                PreLogUtil.put(stringBuffer.toString(), this, this.persistanceStrings.LOAD_ALL);
                            }
                        } else {
                        }
                        hashtable.put(input, gameActionInput);
                    }
                    this.valueList.add(hashtable);
                    this.idList.add(smallIntegerSingletonFactory.getAt(id));
                } else {
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
            StringMaker stringBuffer = new StringMaker();
            PreLogUtil.put(stringBuffer.append(this.persistanceStrings.SAVING).append(StringUtil.getInstance().toString1(hashtable)).toString(), this, this.commonStrings.SAVE);
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream outputStream = new DataOutputStream(byteArrayOutputStream);
            Input gameActionInput = null;
            BasicArrayList list = null;
            Input input = null;
            int8[] savedGameBytes = null;
            CommonSeps commonSeps = CommonSeps.getInstance();
            SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
            JObject[] inputObjectArray = this.hashtableUtil.getKeysAsArray(hashtable);
            int32 size = inputObjectArray.length;
            for (int32 index = 0; index < size; index++) {
                gameActionInput = ((Input) inputObjectArray[index]);
                list = ((BasicArrayList) hashtable.@get(((JObject) inputObjectArray[index])));
                for (int32 index2 = 0; index2 < list.size(); index2++) {
                    string gameActionInputIdAsString = smallIntegerSingletonFactory.getAt(gameActionInput.getId()).toString();
                    outputStream.writeUTF(gameActionInputIdAsString);
                    outputStream.writeUTF(commonSeps.EQUALS);
                    input = ((Input) list.objectArray[index2]);
                    string inputIdAsString = smallIntegerSingletonFactory.getAt(input.getId()).toString();
                    outputStream.writeUTF(inputIdAsString);
                }
            }
            savedGameBytes = byteArrayOutputStream.toByteArray();
            recordStore.addRecord(savedGameBytes, 0, savedGameBytes.length);
        } /* catch (Exception e): a thrown Java exception stops the program */
        {
            if (recordStore != null) {
                PreLogUtil.put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.commonStrings.SAVE);
                recordStore.closeRecordStore();
            }
        }
    }
}

