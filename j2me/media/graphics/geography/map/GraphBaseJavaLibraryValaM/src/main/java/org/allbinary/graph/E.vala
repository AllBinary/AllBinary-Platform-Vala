// Generated Code Do Not Modify
// package org.allbinary.graph

public class E : JObject {
    private static E? e;
    private static bool staticSet_e = false;
    private static E staticGet_e() {
        if (!E.staticSet_e) {
            E.staticSet_e = true;
            E.e = new E();
        }
        return E.e;
    }

    public E() {
        base();
    }
    

    public virtual E newInstance() {
        return E.staticGet_e();
    }
}

