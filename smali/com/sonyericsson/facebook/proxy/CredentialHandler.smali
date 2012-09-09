.class Lcom/sonyericsson/facebook/proxy/CredentialHandler;
.super Ljava/lang/Object;
.source "CredentialHandler.java"


# static fields
.field private static final DEVELOPER_SIGNATURE:Ljava/lang/String; = "3082039130820279a003020102020101300d06092a864886f70d01010505003065310b3009060355040613025345312f302d060355040a1326536f6e79204572696373736f6e204d6f62696c6520436f6d6d756e69636174696f6e73204142312530230603550403141c536f6e795f4572696373736f6e5f455f43415f546573745f64633730301e170d3030303130313130353830365a170d3335303130313130353830365a3076310b3009060355040613025345312f302d060355040a1326536f6e79204572696373736f6e204d6f62696c6520436f6d6d756e69636174696f6e73204142313630340603550403142d536f6e795f4572696373736f6e5f455f4170706c69636174696f6e5f5369676e696e675f546573745f6463373030820122300d06092a864886f70d01010105000382010f003082010a0282010100f1842e2c71d57642b7d04cb73b50496ba65b2841415c64d6dedb2075f8c55ea2c0d9a3ffda9121ce71056f19b7adc000f3d4c8c3fda7ded8a2521485bedf61fc6e172fa27e5d474ff89930f55b85e17aff1fe81052c2f24df8c87354826ddc48aba70d4854ad55effba8d98c86548e7a5b0283b8f9b0372d510c2800579bdbd79c45d464d8f0757dc59ba30289383074ebdccbd4872d2cb0427b71b188a876b7ccc547841a5992cea9b9a83812a4b63912903a4d6b0279ede7c601bc8b3575653eaa17c6e80e30d87839f7ef0ab94ddb5131dc4ad597fc87560d4856af2a99189268e5f034ba2904271cf4031fcfe3567ac0221bbc3d63bf592f280b38d99c4d0203010001a33b3039300f0603551d130101ff04053003020100300e0603551d0f0101ff04040302078030160603551d250101ff040c300a06082b06010505070303300d06092a864886f70d01010505000382010100936d52abb931c9a83d03c48d08102a9b543cfde0aec55668e17ea37c4cc5f3196b8f672469a92ed1cd7b1e799300be6015af5a1f8c6d6085f6d48949c6cca0970ce8f671a0448b1b79aa917826bcc76a3b6b9357315e3f90da2d182a5e7731deaa435a3da5df8f861451852f0669da43d6f74e0dc41f2d85cc457cd98035f3ecf795fb902f636e6420c1ffff5c89c18670db6d29193ed58b8e6cf129850b51d84183e3452292c0f0ae09dba334c5ba3864b704e09727b0beef2f20d2d70e2ce3cbc86b8d7be34ae9e7b6a4f8f5219a228c5b25a3f9971f9add33c73787d62e3a9f44037a70b31baf74e95e6b08f3d8826f7057aaa3c2cf414b4d7bb7854c7c5a"

.field private static final DEV_FACEBOOK_API_KEY:Ljava/lang/String; = "-3891b63a2d621bb6b19ea1e1320bce1d8bdfb67f1097646070d59a21713d00e7e097e9168e35eee147cb5c457c52dbe"

.field private static final FILE_TAG:Ljava/lang/String; = "CredentialHandler: "

