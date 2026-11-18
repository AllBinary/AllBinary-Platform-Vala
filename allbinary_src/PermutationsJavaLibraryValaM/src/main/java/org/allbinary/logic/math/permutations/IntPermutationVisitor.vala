// Generated Code Do Not Modify
// package org.allbinary.logic.math.permutations
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.string.CommonSeps

public class IntPermutationVisitor : Visitor {
    public int32[] data;
    private StringMaker stringBuilder;

    // Java field initializers run after the base constructor
    private void initFieldsIntPermutationVisitor() {
    
    this.stringBuilder = new StringMaker();
    }
    

    public IntPermutationVisitor(int32[] data) {
        base();
        this.initFieldsIntPermutationVisitor();
        this.data = data;
    }
    

    public override JObject visit(JObject anyType) {
        this.stringBuilder.@delete(0, this.stringBuilder.length());
        this.print_2(this.data, this.stringBuilder);
        return NullUtil.getInstance().NULL_OBJECT;
    }
    

    public virtual void print_1(int32[] data) {
        StringMaker stringBuilder = new StringMaker();
        this.print_2(data, stringBuilder);
    }
    

    public virtual void print_2(int32[] data, StringMaker stringBuilder) {
        CommonSeps commonSeps = CommonSeps.getInstance();
        int32 size = data.length;
        for (int32 i = 0; i < size; i++) {
            stringBuilder.appendint(data[i]);
            stringBuilder.append(commonSeps.SPACE);
        }
        JSystem.println(JString.ofString(stringBuilder.toString()));
    }
}

