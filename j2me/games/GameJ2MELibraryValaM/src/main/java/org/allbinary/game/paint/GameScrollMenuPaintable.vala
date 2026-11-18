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
// package org.allbinary.game.paint
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.ColorChangeEventHandler
// import org.allbinary.graphics.color.ColorChangeListener
// import org.allbinary.graphics.form.FormPaintable
// import org.allbinary.graphics.form.ScrollSelectionForm
// import org.allbinary.graphics.form.item.ABStringComponent
// import org.allbinary.graphics.form.item.ABTextItem
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.logic.util.event.AllBinaryEventObject

public class GameScrollMenuPaintable : BasicGameDemoPaintable, ColorChangeListener, EventListenerInterface {
    

    public GameScrollMenuPaintable(Paintable mainDemoStatePaintable, Paintable ownershipPaintable, Paintable helpPaintableInterface, BasicColor basicColor) {
        base(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface);
        this.setColor(basicColor);
        ColorChangeEventHandler.getInstance().addListenerInterface(this);
    }
    

    public override void setState(int32 state) {
        this.setCurrentStatePaintable(this.getMainDemoStatePaintable());
    }
    

    public virtual void onEvent(AllBinaryEventObject eventObject) {
    }
    

    public virtual void setColor(BasicColor basicColor) {
        MainGameDemoStatePaintable mainGameDemoStatePaintable = ((MainGameDemoStatePaintable) this.getMainDemoStatePaintable());
        FormPaintable formPaintable = ((FormPaintable) mainGameDemoStatePaintable.getMenuPaintableInterface());
        ScrollSelectionForm scrollSelectionForm = ((ScrollSelectionForm) formPaintable.getForm());
        mainGameDemoStatePaintable.getOwnershipPaintableInterface().setBasicColorP(basicColor);
        scrollSelectionForm.setButtonBasicColor(basicColor);
        ABTextItem item = null;
        ABStringComponent stringComponent = null;
        for (int32 index = scrollSelectionForm.size() - 1; index >= 0; index--) {
            item = ((ABTextItem) scrollSelectionForm.@get(index));
            stringComponent = item.getLabelStringComponent();
            if (stringComponent != null) {
                stringComponent.setForegroundBasicColor(basicColor);
            }
        }
    }
}