.field private static final GENERIC_FACEBOOK_API_KEY:Ljava/lang/String; = "-1d0d77e8d4f34b65da9038b46033c3e4d8bdfb67f1097646070d59a21713d00e7e097e9168e35eee147cb5c457c52dbe"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCredential(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/sonyericsson/facebook/proxy/CredentialHandler;->isDeveloperSigned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "-3891b63a2d621bb6b19ea1e1320bce1d8bdfb67f1097646070d59a21713d00e7e097e9168e35eee147cb5c457c52dbe"

    .line 90
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-1d0d77e8d4f34b65da9038b46033c3e4d8bdfb67f1097646070d59a21713d00e7e097e9168e35eee147cb5c457c52dbe"

    goto :goto_0
.end method

.method private getCustomerKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "cipherText"

    .prologue
    const-string v7, "SemcFbProxy"

    .line 58
    const/4 v3, 0x0

    .line 59
    .local v3, plainText:[B
    new-instance v5, Ljava/math/BigInteger;

    const/16 v6, 0x10

    invoke-direct {v5, p1, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 60
    .local v1, cipherTextArray:[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v5, 0x18

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const-string v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 66
    .local v4, secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v5, "AES/ECB/PKCS5Padding"

    const-string v6, "BC"

    invoke-static {v5, v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 67
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 69
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 70
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 78
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    :goto_0
    return-object v5

    .line 71
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 72
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v5, "SemcFbProxy"

    const-string v5, "CredentialHandler: Could not translate the key, internal runtime error"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v2           #e:Ljava/lang/RuntimeException;
    :goto_1
    const-string v5, ""

    goto :goto_0

    .line 73
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 74
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    const-string v5, "SemcFbProxy"

    const-string v5, "CredentialHandler: Encodig not supported"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 75
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v5

    move-object v2, v5

    .line 76
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "SemcFbProxy"

    const-string v5, "CredentialHandler: Could not translate the key"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 60
    :array_0
    .array-data 0x1
        0x7t
        0x17t
        0x2t
        0xft
        0x13t
        0x5t
        0x15t
        0x12t
        0x8t
        0x0t
        0x1t
        0x3t
        0x16t
        0xct
        0xdt
        0x11t
        0x10t
        0x4t
        0x6t
        0x9t
        0x14t
        0xat
        0xbt
        0xet
    .end array-data
.end method

.method private isDeveloperSigned(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 97
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v6, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 100
    .local v6, packageName:Ljava/lang/String;
    const/16 v8, 0x40

    :try_start_0
    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 106
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .line 107
    .local v7, sign:Landroid/content/pm/Signature;
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3082039130820279a003020102020101300d06092a864886f70d01010505003065310b3009060355040613025345312f302d060355040a1326536f6e79204572696373736f6e204d6f62696c6520436f6d6d756e69636174696f6e73204142312530230603550403141c536f6e795f4572696373736f6e5f455f43415f546573745f64633730301e170d3030303130313130353830365a170d3335303130313130353830365a3076310b3009060355040613025345312f302d060355040a1326536f6e79204572696373736f6e204d6f62696c6520436f6d6d756e69636174696f6e73204142313630340603550403142d536f6e795f4572696373736f6e5f455f4170706c69636174696f6e5f5369676e696e675f546573745f6463373030820122300d06092a864886f70d01010105000382010f003082010a0282010100f1842e2c71d57642b7d04cb73b50496ba65b2841415c64d6dedb2075f8c55ea2c0d9a3ffda9121ce71056f19b7adc000f3d4c8c3fda7ded8a2521485bedf61fc6e172fa27e5d474ff89930f55b85e17aff1fe81052c2f24df8c87354826ddc48aba70d4854ad55effba8d98c86548e7a5b0283b8f9b0372d510c2800579bdbd79c45d464d8f0757dc59ba30289383074ebdccbd4872d2cb0427b71b188a876b7ccc547841a5992cea9b9a83812a4b63912903a4d6b0279ede7c601bc8b3575653eaa17c6e80e30d87839f7ef0ab94ddb5131dc4ad597fc87560d4856af2a99189268e5f034ba2904271cf4031fcfe3567ac0221bbc3d63bf592f280b38d99c4d0203010001a33b3039300f0603551d130101ff04053003020100300e0603551d0f0101ff04040302078030160603551d250101ff040c300a06082b06010505070303300d06092a864886f70d01010505000382010100936d52abb931c9a83d03c48d08102a9b543cfde0aec55668e17ea37c4cc5f3196b8f672469a92ed1cd7b1e799300be6015af5a1f8c6d6085f6d48949c6cca0970ce8f671a0448b1b79aa917826bcc76a3b6b9357315e3f90da2d182a5e7731deaa435a3da5df8f861451852f0669da43d6f74e0dc41f2d85cc457cd98035f3ecf795fb902f636e6420c1ffff5c89c18670db6d29193ed58b8e6cf129850b51d84183e3452292c0f0ae09dba334c5ba3864b704e09727b0beef2f20d2d70e2ce3cbc86b8d7be34ae9e7b6a4f8f5219a228c5b25a3f9971f9add33c73787d62e3a9f44037a70b31baf74e95e6b08f3d8826f7057aaa3c2cf414b4d7bb7854c7c5a"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 108
    const/4 v8, 0x1

    .line 111
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v7           #sign:Landroid/content/pm/Signature;
    :goto_1
    return v8

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "SemcFbProxy"

    const-string v9, "CredentialHandler: Package name not found. Assuming this is not developer signed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v10

    .line 103
    goto :goto_1

    .line 106
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #arr$:[Landroid/content/pm/Signature;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v7       #sign:Landroid/content/pm/Signature;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v7           #sign:Landroid/content/pm/Signature;
    :cond_1
    move v8, v10

    .line 111
    goto :goto_1
.end method


# virtual methods
.method public getKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sonyericsson/facebook/proxy/CredentialHandler;->getCredential(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/facebook/proxy/CredentialHandler;->getCustomerKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
