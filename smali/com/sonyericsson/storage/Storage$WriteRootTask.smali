.class Lcom/sonyericsson/storage/Storage$WriteRootTask;
.super Lcom/sonyericsson/util/Worker$Task;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/storage/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteRootTask"
.end annotation


# instance fields
.field private final mCallback:Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;

.field private final mContext:Landroid/content/Context;

.field private final mRoot:Lcom/sonyericsson/storage/Root;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;)V
    .locals 2
    .parameter "context"
    .parameter "root"
    .parameter "callback"

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write root - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonyericsson/storage/Root;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/util/Worker$Task;-><init>(Ljava/lang/String;)V

    .line 255
    iput-object p1, p0, Lcom/sonyericsson/storage/Storage$WriteRootTask;->mContext:Landroid/content/Context;

    .line 256
    iput-object p2, p0, Lcom/sonyericsson/storage/Storage$WriteRootTask;->mRoot:Lcom/sonyericsson/storage/Root;

    .line 257
    iput-object p3, p0, Lcom/sonyericsson/storage/Storage$WriteRootTask;->mCallback:Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;

    .line 258
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;Lcom/sonyericsson/storage/Storage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 245
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/storage/Storage$WriteRootTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .prologue
    const-string v5, "UTF-8"

    .line 271
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 273
    .local v4, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const/4 v2, 0x0

    .line 276
    .local v2, gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/storage/Storage$WriteRootTask;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sonyericsson/storage/Storage$WriteRootTask;->mRoot:Lcom/sonyericsson/storage/Root;

    invoke-virtual {v7}, Lcom/sonyericsson/storage/Root;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xml.gz.tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 278
    .local v1, fileOutputStream:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 280
    .end local v2           #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .local v3, gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    const-string v5, "UTF-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 281
    const-string v5, "UTF-8"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 282
    iget-object v5, p0, Lcom/sonyericsson/storage/Storage$WriteRootTask;->mRoot:Lcom/sonyericsson/storage/Root;

    invoke-virtual {v5, v4}, Lcom/sonyericsson/storage/Root;->toXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 283
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 286
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 287
    invoke-static {v1}, Lcom/sonyericsson/storage/Storage;->sync(Ljava/io/FileOutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 291
    if-eqz v3, :cond_2

    .line 293
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 298
    .end local v1           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v3           #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .restart local v2       #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 294
    .end local v2           #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .restart local v1       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v5

    move-object v2, v3

    .line 295
    .end local v3           #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .restart local v2       #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    goto :goto_0

    .line 288
    .end local v1           #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 289
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "Storage"

    const-string v6, "Write root failed"

    invoke-static {v5, v6, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 291
    if-eqz v2, :cond_0

    .line 293
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 294
    :catch_2
    move-exception v5

    goto :goto_0

    .line 291
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_1

    .line 293
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 295
    :cond_1
    :goto_3
    throw v5

    .line 294
    :catch_3
    move-exception v6

    goto :goto_3

    .line 291
    .end local v2           #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .restart local v1       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .restart local v2       #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    goto :goto_2

    .line 288
    .end local v2           #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .restart local v3       #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    :catch_4
    move-exception v5

    move-object v0, v5

    move-object v2, v3

    .end local v3           #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .restart local v2       #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    goto :goto_1

    .end local v2           #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .restart local v3       #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    :cond_2
    move-object v2, v3

    .end local v3           #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .restart local v2       #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    goto :goto_0
.end method

.method public overrides(Lcom/sonyericsson/util/Worker$Task;)Z
    .locals 4
    .parameter "another"

    .prologue
    .line 262
    instance-of v2, p1, Lcom/sonyericsson/storage/Storage$WriteRootTask;

    if-nez v2, :cond_0

    .line 263
    const/4 v2, 0x0

    .line 266
    :goto_0
    return v2

    .line 265
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/storage/Storage$WriteRootTask;

    move-object v1, v0

    .line 266
    .local v1, task2:Lcom/sonyericsson/storage/Storage$WriteRootTask;
    iget-object v2, p0, Lcom/sonyericsson/storage/Storage$WriteRootTask;->mRoot:Lcom/sonyericsson/storage/Root;

    invoke-virtual {v2}, Lcom/sonyericsson/storage/Root;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/sonyericsson/storage/Storage$WriteRootTask;->mRoot:Lcom/sonyericsson/storage/Root;

    invoke-virtual {v3}, Lcom/sonyericsson/storage/Root;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public postExecute()V
    .locals 5

    .prologue
    .line 302
    iget-object v2, p0, Lcom/sonyericsson/storage/Storage$WriteRootTask;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonyericsson/storage/Storage$WriteRootTask;->mRoot:Lcom/sonyericsson/storage/Root;

    invoke-virtual {v4}, Lcom/sonyericsson/storage/Root;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml.gz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 303
    .local v0, file:Ljava/io/File;
    iget-object v2, p0, Lcom/sonyericsson/storage/Storage$WriteRootTask;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonyericsson/storage/Storage$WriteRootTask;->mRoot:Lcom/sonyericsson/storage/Root;

    invoke-virtual {v4}, Lcom/sonyericsson/storage/Root;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml.gz.tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 304
    .local v1, tmpFile:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    const-string v2, "Storage"

    const-string v3, "Rename file during write root failed"

    invoke-static {v2, v3}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/storage/Storage$WriteRootTask;->mCallback:Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;

    if-eqz v2, :cond_1

    .line 309
    iget-object v2, p0, Lcom/sonyericsson/storage/Storage$WriteRootTask;->mCallback:Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;

    iget-object v3, p0, Lcom/sonyericsson/storage/Storage$WriteRootTask;->mRoot:Lcom/sonyericsson/storage/Root;

    invoke-interface {v2, v3}, Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;->onWriteCompleted(Lcom/sonyericsson/storage/Root;)V

    .line 311
    :cond_1
    return-void
.end method
