.class public abstract Lcom/sonyericsson/home/customization/GenericCustomization;
.super Ljava/lang/Object;
.source "GenericCustomization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/customization/GenericCustomization$1;,
        Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;,
        Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mGroupTypes:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mGroups:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack",
            "<",
            "Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsMissingPackageAllowed:Z

.field protected mType:Ljava/lang/String;

.field protected mVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;-><init>(Lcom/sonyericsson/home/customization/GenericCustomization$1;)V

    iput-object v0, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mGroupTypes:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    .line 45
    new-instance v0, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;-><init>(Lcom/sonyericsson/home/customization/GenericCustomization$1;)V

    iput-object v0, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mGroups:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    .line 100
    iput-object p1, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mIsMissingPackageAllowed:Z

    .line 103
    return-void
.end method


# virtual methods
.method public applyCustomization(IZ)Z
    .locals 5
    .parameter "resId"
    .parameter "missingPackageAllowed"

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 151
    .local v1, result:Z
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 152
    .local v2, xml:Lorg/xmlpull/v1/XmlPullParser;
    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {p0, v2, p2}, Lcom/sonyericsson/home/customization/GenericCustomization;->applyCustomization(Lorg/xmlpull/v1/XmlPullParser;Z)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 159
    .end local v2           #xml:Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_0
    return v1

    .line 155
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 156
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    iget-object v3, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    const-string v4, "Failed to find customization xml file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public applyCustomization(Landroid/net/Uri;Z)Z
    .locals 7
    .parameter "customizationUri"
    .parameter "missingPackageAllowed"

    .prologue
    const-string v6, "Failed to apply customization"

    .line 116
    const/4 v2, 0x0

    .line 119
    .local v2, result:Z
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 121
    .local v0, customization:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0, v0, p2}, Lcom/sonyericsson/home/customization/GenericCustomization;->applyCustomization(Ljava/io/InputStream;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 123
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 133
    .end local v0           #customization:Ljava/io/InputStream;
    :goto_0
    return v2

    .line 123
    .restart local v0       #customization:Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v4
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 125
    .end local v0           #customization:Ljava/io/InputStream;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 127
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 128
    .local v3, se:Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    const-string v5, "Failed to apply customization"

    invoke-static {v4, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 129
    .end local v3           #se:Ljava/lang/SecurityException;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 130
    .local v1, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    const-string v5, "Failed to apply customization"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public applyCustomization(Ljava/io/InputStream;Z)Z
    .locals 6
    .parameter "customizationInput"
    .parameter "missingPackageAllowed"

    .prologue
    .line 173
    const/4 v2, 0x0

    .line 176
    .local v2, result:Z
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 177
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    invoke-interface {v1, p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, v1, p2}, Lcom/sonyericsson/home/customization/GenericCustomization;->applyCustomization(Lorg/xmlpull/v1/XmlPullParser;Z)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 185
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return v2

    .line 179
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 180
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v4, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    const-string v5, "Failed to parse customization xml"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 181
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 182
    .local v3, se:Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    const-string v5, "Failed to apply customization"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public applyCustomization(Ljava/lang/String;Z)Z
    .locals 10
    .parameter "fileName"
    .parameter "missingPackageAllowed"

    .prologue
    const-string v9, "Failed to close customization file: "

    .line 199
    const/4 v3, 0x0

    .line 200
    .local v3, result:Z
    const/4 v1, 0x0

    .line 203
    .local v1, fileInput:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 204
    .end local v1           #fileInput:Ljava/io/FileInputStream;
    .local v2, fileInput:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p0, v2, p2}, Lcom/sonyericsson/home/customization/GenericCustomization;->applyCustomization(Ljava/io/InputStream;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v3

    .line 210
    if-eqz v2, :cond_2

    .line 212
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 219
    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v1       #fileInput:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return v3

    .line 213
    .end local v1           #fileInput:Ljava/io/FileInputStream;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close customization file: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 215
    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v1       #fileInput:Ljava/io/FileInputStream;
    goto :goto_0

    .line 205
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 210
    :goto_1
    if-eqz v1, :cond_0

    .line 212
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 213
    :catch_2
    move-exception v0

    .line 214
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close customization file: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    move-object v4, v5

    .line 208
    .local v4, se:Ljava/lang/SecurityException;
    :goto_2
    :try_start_4
    iget-object v5, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecurityException when reading customization file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 210
    if-eqz v1, :cond_0

    .line 212
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 213
    :catch_4
    move-exception v0

    .line 214
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close customization file: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #se:Ljava/lang/SecurityException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v1, :cond_1

    .line 212
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 215
    :cond_1
    :goto_4
    throw v5

    .line 213
    :catch_5
    move-exception v0

    .line 214
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v6, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close customization file: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 210
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fileInput:Ljava/io/FileInputStream;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v1       #fileInput:Ljava/io/FileInputStream;
    goto :goto_3

    .line 207
    .end local v1           #fileInput:Ljava/io/FileInputStream;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    :catch_6
    move-exception v5

    move-object v4, v5

    move-object v1, v2

    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v1       #fileInput:Ljava/io/FileInputStream;
    goto :goto_2

    .line 205
    .end local v1           #fileInput:Ljava/io/FileInputStream;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    :catch_7
    move-exception v5

    move-object v1, v2

    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v1       #fileInput:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v1           #fileInput:Ljava/io/FileInputStream;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v1       #fileInput:Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method public applyCustomization(Lorg/xmlpull/v1/XmlPullParser;Z)Z
    .locals 13
    .parameter "xml"
    .parameter "missingPackageAllowed"

    .prologue
    .line 233
    const/4 v7, 0x0

    .line 236
    .local v7, result:Z
    iput-boolean p2, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mIsMissingPackageAllowed:Z

    .line 238
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    if-eqz v10, :cond_0

    .line 239
    iget-object v10, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    const-string v11, "Error: Wrong XML parser state"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v10, 0x0

    .line 308
    :goto_0
    return v10

    .line 243
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 246
    .local v3, event:I
    if-nez v3, :cond_1

    .line 247
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 250
    :cond_1
    const/4 v10, 0x2

    if-ne v3, v10, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "settings"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 251
    const/4 v10, 0x0

    const-string v11, "version"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mVersion:I

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, currentGroup:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    const/4 v1, 0x0

    .line 259
    .local v1, currentGroupType:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v10, 0x1

    if-eq v3, v10, :cond_c

    .line 260
    const/4 v10, 0x2

    if-ne v3, v10, :cond_9

    .line 261
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 262
    .local v8, tagName:Ljava/lang/String;
    const-string v10, "setting"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 263
    const/4 v10, 0x0

    const-string v11, "key"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, key:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 266
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, value:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 269
    invoke-virtual {v0, v6, v9}, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;->putSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .end local v9           #value:Ljava/lang/String;
    :cond_3
    :goto_2
    const/4 v10, 0x3

    const/4 v11, 0x0

    const-string v12, "setting"

    invoke-interface {p1, v10, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 302
    .end local v0           #currentGroup:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    .end local v1           #currentGroupType:Ljava/lang/String;
    .end local v3           #event:I
    .end local v6           #key:Ljava/lang/String;
    .end local v8           #tagName:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 303
    .local v2, e:Ljava/io/IOException;
    iget-object v10, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    const-string v11, "Failed to read customization xml file"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2           #e:Ljava/io/IOException;
    :goto_3
    move v10, v7

    .line 308
    goto :goto_0

    .line 253
    .restart local v3       #event:I
    :cond_4
    :try_start_1
    iget-object v10, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    const-string v11, "Error: Missing expected <settings> tag in customization xml file"

    invoke-static {v10, v11}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v10, 0x0

    goto :goto_0

    .line 271
    .restart local v0       #currentGroup:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    .restart local v1       #currentGroupType:Ljava/lang/String;
    .restart local v6       #key:Ljava/lang/String;
    .restart local v8       #tagName:Ljava/lang/String;
    .restart local v9       #value:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v6, v9}, Lcom/sonyericsson/home/customization/GenericCustomization;->handleSetting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 304
    .end local v0           #currentGroup:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    .end local v1           #currentGroupType:Ljava/lang/String;
    .end local v3           #event:I
    .end local v6           #key:Ljava/lang/String;
    .end local v8           #tagName:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :catch_1
    move-exception v10

    move-object v2, v10

    .line 305
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v10, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    const-string v11, "Customization XML parsing failed"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 275
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0       #currentGroup:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    .restart local v1       #currentGroupType:Ljava/lang/String;
    .restart local v3       #event:I
    .restart local v8       #tagName:Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string v10, "group"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 276
    const/4 v10, 0x0

    const-string v11, "id"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, groupId:Ljava/lang/String;
    new-instance v0, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;

    .end local v0           #currentGroup:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .restart local v0       #currentGroup:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    iget-object v10, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mGroups:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    invoke-virtual {v10, v0}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 279
    .end local v5           #groupId:Ljava/lang/String;
    :cond_7
    const-string v10, "groups"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 280
    const/4 v10, 0x0

    const-string v11, "type"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    iget-object v10, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mGroupTypes:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    invoke-virtual {v10, v1}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 283
    :cond_8
    iget-object v10, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring unknown tag: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 285
    .end local v8           #tagName:Ljava/lang/String;
    :cond_9
    const/4 v10, 0x3

    if-ne v3, v10, :cond_2

    .line 286
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 288
    .restart local v8       #tagName:Ljava/lang/String;
    const-string v10, "group"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 289
    iget-object v10, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mGroups:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    invoke-virtual {v10}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;

    .line 290
    .local v4, group:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    if-nez v4, :cond_a

    .line 291
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v11, "Incorrect XML format"

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 293
    :cond_a
    iget-object v10, v4, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;->type:Ljava/lang/String;

    iget-object v11, v4, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;->id:Ljava/lang/String;

    iget-object v12, v4, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;->settings:Ljava/util/HashMap;

    invoke-virtual {p0, v10, v11, v12}, Lcom/sonyericsson/home/customization/GenericCustomization;->handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 294
    iget-object v10, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mGroups:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    invoke-virtual {v10}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;->getTop()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #currentGroup:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    check-cast v0, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;

    .line 295
    .restart local v0       #currentGroup:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    goto/16 :goto_1

    .end local v4           #group:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    :cond_b
    const-string v10, "groups"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 296
    iget-object v10, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mGroupTypes:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    invoke-virtual {v10}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;->pop()Ljava/lang/Object;

    .line 297
    iget-object v10, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mGroupTypes:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    invoke-virtual {v10}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;->getTop()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentGroupType:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v1       #currentGroupType:Ljava/lang/String;
    goto/16 :goto_1

    .line 301
    .end local v8           #tagName:Ljava/lang/String;
    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_3
.end method

.method protected handleSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 1
    .parameter "groupType"
    .parameter "groupId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 334
    .local p3, settings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method
