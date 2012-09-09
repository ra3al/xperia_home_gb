.class Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl$1;
.super Ljava/lang/Object;
.source "SemcFacebookImpl.java"

# interfaces
.implements Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl;->getAccessToken(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl$1;->this$0:Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl;

    iput-object p2, p0, Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvalidToken()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 90
    return-void
.end method

.method public onTokenUpdated(Ljava/lang/String;)V
    .locals 1
    .parameter "token"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 85
    return-void
.end method
