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
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.input.GameKey
// import org.allbinary.game.input.GameKeyFactory
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.InputFactory
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class InputToGameKeyMapping : InputMapping {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!InputToGameKeyMapping.staticSet_instance) {
            InputToGameKeyMapping.staticSet_instance = true;
            InputToGameKeyMapping.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return InputToGameKeyMapping.instance;
    }
    private GameKeyFactory gameKeyFactory;
    private GameKey[] mappedGameKeys;
    private GameKey[] platformToGameKeyMapping;
    public GameKey[] negativePlatformToGameKeyMapping;

    // Java field initializers run after the base constructor
    private void initFieldsInputToGameKeyMapping() {
    this.gameKeyFactory = GameKeyFactory.getInstance();
    this.mappedGameKeys = new GameKey[] {this.gameKeyFactory.UP, this.gameKeyFactory.DOWN, this.gameKeyFactory.LEFT, this.gameKeyFactory.RIGHT};
    this.platformToGameKeyMapping = new GameKey[InputFactory.getInstance().MAX_];
    this.negativePlatformToGameKeyMapping = new GameKey[0];
    }
    

    public static InputToGameKeyMapping getNullInstance() {
        if (InputToGameKeyMapping.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            InputToGameKeyMapping.instance = new InputToGameKeyMapping();
        }
        return ((InputToGameKeyMapping) InputToGameKeyMapping.staticGet_instance());
    }
    

    public InputToGameKeyMapping() {
        base();
        this.initFieldsInputToGameKeyMapping();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.clear();
    }
    

    private void clear() {
        for (int32 index = this.platformToGameKeyMapping.length - 1; index >= 0; index--) {
            this.platformToGameKeyMapping[index] = this.gameKeyFactory.NONE;
        }
    }
    

    public override void removeAll() {
        base.removeAll();
        this.clear();
    }
    

    public override void addMapping(InputToGameKeyMapping inputToGameKeyMapping) {
        for (int32 index = inputToGameKeyMapping.getMaxMappable() - 1; index >= 0; index--) {
            Input input = inputToGameKeyMapping.getInstance1(index);
            if (input != this.gameKeyFactory.NONE) {
                this.addAll(input, inputToGameKeyMapping.getMappedInput(input));
            }
        }
    }
    

    private void addAll(Input input, BasicArrayList list) {
        for (int32 index = list.size() - 1; index >= 0; index--) {
            Input mappedToInput = ((Input) list.objectArray[index]);
            this.add(input, mappedToInput);
        }
    }
    

    public override void add(Input input, Input mappedToInput) {
        base.add(input, mappedToInput);
        this.@set(input, mappedToInput);
    }
    

    public override void remove(Input input, Input mappedToInput) {
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString1(input)).append(" == ").append(StringUtil.getInstance().toString1(mappedToInput)).toString(), this, "InputToGameKeyMapping::remove");
        base.remove(input, mappedToInput);
        this.@set(input, this.gameKeyFactory.NONE);
    }
    

    private void @set(Input input, Input mappedToInput) {
        int32 id = mappedToInput.getId();
        if (id >= 0 && id < this.platformToGameKeyMapping.length) {
            this.platformToGameKeyMapping[id] = ((GameKey) input);
        }
    }
    

    public virtual int32 getMaxMappable() {
        return this.platformToGameKeyMapping.length;
    }
    

    public virtual BasicArrayList getReverseInstance(int32 id) {
        BasicArrayList list = new BasicArrayListD();
        InputFactory inputFactory = InputFactory.getInstance();
        for (int32 index = 0; index < this.platformToGameKeyMapping.length; index++) {
            if (this.platformToGameKeyMapping[index].getId() == id) {
                Input input = inputFactory.getInstanceById(index);
                if (input != null) {
                    list.add(input);
                }
            }
        }
        return list;
    }
    

    private void initGameKey(Canvas canvas, GameKey gameKey) {
        int32 key = canvas.getKeyCode(gameKey.getId());
        if (key < 0 && -key < this.negativePlatformToGameKeyMapping.length) {
            this.negativePlatformToGameKeyMapping[-key] = gameKey;
        } else if (key > 0) {
            if (this.platformToGameKeyMapping[key] == this.gameKeyFactory.NONE) {
                this.platformToGameKeyMapping[key] = gameKey;
            }
        } else {
            PreLogUtil.putOE(new StringMaker().append(gameKey.toString()).append(CommonSeps.getInstance().COLON_SEP).appendint(key).toString(), this, this.commonStrings.INIT, new JException("Exception", ""));
        }
    }
    

    private int32 getSmallestCanvasGameKeyCode(Canvas canvas) {
        int32 nextKey = 0;
        int32 smallestKey = 0;
        for (int32 index = this.mappedGameKeys.length; --index >= 0; ) {
            nextKey = canvas.getKeyCode(this.mappedGameKeys[index].getId());
            if (nextKey < smallestKey) {
                smallestKey = nextKey;
            }
        }
        return smallestKey;
    }
    

    public virtual void init(Canvas canvas) {
        {
            GameKey[] negativePlatformToGameKeyMapping = new GameKey[0];
            int32 smallestKey = this.getSmallestCanvasGameKeyCode(canvas);
            if (smallestKey < 0) {
                smallestKey--;
                if (smallestKey < -256) {
                    smallestKey = -256;
                }
                negativePlatformToGameKeyMapping = new GameKey[-smallestKey];
                for (int32 index = negativePlatformToGameKeyMapping.length; --index >= 0; ) {
                    negativePlatformToGameKeyMapping[index] = this.gameKeyFactory.NONE;
                }
                this.negativePlatformToGameKeyMapping = negativePlatformToGameKeyMapping;
            }
            for (int32 index = this.mappedGameKeys.length; --index >= 0; ) {
                this.initGameKey(canvas, this.mappedGameKeys[index]);
            }
        } /* catch (Throwable t): a thrown Java exception stops the program */
    }
    

    public virtual GameKey getInstanceForCanvas(Canvas canvas, int32 id) {
        if (id >= 0 && id < this.platformToGameKeyMapping.length) {
            return this.platformToGameKeyMapping[id];
        } else if (id < 0 && -id < this.negativePlatformToGameKeyMapping.length) {
            return this.negativePlatformToGameKeyMapping[-id];
        } else {
            return this.gameKeyFactory.NONE;
        }
    }
    

    public virtual GameKey getInstance1(int32 id) {
        if (id >= 0 && id < this.platformToGameKeyMapping.length) {
            return this.platformToGameKeyMapping[id];
        } else if (id < 0 && -id < this.negativePlatformToGameKeyMapping.length) {
            return this.negativePlatformToGameKeyMapping[-id];
        } else {
            return this.gameKeyFactory.NONE;
        }
    }
}

