// Generated Code Do Not Modify
// package org.allbinary.configuration
// import org.allbinary.game.configuration.feature.Feature
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.MainFeatureFactory
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

public class ApplicationConfiguration : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!ApplicationConfiguration.staticSet_instance) {
            ApplicationConfiguration.staticSet_instance = true;
            ApplicationConfiguration.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return ApplicationConfiguration.instance;
    }
    public LogUtil logUtil;
    private bool fullscreen;
    private bool showTitleBar;
    private bool progressBarView;

    // Java field initializers run after the base constructor
    private void initFieldsApplicationConfiguration() {
    this.logUtil = LogUtil.getInstance();
    this.fullscreen = true;
    this.showTitleBar = false;
    this.progressBarView = false;
    }
    

    public static ApplicationConfiguration getInstance() {
        if (ApplicationConfiguration.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            ApplicationConfiguration.instance = new ApplicationConfiguration();
        }
        return ((ApplicationConfiguration) ApplicationConfiguration.staticGet_instance());
    }
    

    public ApplicationConfiguration() {
        base();
        this.initFieldsApplicationConfiguration();
        {
            this.read();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    private void read() {
        this.setFullscreen(true);
        this.setProgressBarView(false);
        this.setShowTitleBar(false);
        this.logUtil.putF(JString.ofString("Read Configuration: ") + JString.ofString(this.toString()), this, "read");
    }
    

    public virtual void write() {
    }
    

    public virtual void update(Feature gameFeature) {
        if (gameFeature == MainFeatureFactory.getInstance().FULL_SCREEN) {
            Features features = Features.getInstance();
            if (features.isFeature(gameFeature)) {
                if (!this.isFullscreen()) {
                    this.setFullscreen(true);
                    this.write();
                }
            } else {
                if (this.isFullscreen()) {
                    this.setFullscreen(false);
                    this.write();
                }
            }
        }
    }
    

    public virtual void setFullscreen(bool fullscreen) {
        this.fullscreen = fullscreen;
    }
    

    public virtual bool isFullscreen() {
        return this.fullscreen;
    }
    

    public virtual void setShowTitleBar(bool showTitleBar) {
        this.showTitleBar = showTitleBar;
    }
    

    public virtual bool isShowTitleBar() {
        return this.showTitleBar;
    }
    

    public virtual void setProgressBarView(bool progressBarView) {
        this.progressBarView = progressBarView;
    }
    

    public virtual bool isProgressBarView() {
        return this.progressBarView;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("isFullscreen: ");
        stringBuffer.appendboolean(this.isFullscreen());
        stringBuffer.append(" isProgressBarView: ");
        stringBuffer.appendboolean(this.isProgressBarView());
        stringBuffer.append(" isShowTitleBar: ");
        stringBuffer.appendboolean(this.isShowTitleBar());
        return stringBuffer.toString();
    }
}

