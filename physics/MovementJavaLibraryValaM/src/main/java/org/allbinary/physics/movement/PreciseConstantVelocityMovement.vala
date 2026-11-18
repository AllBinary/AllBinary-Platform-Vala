// Generated Code Do Not Modify
// package org.allbinary.physics.movement
// import org.allbinary.game.layer.AllBinaryGameLayer
// import org.allbinary.game.physics.velocity.BasicVelocityProperties
// import org.allbinary.logic.math.BasicDecimal
// import org.allbinary.logic.math.MathUtil
// import org.allbinary.logic.math.ScaleFactorFactory

public class PreciseConstantVelocityMovement : BasicConstantVelocityMovement {
    private int32 accumulatedX;
    private int32 accumulatedY;
    private int32 accumulatedZ;
    private int32 factorValue;

    // Java field initializers run after the base constructor
    private void initFieldsPreciseConstantVelocityMovement() {
    this.accumulatedX = 0;
    this.accumulatedY = 0;
    this.accumulatedZ = 0;
    this.factorValue = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE;
    }
    

    public PreciseConstantVelocityMovement(BasicDecimal basicDecimal, BasicVelocityProperties velocityProperties) {
        base(basicDecimal, velocityProperties);
        this.initFieldsPreciseConstantVelocityMovement();
    }
    

    public override void init(BasicDecimal speedBasicDecimal, int32 angle, int32 otherAngle) {
    }
    

    public override void process(AllBinaryGameLayer layer) {
        MathUtil mathUtil = MathUtil.getInstance();
        BasicVelocityProperties velocityProperties = this.getVelocityProperties();
        this.accumulatedX = ((int32) ((((int64) (this.accumulatedX)) + velocityProperties.getVelocityXBasicDecimalP().getUnscaled())));
        this.accumulatedY = ((int32) ((((int64) (this.accumulatedY)) + velocityProperties.getVelocityYBasicDecimalP().getUnscaled())));
        this.accumulatedZ = ((int32) ((((int64) (this.accumulatedZ)) + velocityProperties.getVelocityZBasicDecimalP().getUnscaled())));
        layer.moveDXYZ(this.accumulatedX / this.factorValue, this.accumulatedY / this.factorValue, this.accumulatedZ / this.factorValue);
        if (mathUtil.abs(this.accumulatedX) > this.factorValue) {
            this.accumulatedX = 0;
        }
        if (mathUtil.abs(this.accumulatedY) > this.factorValue) {
            this.accumulatedY = 0;
        }
        if (mathUtil.abs(this.accumulatedZ) > this.factorValue) {
            this.accumulatedZ = 0;
        }
    }
}

