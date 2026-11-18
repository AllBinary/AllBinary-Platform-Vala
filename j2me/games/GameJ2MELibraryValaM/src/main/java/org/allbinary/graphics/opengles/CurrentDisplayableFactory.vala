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
// package org.allbinary.graphics.opengles
// import javax.microedition.lcdui.Displayable
// import org.allbinary.J2MEUtil
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
// import org.allbinary.game.displayable.canvas.DemoCanvas
// import org.allbinary.game.displayable.canvas.GameInputMappingCanvas
// import org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas
// import org.allbinary.game.displayable.canvas.GameRunnable
// import org.allbinary.game.displayable.canvas.NullDisplayable
// import org.allbinary.game.displayable.canvas.NullWaitGameRunnable
// import org.allbinary.game.layer.SWTUtil
// import org.allbinary.game.score.displayable.HighScoresCanvas
// import org.allbinary.graphics.GraphicsStrings
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import org.allbinary.thread.NullRunnable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class CurrentDisplayableFactory : JObject {
    private static CurrentDisplayableFactory? instance;
    private static bool staticSet_instance = false;
    private static CurrentDisplayableFactory staticGet_instance() {
        if (!CurrentDisplayableFactory.staticSet_instance) {
            CurrentDisplayableFactory.staticSet_instance = true;
            CurrentDisplayableFactory.instance = new CurrentDisplayableFactory();
        }
        return CurrentDisplayableFactory.instance;
    }
    private CommonStrings commonStrings;
    private CanvasStrings canvasStrings;
    private StringUtil stringUtil;
    private string SET_DISPLAYABLE;
    private string SET_RUNNABLE;
    private string CLEAR_RUNNABLE;
    private string SET_USED_RUNNABLE;
    private string RUNNABLE;
    private string RUNNABLE_WAS_ALREADY_IN_USE;
    public BasicArrayList DEFAULT_CHILD_NAME_LIST;
    private Displayable displayable;
    private Displayable openGlReadydisplayable;
    private GameRunnable runnable;
    private GameRunnable usedRunnable;

    // Java field initializers run after the base constructor
    private void initFieldsCurrentDisplayableFactory() {
    this.commonStrings = CommonStrings.getInstance();
    this.canvasStrings = CanvasStrings.getInstance();
    this.stringUtil = StringUtil.getInstance();
    this.SET_DISPLAYABLE = "setDisplayable";
    this.SET_RUNNABLE = "setRunnable";
    this.CLEAR_RUNNABLE = "clearRunnable";
    this.SET_USED_RUNNABLE = "setUsedRunnable";
    this.RUNNABLE = "Runnable: ";
    this.RUNNABLE_WAS_ALREADY_IN_USE = "Runnable was already in use: ";
    this.DEFAULT_CHILD_NAME_LIST = new BasicArrayListD();
    this.displayable = NullDisplayable.getInstance();
    this.openGlReadydisplayable = NullDisplayable.getInstance();
    this.runnable = NullWaitGameRunnable.getInstance();
    this.usedRunnable = NullWaitGameRunnable.getInstance();
    }
    

    public static CurrentDisplayableFactory getInstance() {
        return CurrentDisplayableFactory.staticGet_instance();
    }
    

    public CurrentDisplayableFactory() {
        base();
        this.initFieldsCurrentDisplayableFactory();
        this.DEFAULT_CHILD_NAME_LIST.add(JString.box(this.canvasStrings.ABOUT));
        this.DEFAULT_CHILD_NAME_LIST.add(JString.box(this.canvasStrings.OPTIONS));
        this.DEFAULT_CHILD_NAME_LIST.add(JString.box(GameInputMappingCanvas.NAME));
        this.DEFAULT_CHILD_NAME_LIST.add(JString.box(GameInputMappingInstructionsCanvas.NAME));
        this.DEFAULT_CHILD_NAME_LIST.add(JString.box(HighScoresCanvas.NAME));
    }
    

    public virtual void setMyCanvas(MyCanvas displayable) {
        if ((this.displayable is MyCanvas)) {
            if (displayable.hasChild(((MyCanvas) this.displayable))) {
                PreLogUtil.put(new StringMaker().append("Child Displayable is already set for: ").append(this.stringUtil.toString1(displayable)).toString(), this, this.SET_DISPLAYABLE);
                return;
            }
        }
        this.setDisplayable(displayable);
    }
    

    public virtual void setDisplayable(Displayable displayable) {
        this.displayable = displayable;
        this.setOpenGlReadydisplayable(displayable);
    }
    

    public virtual void setOpenGlReadydisplayable(Displayable openGlReadydisplayable) {
        this.openGlReadydisplayable = openGlReadydisplayable;
        this.update();
    }
    

    public virtual Displayable getOpenGlReadydisplayable() {
        return this.openGlReadydisplayable;
    }
    

    public virtual void setRunnable(GameRunnable runnable) {
        PreLogUtil.put(new StringMaker().append(this.RUNNABLE).append(this.stringUtil.toString1(runnable)).toString(), this, this.SET_RUNNABLE);
        this.runnable = runnable;
        if (this.usedRunnable != this.runnable) {
            this.update();
        } else {
            PreLogUtil.put(new StringMaker().append(this.RUNNABLE_WAS_ALREADY_IN_USE).append(this.stringUtil.toString1(runnable)).toString(), this, this.SET_RUNNABLE);
        }
    }
    

    public virtual void clearRunnable() {
        PreLogUtil.put(new StringMaker().append(this.RUNNABLE).append(this.stringUtil.toString1(NullRunnable.getInstance())).toString(), this, this.CLEAR_RUNNABLE);
        this.setUsedRunnable(NullWaitGameRunnable.getInstance());
    }
    

    private void update() {
        {
            CommonSeps commonSeps = CommonSeps.getInstance();
            Features features = Features.getInstance();
            StringMaker stringMaker = new StringMaker();
            stringMaker.append(this.stringUtil.toString1(this.openGlReadydisplayable));
            if (SWTUtil.isSWT && !features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)) {
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(SWTUtil.SWT).append(commonSeps.SPACE).append(this.RUNNABLE).append(this.stringUtil.toString1(NullRunnable.getInstance())).toString(), this, this.commonStrings.UPDATE);
                this.setUsedRunnable(NullWaitGameRunnable.getInstance());
            } else if (J2MEUtil.isHTML()) {
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(GraphicsStrings.getInstance().HTML).append(commonSeps.SPACE).append(this.RUNNABLE).append(this.stringUtil.toString1(this.runnable)).toString(), this, this.commonStrings.UPDATE);
                this.setUsedRunnable(this.runnable);
            } else if ((this.openGlReadydisplayable is DemoCanvas) || (this.openGlReadydisplayable is AllBinaryGameCanvas) || features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)) {
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(OpenGLFeatureFactory.getInstance().OPENGL.toString()).append(commonSeps.SPACE).append(this.RUNNABLE).append(this.stringUtil.toString1(this.runnable)).toString(), this, this.commonStrings.UPDATE);
                this.setUsedRunnable(this.runnable);
            } else {
                PreLogUtil.put(stringMaker.append(this.RUNNABLE).append(this.stringUtil.toString1(NullRunnable.getInstance())).toString(), this, this.commonStrings.UPDATE);
                this.setUsedRunnable(NullWaitGameRunnable.getInstance());
            }
        }
    }
    

    public virtual Displayable getDisplayable() {
        return this.displayable;
    }
    

    public virtual GameRunnable getUsedRunnable() {
        return this.usedRunnable;
    }
    

    public virtual void setUsedRunnable(GameRunnable usedRunnable) {
        PreLogUtil.put(new StringMaker().append(this.RUNNABLE).append(this.stringUtil.toString1(this.runnable)).append(CommonSeps.getInstance().COLON_SEP).append(this.stringUtil.toString1(usedRunnable)).toString(), this, this.SET_USED_RUNNABLE);
        this.usedRunnable = usedRunnable;
    }
}

