.class Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl$TokenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FacebookProxyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TokenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl$TokenReceiver;->this$0:Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl$TokenReceiver;-><init>(Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 69
    const-string v1, "com.sonyericsson.facebook.intent.extra.TOKEN"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, token:Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl$TokenReceiver;->this$0:Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl$TokenReceiver;->this$0:Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;

    invoke-static {v2}, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->access$000(Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;)Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl$TokenReceiver;->this$0:Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;

    invoke-static {v2}, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->access$000(Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;)Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl$TokenReceiver;->this$0:Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;

    invoke-static {v2}, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->access$100(Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;)Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    iget-object v2, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl$TokenReceiver;->this$0:Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;

    invoke-static {v2}, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->access$100(Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;)Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;->onTokenUpdated(Ljava/lang/String;)V

    .line 86
    :cond_0
    :goto_0
    monitor-exit v1

    .line 87
    return-void

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl$TokenReceiver;->this$0:Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;

    invoke-static {v2}, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->access$100(Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;)Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;->onInvalidToken()V

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 84
    :cond_2
    :try_start_1
    const-string v2, "SemcFbProxy"

    const-string v3, "FacebookProxy: onReceive facebook = null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
