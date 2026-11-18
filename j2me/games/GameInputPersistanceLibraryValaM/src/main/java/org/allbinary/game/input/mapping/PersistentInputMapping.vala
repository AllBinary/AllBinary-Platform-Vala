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
// package org.allbinary.game.input.mapping
// import java.util.Enumeration
// import org.allbinary.game.configuration.persistance.GamePersistanceStrings
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.InputPersistance
// import org.allbinary.game.input.mapping.event.InputMappingEvent
// import org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface
// import org.allbinary.game.input.mapping.event.NullInputMappingEventListener
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.EnumerationUtil

//GameInputPersistanceLibrary
public class PersistentInputMapping : JObject {
    public static JObject? instance;
    private static bool staticSet_instance = false;
    public static JObject staticGet_instance() {
        if (!PersistentInputMapping.staticSet_instance) {
            PersistentInputMapping.staticSet_instance = true;
            PersistentInputMapping.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return PersistentInputMapping.instance;
    }
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    private EnumerationUtil enumerationUtil;
    private InputToGameKeyMapping inputMapping;
    private InputMappingEventListenerInterface inputMappingEventListenerInterface;
    private InputPersistance inputPersistance;
    private InputMappingEvent inputMappingEvent;

    // Java field initializers run after the base constructor
    private void initFieldsPersistentInputMapping() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.enumerationUtil = EnumerationUtil.getInstance();
    this.inputMapping = new InputToGameKeyMapping();
    this.inputMappingEventListenerInterface = NullInputMappingEventListener.NULL_INPUT_MAPPING_EVENT_LISTENER;
    
    this.inputMappingEvent = new InputMappingEvent(this);
    }
    

    public static PersistentInputMapping getNullInstance() {
        if (PersistentInputMapping.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            PersistentInputMapping.instance = new PersistentInputMapping(GamePersistanceStrings.getInstance().SAVED_INPUT_CONFIGURATION_RECORD_ID);
        }
        return ((PersistentInputMapping) PersistentInputMapping.staticGet_instance());
    }
    

    public PersistentInputMapping(string name) {
        base();
        this.initFieldsPersistentInputMapping();
        this.inputPersistance = new InputPersistance(name);
    }
    

    public virtual int32 getTotalMapped() {
        return this.getInputMapping().getHashtable().size();
    }
    

    public virtual bool isDefaultNew() {
        return false;
    }
    

    public virtual InputToGameKeyMapping getDefault() {
        return InputToGameKeyMapping.getNullInstance();
    }
    

    public virtual void setDefault(AbeClientInformationInterface abeClientInformation) {
        this.getInputMapping().removeAll();
        this.getInputMapping().addMapping(this.getDefault());
        this.save(abeClientInformation);
    }
    

    public virtual void update(AbeClientInformationInterface abeClientInformation) {
        this.inputPersistance.deleteAll(abeClientInformation);
        this.save(abeClientInformation);
    }
    

    public virtual void save(AbeClientInformationInterface abeClientInformation) {
        this.inputPersistance.save(abeClientInformation, this.getInputMapping().getHashtable());
        this.inputMappingEvent.setInputToGameKeyMapping(this.getInputMapping());
        if (this.getInputMappingEventListenerInterface() != null) {
            this.getInputMappingEventListenerInterface().onInputMappingEvent(this.inputMappingEvent);
        }
    }
    

    public virtual void init(AbeClientInformationInterface abeClientInformation) {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.INIT);
        {
            this.inputPersistance.loadAll(abeClientInformation);
        } /* catch (Exception e): a thrown Java exception stops the program */
        BasicArrayList list = this.inputPersistance.getList();
        int32 totalMappedTo = 0;
        int32 size = list.size();
        ABHashtable hashtable = null;
        Enumeration enumeration = null;
        Input mappedToInput = null;
        Input gameActionInput = null;
        for (int32 index = 0; index < size; index++) {
            hashtable = ((ABHashtable) list.objectArray[index]);
            enumeration = hashtable.keys();
            while (this.enumerationUtil.hasMoreElements(enumeration)) {
                mappedToInput = ((Input) this.enumerationUtil.nextElement(enumeration));
                gameActionInput = ((Input) hashtable.@get(mappedToInput));
                totalMappedTo++;
                this.getInputMapping().add(gameActionInput, mappedToInput);
            }
        }
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("End - Total Loaded Keys Mapped: ");
        stringBuffer.appendint(this.getTotalMapped());
        stringBuffer.append(" to: ");
        stringBuffer.appendint(totalMappedTo);
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT);
    }
    

    public virtual void setInputMappingEventListenerInterface(InputMappingEventListenerInterface inputMappingEventListenerInterface) {
        this.inputMappingEventListenerInterface = inputMappingEventListenerInterface;
    }
    

    private InputMappingEventListenerInterface getInputMappingEventListenerInterface() {
        return this.inputMappingEventListenerInterface;
    }
    

    public virtual InputToGameKeyMapping getInputMapping() {
        return this.inputMapping;
    }
    

    public virtual bool isDelete(Input input) {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual bool isSystemInput(Input input) {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
}

