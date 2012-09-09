.class public Lcom/sonyericsson/facebook/proxy/FacebookFactory2;
.super Ljava/lang/Object;
.source "FacebookFactory2.java"


# static fields
.field private static final FILE_TAG:Ljava/lang/String; = "FacebookFactory2: "

.field private static sInstance:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/facebook/proxy/FacebookFactory2;->sInstance:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;
    .locals 2
    .parameter "appId"

    .prologue
    .line 35
    const-class v0, Lcom/sonyericsson/facebook/proxy/FacebookFactory2;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sonyericsson/facebook/proxy/FacebookFactory2;->sInstance:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    invoke-direct {v1, p0}, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/sonyericsson/facebook/proxy/FacebookFactory2;->sInstance:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    .line 38
    :cond_0
    sget-object v1, Lcom/sonyericsson/facebook/proxy/FacebookFactory2;->sInstance:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;
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

.method public static declared-synchronized setInstance(Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;)V
    .locals 2
    .parameter "instance"

    .prologue
    .line 43
    const-class v0, Lcom/sonyericsson/facebook/proxy/FacebookFactory2;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/sonyericsson/facebook/proxy/FacebookFactory2;->sInstance:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v0

    return-void

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
