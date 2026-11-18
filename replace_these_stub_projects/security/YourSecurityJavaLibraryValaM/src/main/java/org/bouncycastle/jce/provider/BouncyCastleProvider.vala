// Generated Code Do Not Modify
// package org.bouncycastle.jce.provider
// import java.security.Provider

public class BouncyCastleProvider : Provider {
    private static string? info = "BouncyCastle Security Provider v1.41";
    public static string? PROVIDER_NAME = "BC";
    

    public BouncyCastleProvider() {
        base(BouncyCastleProvider.PROVIDER_NAME, 1.41, BouncyCastleProvider.info);
    }
    

    public virtual void setParameter(string parameterName, JObject parameter) {
    }
}

