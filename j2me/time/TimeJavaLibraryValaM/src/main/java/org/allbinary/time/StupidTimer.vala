// Generated Code Do Not Modify
// package org.allbinary.time
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.string.CommonStrings
// import org.allbinary.thread.ThreadObjectUtil

public class StupidTimer : JObject {
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    public NullUtil nullUtil;
    private ThreadObjectUtil threadObjectUtil;

    // Java field initializers run after the base constructor
    private void initFieldsStupidTimer() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.nullUtil = NullUtil.getInstance();
    this.threadObjectUtil = ThreadObjectUtil.getInstance();
    }

    public StupidTimer() {
        base();
        this.initFieldsStupidTimer();
    }
    

    private bool visitBool(Visitor visitorInterface) {
        bool result = ((bool) visitorInterface.visit(this.nullUtil.NULL_OBJECT));
        bool result2 = result;
        return result2;
    }
    

    public virtual void visit(Visitor visitorInterface, TimeDelayHelper timeDelayHelper) {
        bool tookTooLong = false;
        string WAITING_FOR = "Waiting for: ";
        PreLogUtil.put(new StringMaker().append(WAITING_FOR).append(StringUtil.getInstance().toString1(visitorInterface)).toString(), this, this.commonStrings.VISIT);
        int32 index = 0;
        while (this.visitBool(visitorInterface)) {
            if (index % 10 == 0) {
                PreLogUtil.put(new StringMaker().append(WAITING_FOR).appendint(index).toString(), this, this.commonStrings.VISIT);
            }
            index++;
            {
                this.threadObjectUtil.waitObjectFor(this, 1800);
            }
            if (timeDelayHelper.isTimeTNT()) {
                tookTooLong = true;
                break;
            }
        }
        if (tookTooLong) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.VISIT, new JException("Exception", new StringMaker().append("Took Too Long: ").append(StringUtil.getInstance().toString1(visitorInterface)).toString()));
        } else {
            PreLogUtil.put(timeDelayHelper.toString(), this, this.commonStrings.VISIT);
        }
    }
    

    public virtual void stopWaiting() {
        {
            this.threadObjectUtil.notifyObject(this);
        }
    }
}

