.class Lcom/sonyericsson/storage/Storage$ReadRootTask;
.super Lcom/sonyericsson/util/Worker$Task;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/storage/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadRootTask"
.end annotation


# instance fields
.field private final mCallback:Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;

.field private final mContext:Landroid/content/Context;

.field private final mName:Ljava/lang/String;

.field private mRoot:Lcom/sonyericsson/storage/Root;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "callback"

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read root - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/util/Worker$Task;-><init>(Ljava/lang/String;)V

    .line 386
    iput-object p1, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mContext:Landroid/content/Context;

    .line 387
    iput-object p2, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    .line 388
    iput-object p3, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mCallback:Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;

    .line 389
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;Lcom/sonyericsson/storage/Storage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 373
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/storage/Storage$ReadRootTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 11

    .prologue
    const-string v10, "Failed to close the file: "

    const-string v9, "Storage"

    .line 393
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 394
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    .line 395
    .local v3, gzipInputStream:Ljava/util/zip/GZIPInputStream;
    const/4 v2, 0x0

    .line 398
    .local v2, fileInputStream:Ljava/io/FileInputStream;
    :try_start_0
    iget-object v6, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".xml.gz"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 399
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    .line 401
    .end local v3           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .local v4, gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :try_start_1
    const-string v6, "UTF-8"

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 403
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 404
    .local v1, eventType:I
    if-eqz v1, :cond_2

    .line 405
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "Not at the start of document"

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_a

    .line 414
    .end local v1           #eventType:I
    :catch_0
    move-exception v6

    move-object v0, v6

    move-object v3, v4

    .line 417
    .end local v4           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v3       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :goto_0
    const/4 v6, 0x0

    :try_start_2
    iput-object v6, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mRoot:Lcom/sonyericsson/storage/Root;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    if-eqz v2, :cond_0

    .line 430
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 432
    :cond_0
    if-eqz v3, :cond_1

    .line 433
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 439
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    return-void

    .line 408
    .end local v3           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #eventType:I
    .restart local v4       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :cond_2
    :try_start_4
    invoke-static {v5}, Lcom/sonyericsson/storage/Root;->fromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sonyericsson/storage/Root;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mRoot:Lcom/sonyericsson/storage/Root;

    .line 410
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 411
    const/4 v6, 0x1

    if-eq v1, v6, :cond_4

    .line 412
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "Not at the end of document"

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_a

    .line 418
    .end local v1           #eventType:I
    :catch_1
    move-exception v6

    move-object v0, v6

    move-object v3, v4

    .line 419
    .end local v4           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v3       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :goto_2
    :try_start_5
    const-string v6, "Storage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "I/O error when reading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mRoot:Lcom/sonyericsson/storage/Root;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 429
    if-eqz v2, :cond_3

    .line 430
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 432
    :cond_3
    if-eqz v3, :cond_1

    .line 433
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 435
    :catch_2
    move-exception v6

    move-object v0, v6

    .line 436
    const-string v6, "Storage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close the file: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 429
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #eventType:I
    .restart local v4       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :cond_4
    if-eqz v2, :cond_5

    .line 430
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 432
    :cond_5
    if-eqz v4, :cond_6

    .line 433
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    move-object v3, v4

    .line 437
    .end local v4           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v3       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    goto :goto_1

    .line 435
    .end local v3           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v4       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :catch_3
    move-exception v6

    move-object v0, v6

    .line 436
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "Storage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close the file: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 438
    .end local v4           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v3       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_1

    .line 435
    .end local v1           #eventType:I
    .local v0, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v6

    move-object v0, v6

    .line 436
    .local v0, e:Ljava/io/IOException;
    const-string v6, "Storage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close the file: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 421
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v6

    move-object v0, v6

    .line 422
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    :try_start_8
    const-string v6, "Storage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XML parsing error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mRoot:Lcom/sonyericsson/storage/Root;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 429
    if-eqz v2, :cond_7

    .line 430
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 432
    :cond_7
    if-eqz v3, :cond_1

    .line 433
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_1

    .line 435
    :catch_6
    move-exception v6

    move-object v0, v6

    .line 436
    .local v0, e:Ljava/io/IOException;
    const-string v6, "Storage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close the file: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 424
    .end local v0           #e:Ljava/io/IOException;
    :catch_7
    move-exception v6

    move-object v0, v6

    .line 425
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_4
    :try_start_a
    const-string v6, "Storage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to read root: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mRoot:Lcom/sonyericsson/storage/Root;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 429
    if-eqz v2, :cond_8

    .line 430
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 432
    :cond_8
    if-eqz v3, :cond_1

    .line 433
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_1

    .line 435
    :catch_8
    move-exception v6

    move-object v0, v6

    .line 436
    .local v0, e:Ljava/io/IOException;
    const-string v6, "Storage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close the file: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 428
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 429
    :goto_5
    if-eqz v2, :cond_9

    .line 430
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 432
    :cond_9
    if-eqz v3, :cond_a

    .line 433
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 437
    :cond_a
    :goto_6
    throw v6

    .line 435
    :catch_9
    move-exception v7

    move-object v0, v7

    .line 436
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "Storage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close the file: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 428
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v4       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v3       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    goto :goto_5

    .line 424
    .end local v3           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v4       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :catch_a
    move-exception v6

    move-object v0, v6

    move-object v3, v4

    .end local v4           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v3       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    goto :goto_4

    .line 421
    .end local v3           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v4       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :catch_b
    move-exception v6

    move-object v0, v6

    move-object v3, v4

    .end local v4           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v3       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_3

    .line 418
    :catch_c
    move-exception v6

    move-object v0, v6

    goto/16 :goto_2

    .line 414
    :catch_d
    move-exception v6

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public postExecute()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mCallback:Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mCallback:Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;

    iget-object v1, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mRoot:Lcom/sonyericsson/storage/Root;

    invoke-interface {v0, v1}, Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;->onReadCompleted(Lcom/sonyericsson/storage/Root;)V

    .line 446
    :cond_0
    return-void
.end method
