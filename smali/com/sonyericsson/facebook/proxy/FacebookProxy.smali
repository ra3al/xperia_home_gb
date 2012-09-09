.class public interface abstract Lcom/sonyericsson/facebook/proxy/FacebookProxy;
.super Ljava/lang/Object;
.source "FacebookProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;,
        Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;
    }
.end annotation


# virtual methods
.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getGraphRequest(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getProfilePicture(Ljava/lang/String;Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getRestRequest(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract hasAccess()Z
.end method

.method public abstract post(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setTokenListener(Landroid/content/Context;Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;)V
.end method
