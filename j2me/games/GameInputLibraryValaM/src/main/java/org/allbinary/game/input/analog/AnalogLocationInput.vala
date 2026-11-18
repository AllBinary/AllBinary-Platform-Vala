// Generated Code Do Not Modify
// package org.allbinary.game.input.analog
// import org.allbinary.graphics.CustomGPoint

public class AnalogLocationInput : JObject {
    public static AnalogLocationInput? NULL_ANALOG_LOCATION_INPUT;
    private static bool staticSet_NULL_ANALOG_LOCATION_INPUT = false;
    public static AnalogLocationInput staticGet_NULL_ANALOG_LOCATION_INPUT() {
        if (!AnalogLocationInput.staticSet_NULL_ANALOG_LOCATION_INPUT) {
            AnalogLocationInput.staticSet_NULL_ANALOG_LOCATION_INPUT = true;
            AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT = new AnalogLocationInput(-1);
        }
        return AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT;
    }
    private int32 playerId;
    private CustomGPoint customGPoint;
    private int32 rz;
    private int32 rightTrigger;
    private int32 leftTrigger;

    // Java field initializers run after the base constructor
    private void initFieldsAnalogLocationInput() {
    
    
    this.rz = 0;
    this.rightTrigger = 0;
    this.leftTrigger = 0;
    }
    

    public AnalogLocationInput(int32 playerId) {
        base();
        this.initFieldsAnalogLocationInput();
        this.playerId = playerId;
        this.customGPoint = new CustomGPoint(0, 0, 0);
    }
    

    public virtual int32 getPlayerId() {
        return this.playerId;
    }
    

    public virtual CustomGPoint getCustomGPoint() {
        return this.customGPoint;
    }
    

    public virtual int32 getRz() {
        return this.rz;
    }
    

    public virtual void setRz(int32 rz) {
        this.rz = rz;
    }
    

    public virtual int32 getRightTrigger() {
        return this.rightTrigger;
    }
    

    public virtual void setRightTrigger(int32 rightTrigger) {
        this.rightTrigger = rightTrigger;
    }
    

    public virtual int32 getLeftTrigger() {
        return this.leftTrigger;
    }
    

    public virtual void setLeftTrigger(int32 leftTrigger) {
        this.leftTrigger = leftTrigger;
    }
}

