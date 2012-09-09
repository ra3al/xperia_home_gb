.class public Lcom/sonyericsson/storage/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/storage/Storage$1;,
        Lcom/sonyericsson/storage/Storage$DeleteRootTask;,
        Lcom/sonyericsson/storage/Storage$ReadRootTask;,
        Lcom/sonyericsson/storage/Storage$WriteBitmapTask;,
        Lcom/sonyericsson/storage/Storage$WriteRootTask;,
        Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;,
        Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;
    }
.end annotation


# static fields
.field private static final CHARACTER_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final DIRECTORY_BITMAP:Ljava/lang/String; = "img"

.field protected static final FILE_BITMAP_EXTENSION:Ljava/lang/String; = ""

.field private static final FILE_EXTENSION:Ljava/lang/String; = ".xml.gz"

.field private static final LOG_TAG:Ljava/lang/String; = "Storage"

.field private static final THREAD_PRIORITY:I = 0x1

.field private static final TMP_EXTENSION:Ljava/lang/String; = ".xml.gz.tmp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    return-void
.end method

.method public static cancelReadRoot(Ljava/lang/Object;)V
    .locals 1
    .parameter "readHandle"

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sonyericsson/util/Worker;->obtain(I)Lcom/sonyericsson/util/Worker;

    move-result-object v0

    check-cast p0, Lcom/sonyericsson/util/Worker$Task;

    .end local p0
    invoke-virtual {v0, p0}, Lcom/sonyericsson/util/Worker;->cancelTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 187
    return-void
.end method

.method public static deleteRoot(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "rootName"

    .prologue
    .line 220
    new-instance v0, Lcom/sonyericsson/storage/Storage$DeleteRootTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sonyericsson/storage/Storage$DeleteRootTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$1;)V

    .line 221
    .local v0, deleteRootTask:Lcom/sonyericsson/storage/Storage$DeleteRootTask;
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sonyericsson/util/Worker;->obtain(I)Lcom/sonyericsson/util/Worker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 222
    return-void
.end method

.method public static readBitmapSync(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    const/4 v3, 0x0

    .line 199
    .local v3, inputStream:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 202
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    const-string v5, "img"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 203
    .local v1, bitmapDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    .local v2, inputFile:Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v3           #inputStream:Ljava/io/InputStream;
    .local v4, inputStream:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 208
    if-eqz v4, :cond_0

    .line 210
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 216
    :cond_0
    :goto_0
    return-object v0

    .line 208
    .end local v1           #bitmapDir:Ljava/io/File;
    .end local v2           #inputFile:Ljava/io/File;
    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v3, :cond_1

    .line 210
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 212
    :cond_1
    :goto_2
    throw v5

    .line 211
    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v1       #bitmapDir:Ljava/io/File;
    .restart local v2       #inputFile:Ljava/io/File;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v5

    goto :goto_0

    .end local v1           #bitmapDir:Ljava/io/File;
    .end local v2           #inputFile:Ljava/io/File;
    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :catch_1
    move-exception v6

    goto :goto_2

    .line 208
    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v1       #bitmapDir:Ljava/io/File;
    .restart local v2       #inputFile:Ljava/io/File;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)Ljava/lang/Object;
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "callback"

    .prologue
    .line 173
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sonyericsson/util/Worker;->obtain(I)Lcom/sonyericsson/util/Worker;

    move-result-object v1

    .line 175
    .local v1, worker:Lcom/sonyericsson/util/Worker;
    new-instance v0, Lcom/sonyericsson/storage/Storage$ReadRootTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/sonyericsson/storage/Storage$ReadRootTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;Lcom/sonyericsson/storage/Storage$1;)V

    .line 176
    .local v0, readRootTask:Lcom/sonyericsson/storage/Storage$ReadRootTask;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 177
    return-object v0
.end method

.method public static removeBitmap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "name"

    .prologue
    .line 101
    const-string v2, "img"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 102
    .local v0, bitmapDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    .local v1, removeFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    const-string v2, "Failed to remove bitmap from storage"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    :cond_0
    return-void
.end method

.method public static sync(Ljava/io/FileOutputStream;)Z
    .locals 1
    .parameter "stream"

    .prologue
    .line 233
    if-eqz p0, :cond_0

    .line 234
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    .line 237
    :catch_0
    move-exception v0

    .line 239
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;)V
    .locals 3
    .parameter "context"
    .parameter "root"
    .parameter "callback"

    .prologue
    .line 158
    new-instance v1, Lcom/sonyericsson/storage/Storage$WriteRootTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sonyericsson/storage/Storage$WriteRootTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;Lcom/sonyericsson/storage/Storage$1;)V

    .line 159
    .local v1, writeRootTask:Lcom/sonyericsson/storage/Storage$WriteRootTask;
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sonyericsson/util/Worker;->obtain(I)Lcom/sonyericsson/util/Worker;

    move-result-object v0

    .line 160
    .local v0, worker:Lcom/sonyericsson/util/Worker;
    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 161
    return-void
.end method

.method public static write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Z)V
    .locals 3
    .parameter "context"
    .parameter "root"
    .parameter "async"

    .prologue
    const/4 v2, 0x0

    .line 138
    new-instance v1, Lcom/sonyericsson/storage/Storage$WriteRootTask;

    invoke-direct {v1, p0, p1, v2, v2}, Lcom/sonyericsson/storage/Storage$WriteRootTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;Lcom/sonyericsson/storage/Storage$1;)V

    .line 140
    .local v1, writeRootTask:Lcom/sonyericsson/storage/Storage$WriteRootTask;
    if-eqz p2, :cond_0

    .line 141
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sonyericsson/util/Worker;->obtain(I)Lcom/sonyericsson/util/Worker;

    move-result-object v0

    .line 142
    .local v0, worker:Lcom/sonyericsson/util/Worker;
    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 147
    .end local v0           #worker:Lcom/sonyericsson/util/Worker;
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {v1}, Lcom/sonyericsson/storage/Storage$WriteRootTask;->execute()V

    .line 145
    invoke-virtual {v1}, Lcom/sonyericsson/storage/Storage$WriteRootTask;->postExecute()V

    goto :goto_0
.end method

.method public static write(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "bitmap"
    .parameter "async"

    .prologue
    .line 118
    new-instance v1, Lcom/sonyericsson/storage/Storage$WriteBitmapTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sonyericsson/storage/Storage$WriteBitmapTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sonyericsson/storage/Storage$1;)V

    .line 120
    .local v1, writeBitmapTask:Lcom/sonyericsson/storage/Storage$WriteBitmapTask;
    if-eqz p3, :cond_0

    .line 121
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sonyericsson/util/Worker;->obtain(I)Lcom/sonyericsson/util/Worker;

    move-result-object v0

    .line 122
    .local v0, worker:Lcom/sonyericsson/util/Worker;
    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 127
    .end local v0           #worker:Lcom/sonyericsson/util/Worker;
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {v1}, Lcom/sonyericsson/storage/Storage$WriteBitmapTask;->execute()V

    .line 125
    invoke-virtual {v1}, Lcom/sonyericsson/storage/Storage$WriteBitmapTask;->postExecute()V

    goto :goto_0
.end method
