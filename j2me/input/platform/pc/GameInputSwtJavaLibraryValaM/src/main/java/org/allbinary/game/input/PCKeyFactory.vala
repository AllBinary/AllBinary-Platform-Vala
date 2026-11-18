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
// package org.allbinary.game.input
// import org.allbinary.math.PositionStrings
// import org.allbinary.string.CommonPhoneStrings
// import org.allbinary.string.CommonSeps

public class PCKeyFactory : JObject {
    private static PCKeyFactory? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static PCKeyFactory staticGet_SINGLETON() {
        if (!PCKeyFactory.staticSet_SINGLETON) {
            PCKeyFactory.staticSet_SINGLETON = true;
            PCKeyFactory.SINGLETON = new PCKeyFactory();
        }
        return PCKeyFactory.SINGLETON;
    }
    public PCGameKey UNKNOWN;
    public PCGameKey ENTER;
    public PCGameKey _A;
    public PCGameKey _B;
    public PCGameKey _C;
    public PCGameKey _D;
    public PCGameKey _E;
    public PCGameKey _F;
    public PCGameKey _G;
    public PCGameKey _H;
    public PCGameKey _I;
    public PCGameKey _J;
    public PCGameKey _K;
    public PCGameKey _L;
    public PCGameKey _M;
    public PCGameKey _N;
    public PCGameKey _O;
    public PCGameKey _P;
    public PCGameKey _Q;
    public PCGameKey _R;
    public PCGameKey _S;
    public PCGameKey _T;
    public PCGameKey _U;
    public PCGameKey _V;
    public PCGameKey _W;
    public PCGameKey _X;
    public PCGameKey _Y;
    public PCGameKey _Z;
    public PCGameKey a;
    public PCGameKey b;
    public PCGameKey c;
    public PCGameKey d;
    public PCGameKey e;
    public PCGameKey f;
    public PCGameKey g;
    public PCGameKey h;
    public PCGameKey i;
    public PCGameKey j;
    public PCGameKey k;
    public PCGameKey l;
    public PCGameKey m;
    public PCGameKey n;
    public PCGameKey o;
    public PCGameKey p;
    public PCGameKey q;
    public PCGameKey r;
    public PCGameKey s;
    public PCGameKey t;
    public PCGameKey u;
    public PCGameKey v;
    public PCGameKey w;
    public PCGameKey x;
    public PCGameKey y;
    public PCGameKey z;
    public PCGameKey ZERO;
    public PCGameKey ONE;
    public PCGameKey TWO;
    public PCGameKey THREE;
    public PCGameKey FOUR;
    public PCGameKey FIVE;
    public PCGameKey SIX;
    public PCGameKey SEVEN;
    public PCGameKey EIGHT;
    public PCGameKey NINE;
    public PCGameKey DPAD_UP;
    public PCGameKey DPAD_DOWN;
    public PCGameKey DPAD_LEFT;
    public PCGameKey DPAD_RIGHT;
    public PCGameKey DPAD_UP2;
    public PCGameKey DPAD_DOWN2;
    public PCGameKey DPAD_LEFT2;
    public PCGameKey DPAD_RIGHT2;
    public PCGameKey COMMA;
    public PCGameKey SPACE;
    public PCGameKey DEL;
    public PCGameKey STAR;
    public PCGameKey QUESTION;
    public PCGameKey PERIOD;
    public PCGameKey ESCAPE;
    public PCGameKey BACK_SPACE;

