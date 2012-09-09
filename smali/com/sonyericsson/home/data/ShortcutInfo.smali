.class public Lcom/sonyericsson/home/data/ShortcutInfo;
.super Lcom/sonyericsson/home/data/Info;
.source "ShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/data/ShortcutInfo$ShortcutInfoFactory;
    }
.end annotation


# static fields
.field private static final UNKNOWN_TITLE:Ljava/lang/String; = ""


# instance fields
.field private final mBitmapPath:Ljava/lang/String;

.field private final mBitmapResourceName:Ljava/lang/String;

.field private final mIconResource:Landroid/content/Intent$ShortcutIconResource;

.field private final mIntent:Landroid/content/Intent;

.field private final mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;)V
    .locals 6
    .parameter "label"
    .parameter "intent"
    .parameter "iconResource"

    .prologue
    const/4 v4, 0x0

    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/home/data/ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;)V
    .locals 6
    .parameter "label"
    .parameter "intent"
    .parameter "iconResource"
    .parameter "bitmapResourceName"

    .prologue
    .line 140
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/home/data/ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "label"
    .parameter "intent"
    .parameter "iconResource"
    .parameter "bitmapResourceName"
    .parameter "bitmapPath"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/sonyericsson/home/data/Info;-><init>()V

    .line 131
    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/sonyericsson/home/data/ShortcutInfo;->mLabel:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lcom/sonyericsson/home/data/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 133
    iput-object p3, p0, Lcom/sonyericsson/home/data/ShortcutInfo;->mIconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 134
    iput-object p4, p0, Lcom/sonyericsson/home/data/ShortcutInfo;->mBitmapResourceName:Ljava/lang/String;

    .line 135
    iput-object p5, p0, Lcom/sonyericsson/home/data/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    .line 136
    return-void

    .line 131
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .parameter "label"
    .parameter "intent"
    .parameter "bitmapPath"

    .prologue
    const/4 v3, 0x0

    .line 148
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/home/data/ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public static create(Landroid/os/Bundle;)Lcom/sonyericsson/home/data/ShortcutInfo;
    .locals 10
    .parameter "shortcutData"

    .prologue
    .line 159
    const-string v9, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 160
    .local v8, shortcutIntent:Landroid/content/Intent;
    const-string v9, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, label:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 162
    const-string v6, ""

    .line 165
    :cond_0
    const/4 v1, 0x0

    .line 166
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const-string v9, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 167
    .local v2, bitmapParcelable:Landroid/os/Parcelable;
    if-eqz v2, :cond_1

    instance-of v9, v2, Landroid/graphics/Bitmap;

    if-eqz v9, :cond_1

    .line 168
    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 170
    :cond_1
    move-object v7, v1

    .line 172
    .local v7, shortcutBitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 173
    .local v4, iconResource:Landroid/content/Intent$ShortcutIconResource;
    const-string v9, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 175
    .local v5, iconResourceParcelable:Landroid/os/Parcelable;
    if-nez v7, :cond_2

    if-eqz v5, :cond_2

    instance-of v9, v5, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v9, :cond_2

    .line 177
    move-object v0, v5

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v4, v0

    .line 180
    :cond_2
    if-eqz v8, :cond_4

    .line 181
    const/4 v3, 0x0

    .line 182
    .local v3, bitmapResourceName:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 183
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    :cond_3
    new-instance v9, Lcom/sonyericsson/home/data/ShortcutInfo;

    invoke-direct {v9, v6, v8, v4, v3}, Lcom/sonyericsson/home/data/ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;)V

    .line 188
    .end local v3           #bitmapResourceName:Ljava/lang/String;
    :goto_0
    return-object v9

    :cond_4
    const/4 v9, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 210
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 233
    :goto_0
    return v2

    .line 213
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 214
    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 217
    goto :goto_0

    .line 220
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    move-object v1, v0

    .line 222
    .local v1, other:Lcom/sonyericsson/home/data/ShortcutInfo;
    iget-object v2, p0, Lcom/sonyericsson/home/data/ShortcutInfo;->mLabel:Ljava/lang/String;

    iget-object v3, v1, Lcom/sonyericsson/home/data/ShortcutInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    .line 223
    goto :goto_0

    .line 225
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/home/data/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_4

    .line 226
    iget-object v2, v1, Lcom/sonyericsson/home/data/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_5

    move v2, v4

    .line 227
    goto :goto_0

    .line 229
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/home/data/ShortcutInfo;->mIntent:Landroid/content/Intent;

    iget-object v3, v1, Lcom/sonyericsson/home/data/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    .line 230
    goto :goto_0

    :cond_5
    move v2, v5

    .line 233
    goto :goto_0
.end method

.method public getBitmapPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonyericsson/home/data/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    return-object v0
.end method

.method public getBitmapResourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sonyericsson/home/data/ShortcutInfo;->mBitmapResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResource()Landroid/content/Intent$ShortcutIconResource;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonyericsson/home/data/ShortcutInfo;->mIconResource:Landroid/content/Intent$ShortcutIconResource;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sonyericsson/home/data/ShortcutInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sonyericsson/home/data/ShortcutInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sonyericsson/home/data/ShortcutInfo;->mIconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/home/data/ShortcutInfo;->mIconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 251
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 193
    const/16 v0, 0x1f

    .line 194
    .local v0, prime:I
    const/4 v1, 0x1

    .line 195
    .local v1, result:I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v2, p0, Lcom/sonyericsson/home/data/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 196
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sonyericsson/home/data/ShortcutInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 197
    return v1

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/data/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->filterHashCode()I

    move-result v2

    goto :goto_0
.end method
