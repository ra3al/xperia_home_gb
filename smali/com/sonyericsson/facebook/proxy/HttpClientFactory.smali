.class Lcom/sonyericsson/facebook/proxy/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# static fields
.field private static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static sClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private static createHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 3
    .parameter "context"

    .prologue
    .line 71
    const-string v2, "User-Agent"

    invoke-static {v2, p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 73
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 75
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 76
    return-object v0
.end method

.method public static getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sonyericsson/facebook/proxy/HttpClientFactory;->getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    const-class v0, Lcom/sonyericsson/facebook/proxy/HttpClientFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sonyericsson/facebook/proxy/HttpClientFactory;->sClient:Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_0

    .line 43
    invoke-static {p0}, Lcom/sonyericsson/facebook/proxy/HttpClientFactory;->createHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/facebook/proxy/HttpClientFactory;->sClient:Lorg/apache/http/client/HttpClient;

    .line 45
    :cond_0
    sget-object v1, Lcom/sonyericsson/facebook/proxy/HttpClientFactory;->sClient:Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setHttpClient(Lorg/apache/http/client/HttpClient;)V
    .locals 2
    .parameter "httpClient"

    .prologue
    .line 63
    const-class v0, Lcom/sonyericsson/facebook/proxy/HttpClientFactory;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/sonyericsson/facebook/proxy/HttpClientFactory;->sClient:Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit v0

    return-void

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
