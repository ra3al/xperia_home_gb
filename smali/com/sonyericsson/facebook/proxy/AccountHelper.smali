.class public Lcom/sonyericsson/facebook/proxy/AccountHelper;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# static fields
.field private static sInstance:Lcom/sonyericsson/facebook/proxy/AccountHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sonyericsson/facebook/proxy/AccountHelper;
    .locals 2

    .prologue
    .line 35
    const-class v0, Lcom/sonyericsson/facebook/proxy/AccountHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sonyericsson/facebook/proxy/AccountHelper;->sInstance:Lcom/sonyericsson/facebook/proxy/AccountHelper;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/sonyericsson/facebook/proxy/AccountHelper;

    invoke-direct {v1}, Lcom/sonyericsson/facebook/proxy/AccountHelper;-><init>()V

    sput-object v1, Lcom/sonyericsson/facebook/proxy/AccountHelper;->sInstance:Lcom/sonyericsson/facebook/proxy/AccountHelper;

    .line 38
    :cond_0
    sget-object v1, Lcom/sonyericsson/facebook/proxy/AccountHelper;->sInstance:Lcom/sonyericsson/facebook/proxy/AccountHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setInstance(Lcom/sonyericsson/facebook/proxy/AccountHelper;)V
    .locals 2
    .parameter "helper"

    .prologue
    .line 42
    const-class v0, Lcom/sonyericsson/facebook/proxy/AccountHelper;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/sonyericsson/facebook/proxy/AccountHelper;->sInstance:Lcom/sonyericsson/facebook/proxy/AccountHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v0

    return-void

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public isAccountAvailable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context = null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_0
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 56
    .local v0, manager:Landroid/accounts/AccountManager;
    const-string v1, "com.sonyericsson.facebook.account"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
