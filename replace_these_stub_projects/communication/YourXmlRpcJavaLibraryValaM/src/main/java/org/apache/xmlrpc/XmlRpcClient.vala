// Generated Code Do Not Modify
// package org.apache.xmlrpc
// import java.io.IOException
// import java.net.MalformedURLException
// import java.net.URL
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.init.crypt.jcehelper.CryptInterface
// import org.allbinary.logic.NullUtil

public class XmlRpcClient : JObject, XmlRpcHandler {
    private URL url;

    // Java field initializers run after the base constructor
    private void initFieldsXmlRpcClient() {
    
    }
    

    public XmlRpcClient(string url) {
        base();
        this.initFieldsXmlRpcClient();
        this.url = new URL(url);
    }
    

    public virtual URL getURL() {
        return this.url;
    }
    

    public virtual void setBasicAuthentication(string user, string password) {
    }
    

    public virtual JObject execute(string method, BasicArrayList @params) {
        return NullUtil.getInstance().NULL_OBJECT;
    }
    

    public virtual JObject executeWithCrypt(string method, BasicArrayList @params, CryptInterface cryptInterface) {
        return NullUtil.getInstance().NULL_OBJECT;
    }
}

