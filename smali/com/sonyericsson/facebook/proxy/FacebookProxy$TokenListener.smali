.class public interface abstract Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;
.super Ljava/lang/Object;
.source "FacebookProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/facebook/proxy/FacebookProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TokenListener"
.end annotation


# virtual methods
.method public abstract onInvalidToken()V
.end method

.method public abstract onTokenUpdated(Ljava/lang/String;)V
.end method
