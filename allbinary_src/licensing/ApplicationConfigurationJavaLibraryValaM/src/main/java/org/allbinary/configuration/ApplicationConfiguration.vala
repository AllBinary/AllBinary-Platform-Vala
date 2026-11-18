// Generated Code Do Not Modify
// package org.allbinary.configuration
// import java.io.Closeable
// import java.io.InputStream
// import java.io.OutputStream
// import org.allbinary.game.configuration.feature.Feature
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.MainFeatureFactory
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.io.AbDataInputStream
// import org.allbinary.logic.io.AbDataOutputStream
// import org.allbinary.logic.io.FileStreamFactory
// import org.allbinary.logic.io.NullCloseable
// import org.allbinary.logic.io.StreamUtil
// import org.allbinary.logic.io.file.FileFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
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
    private string FILE;

    // Java field initializers run after the base constructor
    private void initFieldsApplicationConfiguration() {
    this.logUtil = LogUtil.getInstance();
    this.fullscreen = true;
    this.showTitleBar = false;
    this.progressBarView = false;
    this.FILE = "ReloadConfiguration.dat";
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
            if (FileFactory.getInstance().isFile(this.FILE)) {
                this.read();
            } else {
                this.write();
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    private void read() {
        FileStreamFactory fileInputStreamFactory = FileStreamFactory.getInstance();
        InputStream fileInputStream = fileInputStreamFactory.getFileInputStreamInstance(StringUtil.getInstance().EMPTY_STRING, this.FILE);
        AbDataInputStream dataInputStream = new AbDataInputStream(fileInputStream);
        int32 fullScreen = dataInputStream.readInt();
        if (fullScreen == 0) {
            this.setFullscreen(false);
        } else if (fullScreen == 1) {
            this.setFullscreen(true);
        } else {
            JSystem.fatal(new JException("Exception", "Invalid FullScreen ActivityConfiguration"));
        }
        int32 progressBarView = dataInputStream.readInt();
        if (progressBarView == 0) {
            this.setProgressBarView(false);
        } else if (progressBarView == 1) {
            this.setProgressBarView(true);
        } else {
            JSystem.fatal(new JException("Exception", "Invalid ProgressBarView ActivityConfiguration"));
        }
        int32 showTitleBar = dataInputStream.readInt();
        if (showTitleBar == 0) {
            this.setShowTitleBar(false);
        } else if (showTitleBar == 1) {
            this.setShowTitleBar(true);
        } else {
            JSystem.fatal(new JException("Exception", "Invalid ShowTitleBar ActivityConfiguration"));
        }
        this.logUtil.putF(JString.ofString("Read Configuration: ") + JString.ofString(this.toString()), this, "read");
    }
    

    public virtual void write() {
        Closeable closeable = NullCloseable.NULL_CLOSEABLE;
        {
            this.logUtil.putF(JString.ofString("Write Configuration: ") + JString.ofString(this.toString()), this, "write");
            FileStreamFactory fileInputStreamFactory = FileStreamFactory.getInstance();
            OutputStream fileOutputStream = fileInputStreamFactory.getFileOutputStreamInstance(StringUtil.getInstance().EMPTY_STRING, this.FILE);
            AbDataOutputStream dataOutputStream = new AbDataOutputStream(fileOutputStream);
            closeable = dataOutputStream;
            if (this.isFullscreen()) {
                dataOutputStream.writeInt(1);
            } else {
                dataOutputStream.writeInt(0);
            }
            if (this.isProgressBarView()) {
                dataOutputStream.writeInt(1);
            } else {
                dataOutputStream.writeInt(0);
            }
            if (this.isShowTitleBar()) {
                dataOutputStream.writeInt(1);
            } else {
                dataOutputStream.writeInt(0);
            }
            dataOutputStream.flush();
        } /* catch (Exception e): a thrown Java exception stops the program */
        {
            StreamUtil.getInstance().close(closeable);
        }
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

