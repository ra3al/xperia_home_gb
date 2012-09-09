.class Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;
.super Ljava/lang/Object;
.source "FacebookProxyImpl.java"

# interfaces
.implements Lcom/sonyericsson/facebook/proxy/FacebookProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl$1;,
        Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl$TokenReceiver;
    }
.end annotation


# static fields
.field private static final FILE_TAG:Ljava/lang/String; = "FacebookProxy: "

.field private static final GRAPH_PICTURE_URI:Ljava/lang/String; = "/picture"

.field private static final LARGE_STRING:Ljava/lang/String; = "large"

.field private static final NORMAL_STRING:Ljava/lang/String; = "normal"

.field private static final SMALL_STRING:Ljava/lang/String; = "small"

.field private static final SQUARE_STRING:Ljava/lang/String; = "square"

.field private static final TYPE_EQUALS_STRING:Ljava/lang/String; = "?type="


# instance fields
.field private mFacade:Lcom/sonyericsson/facebook/proxy/FacebookFacade;

.field private mFacebook:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

.field private mTokenListener:Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;

.field private mTokenReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "appId"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/sonyericsson/facebook/proxy/FacebookFactory2;->getInstance(Ljava/lang/String;)Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->mFacebook:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    .line 63
    new-instance v0, Lcom/sonyericsson/facebook/proxy/FacebookFacade;

    invoke-direct {v0}, Lcom/sonyericsson/facebook/proxy/FacebookFacade;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->mFacade:Lcom/sonyericsson/facebook/proxy/FacebookFacade;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;)Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->mFacebook:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;)Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->mTokenListener:Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;

    return-object v0
.end method

.method private replaceBaseUriForBetaserver(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "url"

    .prologue
    .line 244
    return-object p1
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->mFacebook:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url = null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->replaceBaseUriForBetaserver(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->mFacade:Lcom/sonyericsson/facebook/proxy/FacebookFacade;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/facebook/proxy/FacebookFacade;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getGraphRequest(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .parameter "path"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "path = null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_0
    if-nez p2, :cond_1

    .line 166
    new-instance p2, Landroid/os/Bundle;

    .end local p2
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 169
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->mFacebook:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    invoke-virtual {v1}, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, accessToken:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 171
    const-string v1, "SemcFbProxy"

    const-string v2, "FacebookProxy: getGraphRequest accessToken is invalidated"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v1, 0x0

    .line 177
    :goto_0
    return-object v1

    .line 175
    :cond_2
    const-string v1, "access_token"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->mFacade:Lcom/sonyericsson/facebook/proxy/FacebookFacade;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/facebook/proxy/FacebookFacade;->getGraphRequest(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getProfilePicture(Ljava/lang/String;Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "id"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "id = null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_0
    if-nez p2, :cond_1

    .line 126
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "type = null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 129
    :cond_1
    const/4 v1, 0x0

    .line 131
    .local v1, typeSize:Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl$1;->$SwitchMap$com$sonyericsson$facebook$proxy$FacebookProxy$PictureType:[I

    invoke-virtual {p2}, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 145
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wrong profile picture type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :pswitch_0
    const-string v1, "small"

    .line 148
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sonyericsson/facebook/proxy/FacebookUri$UriType;->GRAPH:Lcom/sonyericsson/facebook/proxy/FacebookUri$UriType;

    invoke-static {v2}, Lcom/sonyericsson/facebook/proxy/FacebookUri;->getBaseUri(Lcom/sonyericsson/facebook/proxy/FacebookUri$UriType;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v2, "/picture"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v2, "?type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v2, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->mFacade:Lcom/sonyericsson/facebook/proxy/FacebookFacade;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/facebook/proxy/FacebookFacade;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 136
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :pswitch_1
    const-string v1, "normal"

    .line 137
    goto :goto_0

    .line 139
    :pswitch_2
    const-string v1, "large"

    .line 140
    goto :goto_0

    .line 142
    :pswitch_3
    const-string v1, "square"

    .line 143
    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRestRequest(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .parameter "method"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 184
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "method = null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_0
    if-nez p2, :cond_1

    .line 188
    new-instance p2, Landroid/os/Bundle;

    .end local p2
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 191
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->mFacebook:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    invoke-virtual {v1}, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, accessToken:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 193
    const-string v1, "SemcFbProxy"

    const-string v2, "FacebookProxy: getRestRequest accessToken is invalidated"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x0

    .line 199
    :goto_0
    return-object v1

    .line 197
    :cond_2
    const-string v1, "access_token"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->mFacade:Lcom/sonyericsson/facebook/proxy/FacebookFacade;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/facebook/proxy/FacebookFacade;->getRestRequest(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hasAccess()Z
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .parameter
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

    .prologue
    .line 205
    .local p2, entityNameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-nez p1, :cond_0

    .line 206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "url = null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_0
    if-nez p2, :cond_1

    .line 209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "entityNameValuePairs = null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->replaceBaseUriForBetaserver(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 214
    iget-object v1, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->mFacebook:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    invoke-virtual {v1}, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, accessToken:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 216
    const-string v1, "SemcFbProxy"

    const-string v2, "FacebookProxy: post accessToken is invalidated"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v1, 0x0

    .line 223
    :goto_0
    return-object v1

    .line 220
    :cond_2
    const/4 v1, 0x0

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "access_token"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 223
    iget-object v1, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->mFacade:Lcom/sonyericsson/facebook/proxy/FacebookFacade;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/facebook/proxy/FacebookFacade;->post(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized setTokenListener(Landroid/content/Context;Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    const-string v1, "com.sonyericsson.permission.FACEBOOK"

    .line 91
    monitor-enter p0

    if-nez p1, :cond_0

    .line 92
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context = null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 94
    :cond_0
    if-nez p2, :cond_1

    .line 95
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->mTokenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->mTokenListener:Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->mTokenReceiver:Landroid/content/BroadcastReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :cond_1
    :try_start_2
    iput-object p2, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->mTokenListener:Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;

    .line 102
    new-instance v1, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl$TokenReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl$TokenReceiver;-><init>(Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl$1;)V

    iput-object v1, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->mTokenReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sonyericsson.facebook.intent.action.UPDATE_TOKEN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;->mTokenReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.sonyericsson.permission.FACEBOOK"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.facebook.intent.action.REQUEST_TOKEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sonyericsson.permission.FACEBOOK"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
