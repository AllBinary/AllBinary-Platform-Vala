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
// import javax.microedition.rms.RecordEnumeration
// import javax.microedition.rms.RecordStore
// import org.allbinary.game.configuration.persistance.BasicPersitance
// import org.allbinary.game.configuration.persistance.NullRecordComparator
// import org.allbinary.game.configuration.persistance.NullRecordFilter
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.HashtableUtil
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable

//GameInputNoPersistanceLibrary
public class InputPersistance : BasicPersitance {
    private HashtableUtil hashtableUtil;

    // Java field initializers run after the base constructor
    private void initFieldsInputPersistance() {
    this.hashtableUtil = HashtableUtil.getInstance();
    }
    

    public InputPersistance(string name) {
        base(name);
        this.initFieldsInputPersistance();
    }
    

    public virtual void loadAll(AbeClientInformationInterface abeClientInformation) {
        RecordStore recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
        RecordEnumeration recordEnum = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true);
        ABHashtable hashtable = null;
        StringMaker stringBuffer = new StringMaker();
        SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        int32 id = 0;
        while (recordEnum.hasNextElement()) {
            id = recordEnum.nextRecordId();
            stringBuffer.@delete(0, stringBuffer.length());
            this.logUtil.putF(stringBuffer.append(this.persistanceStrings.LOADING_ID).appendint(id).toString(), this, this.persistanceStrings.LOAD_ALL);
            hashtable = StdUtil.getInstance().createHashtable();
            this.valueList.add(hashtable);
            this.idList.add(smallIntegerSingletonFactory.getAt(id));
        }
        recordStore.closeRecordStore();
    }
    

    public virtual void save(AbeClientInformationInterface abeClientInformation, ABHashtable hashtable) {
        PreLogUtil.put(new StringMaker().append(this.persistanceStrings.NOT_SAVING).append(StringUtil.getInstance().toString1(hashtable)).toString(), this, this.commonStrings.SAVE);
        RecordStore recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
        Input gameActionInput = null;
        BasicArrayList list = null;
        Input input = null;
        JObject[] inputObjectArray = this.hashtableUtil.getKeysAsArray(hashtable);
        int32 size = inputObjectArray.length;
        for (int32 index = 0; index < size; index++) {
            gameActionInput = ((Input) inputObjectArray[index]);
            list = ((BasicArrayList) hashtable.@get(inputObjectArray[index]));
            for (int32 index2 = 0; index2 < list.size(); index2++) {
                input = ((Input) list.@get(index2));
            }
        }
        recordStore.closeRecordStore();
    }
}

