.class Lcom/sonyericsson/facebook/proxy/FacebookFacade;
.super Ljava/lang/Object;
.source "FacebookFacade.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x3e8

.field private static final ENCODING:Ljava/lang/String; = "utf-8"

.field private static final FILE_TAG:Ljava/lang/String; = "FacebookFacade: "

.field private static final TIMEOUT:I = 0x2710


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 8
    .parameter "parameters"

    .prologue
    const-string v5, "utf-8"

    .line 118
    if-nez p0, :cond_0

    .line 119
    const-string v5, ""

    .line 138
    :goto_0
    return-object v5

    .line 122
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 124
    .local v1, first:Z
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 125
    .local v3, key:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 126
    const/4 v1, 0x0

    .line 127
    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :goto_2
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "utf-8"

    invoke-static {v3, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 134
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 135
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v5, "SemcFbProxy"

    const-string v6, "FacebookFacade: Failed to encode the key"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 129
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 138
    .end local v3           #key:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private request(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 145
    .local v6, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const/4 v11, 0x0

    .line 146
    .local v11, result:Ljava/lang/String;
    const/4 v13, 0x0

    .line 147
    .local v13, stream:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 150
    .local v8, r:Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/facebook/proxy/HttpClientFactory;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v14

    invoke-interface {v14, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 151
    .local v10, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 152
    .local v4, entity:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_1

    .line 153
    new-instance v2, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v2, v4}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 154
    .local v2, buff:Lorg/apache/http/entity/BufferedHttpEntity;
    invoke-virtual {v2}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 155
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v12, sb:Ljava/lang/StringBuilder;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    const-string v15, "utf-8"

    invoke-direct {v14, v13, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v15, 0x3e8

    invoke-direct {v9, v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    .end local v8           #r:Ljava/io/BufferedReader;
    .local v9, r:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, line:Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_0

    .line 158
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v11

    move-object v8, v9

    .line 168
    .end local v2           #buff:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v7           #line:Ljava/lang/String;
    .end local v9           #r:Ljava/io/BufferedReader;
    .end local v12           #sb:Ljava/lang/StringBuilder;
    .restart local v8       #r:Ljava/io/BufferedReader;
    :cond_1
    if-eqz v8, :cond_3

    .line 169
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 179
    :cond_2
    :goto_1
    return-object v11

    .line 171
    :cond_3
    if-eqz v13, :cond_2

    .line 172
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 175
    :catch_0
    move-exception v14

    move-object v3, v14

    .line 176
    .local v3, e:Ljava/lang/Exception;
    const-string v14, "SemcFbProxy"

    const-string v15, "FacebookFacade: Failed to close"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 163
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v14

    move-object v5, v14

    .line 164
    .local v5, ex:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v14, "SemcFbProxy"

    const-string v15, "FacebookFacade: Connection error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v14, Ljava/io/IOException;

    invoke-direct {v14, v5}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    .end local v5           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 168
    :goto_3
    if-eqz v8, :cond_5

    .line 169
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 177
    :cond_4
    :goto_4
    throw v14

    .line 171
    :cond_5
    if-eqz v13, :cond_4

    .line 172
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 175
    :catch_2
    move-exception v15

    move-object v3, v15

    .line 176
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v15, "SemcFbProxy"

    const-string v16, "FacebookFacade: Failed to close"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 167
    .end local v3           #e:Ljava/lang/Exception;
    .end local v8           #r:Ljava/io/BufferedReader;
    .restart local v2       #buff:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    .restart local v9       #r:Ljava/io/BufferedReader;
    .restart local v10       #response:Lorg/apache/http/HttpResponse;
    .restart local v12       #sb:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v14

    move-object v8, v9

    .end local v9           #r:Ljava/io/BufferedReader;
    .restart local v8       #r:Ljava/io/BufferedReader;
    goto :goto_3

    .line 163
    .end local v8           #r:Ljava/io/BufferedReader;
    .restart local v9       #r:Ljava/io/BufferedReader;
    :catch_3
    move-exception v14

    move-object v5, v14

    move-object v8, v9

    .end local v9           #r:Ljava/io/BufferedReader;
    .restart local v8       #r:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private request(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .parameter "baseUrl"
    .parameter "path"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-static {p3}, Lcom/sonyericsson/facebook/proxy/FacebookFacade;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/facebook/proxy/FacebookFacade;->request(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v13, "FacebookFacade: Failed to close"

    const-string v12, "SemcFbProxy"

    .line 183
    const/4 v8, 0x0

    .line 184
    .local v8, stream:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 186
    .local v6, picture:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 187
    .local v4, httpget:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 188
    .local v5, params:Lorg/apache/http/params/HttpParams;
    const/16 v9, 0x2710

    invoke-static {v5, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 189
    const/16 v9, 0x2710

    invoke-static {v5, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 190
    invoke-virtual {v4, v5}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 191
    invoke-static {}, Lcom/sonyericsson/facebook/proxy/HttpClientFactory;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v9

    invoke-interface {v9, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 192
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 193
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_0

    .line 194
    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v0, v2}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 195
    .local v0, buff:Lorg/apache/http/entity/BufferedHttpEntity;
    invoke-virtual {v0}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 196
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 202
    .end local v0           #buff:Lorg/apache/http/entity/BufferedHttpEntity;
    :cond_0
    if-eqz v8, :cond_1

    .line 203
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #params:Lorg/apache/http/params/HttpParams;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    :cond_1
    :goto_0
    return-object v6

    .line 205
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v4       #httpget:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #params:Lorg/apache/http/params/HttpParams;
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "SemcFbProxy"

    const-string v9, "FacebookFacade: Failed to close"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #params:Lorg/apache/http/params/HttpParams;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v9

    move-object v3, v9

    .line 199
    .local v3, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "SemcFbProxy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FacebookFacade: getBitmap: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    if-eqz v8, :cond_1

    .line 203
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 205
    :catch_2
    move-exception v1

    .line 206
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "SemcFbProxy"

    const-string v9, "FacebookFacade: Failed to close"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 202
    if-eqz v8, :cond_2

    .line 203
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 207
    :cond_2
    :goto_1
    throw v9

    .line 205
    :catch_3
    move-exception v1

    .line 206
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v10, "SemcFbProxy"

    const-string v10, "FacebookFacade: Failed to close"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getGraphRequest(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "path"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    sget-object v0, Lcom/sonyericsson/facebook/proxy/FacebookUri$UriType;->GRAPH:Lcom/sonyericsson/facebook/proxy/FacebookUri$UriType;

    invoke-static {v0}, Lcom/sonyericsson/facebook/proxy/FacebookUri;->getBaseUri(Lcom/sonyericsson/facebook/proxy/FacebookUri$UriType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/facebook/proxy/FacebookFacade;->request(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRestRequest(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "method"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    sget-object v0, Lcom/sonyericsson/facebook/proxy/FacebookUri$UriType;->REST:Lcom/sonyericsson/facebook/proxy/FacebookUri$UriType;

    invoke-static {v0}, Lcom/sonyericsson/facebook/proxy/FacebookUri;->getBaseUri(Lcom/sonyericsson/facebook/proxy/FacebookUri$UriType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/facebook/proxy/FacebookFacade;->request(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 19
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
    .line 56
    .local p2, entityNameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {}, Lcom/sonyericsson/facebook/proxy/HttpClientFactory;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    .line 58
    .local v4, client:Lorg/apache/http/client/HttpClient;
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 59
    .local v8, httppost:Lorg/apache/http/client/methods/HttpPost;
    const/4 v13, 0x0

    .line 60
    .local v13, result:Ljava/lang/String;
    const/4 v15, 0x0

    .line 61
    .local v15, stream:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 64
    .local v10, r:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v16, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v17, "utf-8"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 65
    invoke-interface {v4, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 66
    .local v12, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 67
    .local v6, entity:Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_1

    .line 68
    new-instance v3, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v3, v6}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 69
    .local v3, buff:Lorg/apache/http/entity/BufferedHttpEntity;
    invoke-virtual {v3}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    .line 70
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v14, sb:Ljava/lang/StringBuilder;
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/InputStreamReader;

    const-string v17, "utf-8"

    move-object/from16 v0, v16

    move-object v1, v15

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v17, 0x3e8

    move-object v0, v11

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    .end local v10           #r:Ljava/io/BufferedReader;
    .local v11, r:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, line:Ljava/lang/String;
    :goto_0
    if-eqz v9, :cond_0

    .line 73
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v13

    move-object v10, v11

    .line 83
    .end local v3           #buff:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #r:Ljava/io/BufferedReader;
    .end local v14           #sb:Ljava/lang/StringBuilder;
    .restart local v10       #r:Ljava/io/BufferedReader;
    :cond_1
    if-eqz v10, :cond_3

    .line 84
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 94
    :cond_2
    :goto_1
    return-object v13

    .line 86
    :cond_3
    if-eqz v15, :cond_2

    .line 87
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 90
    :catch_0
    move-exception v16

    move-object/from16 v5, v16

    .line 91
    .local v5, e:Ljava/lang/Exception;
    const-string v16, "SemcFbProxy"

    const-string v17, "FacebookFacade: Failed to close"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 78
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v16

    move-object/from16 v7, v16

    .line 79
    .local v7, ex:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v16, "SemcFbProxy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "FacebookFacade: post: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v16, Ljava/io/IOException;

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    .end local v7           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v16

    .line 83
    :goto_3
    if-eqz v10, :cond_5

    .line 84
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 92
    :cond_4
    :goto_4
    throw v16

    .line 86
    :cond_5
    if-eqz v15, :cond_4

    .line 87
    :try_start_5
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 90
    :catch_2
    move-exception v17

    move-object/from16 v5, v17

    .line 91
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v17, "SemcFbProxy"

    const-string v18, "FacebookFacade: Failed to close"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 82
    .end local v5           #e:Ljava/lang/Exception;
    .end local v10           #r:Ljava/io/BufferedReader;
    .restart local v3       #buff:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v6       #entity:Lorg/apache/http/HttpEntity;
    .restart local v11       #r:Ljava/io/BufferedReader;
    .restart local v12       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #sb:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v16

    move-object v10, v11

    .end local v11           #r:Ljava/io/BufferedReader;
    .restart local v10       #r:Ljava/io/BufferedReader;
    goto :goto_3

    .line 78
    .end local v10           #r:Ljava/io/BufferedReader;
    .restart local v11       #r:Ljava/io/BufferedReader;
    :catch_3
    move-exception v16

    move-object/from16 v7, v16

    move-object v10, v11

    .end local v11           #r:Ljava/io/BufferedReader;
    .restart local v10       #r:Ljava/io/BufferedReader;
    goto :goto_2
.end method
