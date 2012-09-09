.class public Lcom/sonyericsson/facebook/proxy/SemcFacebookFactory;
.super Ljava/lang/Object;
.source "SemcFacebookFactory.java"


# static fields
.field private static final FILE_TAG:Ljava/lang/String; = "SemcFacebook: "


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSemcFacebook()Lcom/sonyericsson/facebook/proxy/SemcFacebook;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl;

    invoke-direct {v0}, Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl;-><init>()V

    return-object v0
.end method
