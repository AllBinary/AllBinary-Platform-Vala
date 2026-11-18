// Generated Code Do Not Modify
// package org.allbinary.logic.math.permutations
// import org.allbinary.TsUtil
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.string.CommonSeps

public class ObjectPermutationVisitor : Visitor {
    public JObject[] data;
    private StringMaker stringBuilder;

    // Java field initializers run after the base constructor
    private void initFieldsObjectPermutationVisitor() {
    
    this.stringBuilder = new StringMaker();
    }
    

    public ObjectPermutationVisitor(JObject[] data) {
        base();
        this.initFieldsObjectPermutationVisitor();
        this.data = data;
    }
    

    public override JObject visit(JObject anyType) {
        this.stringBuilder.@delete(0, this.stringBuilder.length());
        this.print_2(this.data, this.stringBuilder);
        return NullUtil.getInstance().NULL_OBJECT;
    }
    

    public virtual void print_1(JObject[] data) {
        StringMaker stringBuilder = new StringMaker();
        this.print_2(data, stringBuilder);
    }
    

    public virtual void print_2(JObject[] data, StringMaker stringBuilder) {
        TsUtil tsUtil = TsUtil.getInstance();
        int32 size = data.length;
        for (int32 i = 0; i < size; i++) {
            stringBuilder.appendint(tsUtil.hashCode1(data[i]));
            stringBuilder.append(CommonSeps.getInstance().SPACE);
        }
        JSystem.println(JString.ofString(stringBuilder.toString()));
    }
}

