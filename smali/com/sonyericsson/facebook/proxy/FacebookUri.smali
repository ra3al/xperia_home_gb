.class public Lcom/sonyericsson/facebook/proxy/FacebookUri;
.super Ljava/lang/Object;
.source "FacebookUri.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/facebook/proxy/FacebookUri$1;,
        Lcom/sonyericsson/facebook/proxy/FacebookUri$UriType;
    }
.end annotation


# static fields
.field private static final BETA_GRAPH_BASE_URI:Ljava/lang/String; = "https://graph.beta.facebook.com/"

.field private static final BETA_REST_BASE_URI:Ljava/lang/String; = "https://api.beta.facebook.com/method/"

.field public static final GRAPH_BASE_URI:Ljava/lang/String; = "https://graph.facebook.com/"

.field public static final REST_BASE_URI:Ljava/lang/String; = "https://api.facebook.com/method/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseUri(Lcom/sonyericsson/facebook/proxy/FacebookUri$UriType;)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 35
    sget-object v0, Lcom/sonyericsson/facebook/proxy/FacebookUri$1;->$SwitchMap$com$sonyericsson$facebook$proxy$FacebookUri$UriType:[I

    invoke-virtual {p0}, Lcom/sonyericsson/facebook/proxy/FacebookUri$UriType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Faulty URI type specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :pswitch_0
    const-string v0, "https://graph.facebook.com/"

    .line 46
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "https://api.facebook.com/method/"

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
