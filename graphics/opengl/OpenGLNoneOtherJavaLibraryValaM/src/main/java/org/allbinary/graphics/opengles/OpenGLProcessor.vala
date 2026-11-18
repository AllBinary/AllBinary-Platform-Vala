// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles
// import javax.microedition.khronos.opengles.GL10
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class OpenGLProcessor : JObject {
    public LogUtil logUtil;
    public CommonStrings commonStrings;

    // Java field initializers run after the base constructor
    private void initFieldsOpenGLProcessor() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    }

    public OpenGLProcessor() {
        base();
        this.initFieldsOpenGLProcessor();
    }
    

    public virtual void process(GL10 gl) {
    }
}

