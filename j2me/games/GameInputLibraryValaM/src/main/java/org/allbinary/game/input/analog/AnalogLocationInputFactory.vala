// Generated Code Do Not Modify
// package org.allbinary.game.input.analog
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class AnalogLocationInputFactory : JObject {
    private static AnalogLocationInputFactory? instance;
    private static bool staticSet_instance = false;
    private static AnalogLocationInputFactory staticGet_instance() {
        if (!AnalogLocationInputFactory.staticSet_instance) {
            AnalogLocationInputFactory.staticSet_instance = true;
            AnalogLocationInputFactory.instance = new AnalogLocationInputFactory();
        }
        return AnalogLocationInputFactory.instance;
    }
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsAnalogLocationInputFactory() {
    this.list = new BasicArrayListD();
    }
    

    public static AnalogLocationInputFactory getInstance() {
        return AnalogLocationInputFactory.staticGet_instance();
    }
    

    public AnalogLocationInputFactory() {
        base();
        this.initFieldsAnalogLocationInputFactory();
    }
    

    public virtual void addPlayer(int32 playerInputId) {
        AnalogLocationInput analogLocationInput = AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT;
        if (playerInputId < this.list.size()) {
            analogLocationInput = ((AnalogLocationInput) this.list.@get(playerInputId));
        }
        if (analogLocationInput == AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT) {
            analogLocationInput = new AnalogLocationInput(playerInputId);
            this.list.add(analogLocationInput);
        }
    }
    

    public virtual AnalogLocationInput getInstanceForPlayer(int32 playerInputId) {
        return ((AnalogLocationInput) this.list.@get(playerInputId));
    }
    

    public virtual BasicArrayList getList() {
        return this.list;
    }
}