    // Java field initializers run after the base constructor
    private void initFieldsPCKeyFactory() {
    this.UNKNOWN = new PCGameKey(254, "UNKNOWN");
    this.ENTER = new PCGameKey(13, "Enter");
    this._A = new PCGameKey(65, "A");
    this._B = new PCGameKey(66, "B");
    this._C = new PCGameKey(67, "C");
    this._D = new PCGameKey(68, "D");
    this._E = new PCGameKey(69, "E");
    this._F = new PCGameKey(70, "F");
    this._G = new PCGameKey(71, "G");
    this._H = new PCGameKey(72, "H");
    this._I = new PCGameKey(73, "I");
    this._J = new PCGameKey(74, "J");
    this._K = new PCGameKey(75, "K");
    this._L = new PCGameKey(76, "L");
    this._M = new PCGameKey(77, "M");
    this._N = new PCGameKey(78, "N");
    this._O = new PCGameKey(79, "O");
    this._P = new PCGameKey(80, "P");
    this._Q = new PCGameKey(81, "Q");
    this._R = new PCGameKey(82, "R");
    this._S = new PCGameKey(83, "S");
    this._T = new PCGameKey(84, "T");
    this._U = new PCGameKey(85, "U");
    this._V = new PCGameKey(86, "V");
    this._W = new PCGameKey(87, "W");
    this._X = new PCGameKey(88, "X");
    this._Y = new PCGameKey(89, "Y");
    this._Z = new PCGameKey(90, "Z");
    this.a = new PCGameKey(97, "a");
    this.b = new PCGameKey(98, "b");
    this.c = new PCGameKey(99, "c");
    this.d = new PCGameKey(100, "d");
    this.e = new PCGameKey(101, "e");
    this.f = new PCGameKey(102, "f");
    this.g = new PCGameKey(103, "g");
    this.h = new PCGameKey(104, "h");
    this.i = new PCGameKey(105, "i");
    this.j = new PCGameKey(106, "j");
    this.k = new PCGameKey(107, "k");
    this.l = new PCGameKey(108, "l");
    this.m = new PCGameKey(109, "m");
    this.n = new PCGameKey(110, "n");
    this.o = new PCGameKey(111, "o");
    this.p = new PCGameKey(112, "p");
    this.q = new PCGameKey(113, "q");
    this.r = new PCGameKey(114, "r");
    this.s = new PCGameKey(115, "s");
    this.t = new PCGameKey(116, "t");
    this.u = new PCGameKey(117, "u");
    this.v = new PCGameKey(118, "v");
    this.w = new PCGameKey(119, "w");
    this.x = new PCGameKey(120, PositionStrings.getInstance().X);
    this.y = new PCGameKey(121, PositionStrings.getInstance().Y);
    this.z = new PCGameKey(122, "z");
    this.ZERO = new PCGameKey(48, CommonPhoneStrings.getInstance().ZERO);
    this.ONE = new PCGameKey(49, CommonPhoneStrings.getInstance().ONE);
    this.TWO = new PCGameKey(50, CommonPhoneStrings.getInstance().TWO);
    this.THREE = new PCGameKey(51, CommonPhoneStrings.getInstance().THREE);
    this.FOUR = new PCGameKey(52, CommonPhoneStrings.getInstance().FOUR);
    this.FIVE = new PCGameKey(53, CommonPhoneStrings.getInstance().FIVE);
    this.SIX = new PCGameKey(54, CommonPhoneStrings.getInstance().SIX);
    this.SEVEN = new PCGameKey(55, CommonPhoneStrings.getInstance().SEVEN);
    this.EIGHT = new PCGameKey(56, CommonPhoneStrings.getInstance().EIGHT);
    this.NINE = new PCGameKey(57, CommonPhoneStrings.getInstance().NINE);
    this.DPAD_UP = new PCGameKey(38, CommonPhoneStrings.getInstance().UP);
    this.DPAD_DOWN = new PCGameKey(40, CommonPhoneStrings.getInstance().DOWN);
    this.DPAD_LEFT = new PCGameKey(37, CommonPhoneStrings.getInstance().LEFT);
    this.DPAD_RIGHT = new PCGameKey(39, CommonPhoneStrings.getInstance().RIGHT);
    this.DPAD_UP2 = this.DPAD_UP;
    this.DPAD_DOWN2 = this.DPAD_DOWN;
    this.DPAD_LEFT2 = this.DPAD_LEFT;
    this.DPAD_RIGHT2 = this.DPAD_RIGHT;
    this.COMMA = new PCGameKey(44, "COMMA");
    this.SPACE = new PCGameKey(32, "SPACE");
    this.DEL = new PCGameKey(46, "DEL");
    this.STAR = new PCGameKey(42, CommonPhoneStrings.getInstance().STAR);
    this.QUESTION = new PCGameKey(47, "?");
    this.PERIOD = new PCGameKey(46, CommonSeps.getInstance().PERIOD);
    this.ESCAPE = new PCGameKey(27, "Esc");
    this.BACK_SPACE = new PCGameKey(8, "Backspace");
    }

    public PCKeyFactory() {
        base();
        this.initFieldsPCKeyFactory();
    }
    

    public static PCKeyFactory getInstance() {
        return PCKeyFactory.staticGet_SINGLETON();
    }
    

    public virtual bool isSubmission(Input input) {
        if (input == this.ENTER) {
            return true;
        }
        return false;
    }
    

    public virtual bool isDelete(Input input) {
        if (input == this.DEL) {
            return true;
        }
        return false;
    }
    

    public virtual bool isBackSpace(Input input) {
        if (input == this.BACK_SPACE) {
            return true;
        }
        return false;
    }
    

    public virtual bool isUp(Input input) {
        if (input == this.DPAD_UP || input == this.DPAD_UP2) {
            return true;
        }
        return false;
    }
    

    public virtual bool isDown(Input input) {
        if (input == this.DPAD_DOWN || input == this.DPAD_DOWN2) {
            return true;
        }
        return false;
    }
    

    public virtual bool isLeft(Input input) {
        if (input == this.DPAD_LEFT || input == this.DPAD_LEFT2) {
            return true;
        }
        return false;
    }
    

    public virtual bool isRight(Input input) {
        if (input == this.DPAD_RIGHT || input == this.DPAD_RIGHT2) {
            return true;
        }
        return false;
    }
    

    public virtual bool isEnter(Input input) {
        if (input == this.ENTER) {
            return true;
        }
        return false;
    }
}

