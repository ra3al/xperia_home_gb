.class Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;
.super Lcom/sonyericsson/util/Worker$Task;
.source "ResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/resourceload/ResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTask"
.end annotation


# instance fields
.field private mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

.field private final mInfo:Lcom/sonyericsson/home/data/Info;

.field private mPreviewIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter
    .parameter "info"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 215
    const-string v0, "Load resources"

    invoke-direct {p0, v0}, Lcom/sonyericsson/util/Worker$Task;-><init>(Ljava/lang/String;)V

    .line 216
    iput-object p2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    .line 217
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 31

    .prologue
    .line 254
    new-instance v27, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    invoke-direct/range {v27 .. v27}, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    .line 256
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    instance-of v0, v0, Lcom/sonyericsson/home/data/ActivityInfo;

    move/from16 v27, v0

    if-eqz v27, :cond_4

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v13, v0

    .line 258
    .local v13, info:Landroid/content/pm/ResolveInfo;
    if-eqz v13, :cond_0

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$500(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v27

    move-wide/from16 v23, v27

    .line 262
    .local v23, startTime:J
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$600(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/pm/PackageManager;

    move-result-object v28

    move-object v0, v13

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$600(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/pm/PackageManager;

    move-result-object v27

    move-object v0, v13

    move-object/from16 v1, v27

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v1, v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$2000(Lcom/sonyericsson/home/resourceload/ResourceLoader;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 264
    .local v9, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object v1, v9

    invoke-static {v0, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$700(Lcom/sonyericsson/home/resourceload/ResourceLoader;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$500(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v27

    sub-long v27, v27, v23

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move v15, v0

    .line 272
    .local v15, loadTime:I
    const/16 v27, 0x64

    move v0, v15

    move/from16 v1, v27

    if-le v0, v1, :cond_0

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$800(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/Set;

    move-result-object v27

    new-instance v28, Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;-><init>(Lcom/sonyericsson/home/data/Info;I)V

    invoke-interface/range {v27 .. v28}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v9           #icon:Landroid/graphics/drawable/Drawable;
    .end local v13           #info:Landroid/content/pm/ResolveInfo;
    .end local v15           #loadTime:I
    .end local v23           #startTime:J
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$300(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 358
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    if-nez v27, :cond_2

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v27, v0

    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    .line 361
    :cond_2
    return-void

    .line 259
    .restart local v13       #info:Landroid/content/pm/ResolveInfo;
    :cond_3
    const-wide/16 v27, 0x0

    move-wide/from16 v23, v27

    goto/16 :goto_0

    .line 277
    .end local v13           #info:Landroid/content/pm/ResolveInfo;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    instance-of v0, v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    move/from16 v27, v0

    if-eqz v27, :cond_8

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    move-object/from16 v22, v0

    check-cast v22, Lcom/sonyericsson/home/data/ShortcutInfo;

    .line 279
    .local v22, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/home/data/ShortcutInfo;->getIconResource()Landroid/content/Intent$ShortcutIconResource;

    move-result-object v11

    .line 280
    .local v11, iconResource:Landroid/content/Intent$ShortcutIconResource;
    if-eqz v11, :cond_6

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$600(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/pm/PackageManager;

    move-result-object v27

    move-object v0, v11

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v21

    .line 284
    .local v21, resources:Landroid/content/res/Resources;
    if-eqz v21, :cond_5

    .line 285
    move-object v0, v11

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 287
    .local v12, id:I
    if-eqz v12, :cond_5

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$700(Lcom/sonyericsson/home/resourceload/ResourceLoader;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 310
    .end local v12           #id:I
    .end local v21           #resources:Landroid/content/res/Resources;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v27, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 351
    .end local v11           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .end local v22           #shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    :catch_0
    move-exception v27

    move-object/from16 v25, v27

    .line 352
    .local v25, throwable:Ljava/lang/Throwable;
    const-string v27, "ResourceLoader"

    const-string v28, "Error loading resource"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 292
    .end local v25           #throwable:Ljava/lang/Throwable;
    .restart local v11       #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .restart local v22       #shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    :cond_6
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v7

    .line 293
    .local v7, bitmapResourceName:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v6, bitmapPath:Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v27, v0

    new-instance v28, Lcom/sonyericsson/drawable/FastBitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$400(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/sonyericsson/storage/Storage;->readBitmapSync(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/sonyericsson/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 301
    :cond_7
    if-eqz v6, :cond_5

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$900(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v27

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 304
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_5

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v27, v0

    new-instance v28, Lcom/sonyericsson/drawable/FastBitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1000(Lcom/sonyericsson/home/resourceload/ResourceLoader;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/sonyericsson/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 311
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #bitmapPath:Ljava/lang/String;
    .end local v7           #bitmapResourceName:Ljava/lang/String;
    .end local v11           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .end local v22           #shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    instance-of v0, v0, Lcom/sonyericsson/home/data/InfoGroup;

    move/from16 v27, v0

    if-eqz v27, :cond_0

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mFolderIcon:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    sget-object v28, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v29, 0x1

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 314
    .local v9, icon:Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 317
    .local v10, iconCanvas:Landroid/graphics/Canvas;
    const/16 v17, 0x2

    .line 320
    .local v17, paddingBetween:I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPreviewIconWidth:I

    move/from16 v28, v0

    mul-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    const/16 v28, 0x2

    sub-int v27, v27, v28

    div-int/lit8 v19, v27, 0x2

    .line 324
    .local v19, paddingSideMiniature:I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mFolderPreviewEmptyIcon:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    mul-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    const/16 v28, 0x2

    sub-int v27, v27, v28

    div-int/lit8 v18, v27, 0x2

    .line 327
    .local v18, paddingSideEmptyIcon:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mPreviewIcons:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 330
    .local v16, nrOfPreviewIcons:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    const/16 v27, 0x4

    move v0, v8

    move/from16 v1, v27

    if-ge v0, v1, :cond_d

    .line 331
    div-int/lit8 v27, v8, 0x2

    if-nez v27, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mFolderMinisPaddingTop:I

    move/from16 v27, v0

    move/from16 v26, v27

    .line 334
    .local v26, top:I
    :goto_4
    move v0, v8

    move/from16 v1, v16

    if-ge v0, v1, :cond_b

    .line 336
    rem-int/lit8 v27, v8, 0x2

    if-nez v27, :cond_a

    move/from16 v14, v19

    .line 338
    .local v14, left:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mPreviewIcons:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Bitmap;

    .line 339
    .local v20, previewIcon:Landroid/graphics/Bitmap;
    move v0, v14

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object v0, v10

    move-object/from16 v1, v20

    move/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 340
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    .line 330
    .end local v20           #previewIcon:Landroid/graphics/Bitmap;
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 331
    .end local v14           #left:I
    .end local v26           #top:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPreviewIconHeight:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mFolderMinisPaddingTop:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int/lit8 v27, v27, 0x2

    move/from16 v26, v27

    goto :goto_4

    .line 336
    .restart local v26       #top:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPreviewIconWidth:I

    move/from16 v27, v0

    add-int v27, v27, v19

    add-int/lit8 v27, v27, 0x2

    move/from16 v14, v27

    goto :goto_5

    .line 343
    :cond_b
    rem-int/lit8 v27, v8, 0x2

    if-nez v27, :cond_c

    move/from16 v14, v18

    .line 345
    .restart local v14       #left:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mFolderPreviewEmptyIcon:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    move v0, v14

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object v0, v10

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 343
    .end local v14           #left:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPreviewIconWidth:I

    move/from16 v27, v0

    add-int v27, v27, v18

    add-int/lit8 v27, v27, 0x2

    move/from16 v14, v27

    goto :goto_7

    .line 349
    .end local v26           #top:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v27, v0

    new-instance v28, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$400(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public postExecute()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 365
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    instance-of v6, v6, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v6, :cond_0

    .line 366
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/badge/BadgeManager;

    move-result-object v8

    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    check-cast v6, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-virtual {v8, v6}, Lcom/sonyericsson/home/badge/BadgeManager;->getBadgeMessage(Lcom/sonyericsson/home/data/ActivityInfo;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    .line 368
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    iget-object v8, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 372
    .local v2, callbacks:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;>;"
    if-eqz v2, :cond_2

    .line 373
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;

    .line 374
    .local v1, callback:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    iget-object v7, v7, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    iget-object v8, v8, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    iget-object v9, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    iget-object v9, v9, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    invoke-interface {v1, v6, v7, v8, v9}, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;->cacheCallback(Lcom/sonyericsson/home/data/Info;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    .end local v1           #callback:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    instance-of v6, v6, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v6, :cond_5

    .line 382
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v6, v6, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v6}, Lcom/sonyericsson/home/layer/InfoGroupManager;->notifyAppearanceChanged()V

    .line 396
    :cond_3
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1400(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 397
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6, v10}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1502(Lcom/sonyericsson/home/resourceload/ResourceLoader;Z)Z

    .line 398
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$500(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 399
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6, v10}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$502(Lcom/sonyericsson/home/resourceload/ResourceLoader;Z)Z

    .line 400
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1600(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 402
    :cond_4
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1702(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;

    .line 407
    :goto_1
    return-void

    .line 385
    :cond_5
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/home/data/Info;

    .line 386
    .local v4, info:Lcom/sonyericsson/home/data/Info;
    instance-of v6, v4, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v6, :cond_6

    .line 387
    move-object v0, v4

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    move-object v5, v0

    .line 388
    .local v5, infoGroup:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v6, v6, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v6, v5, v7}, Lcom/sonyericsson/home/layer/InfoGroupManager;->contains(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 389
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6, v4}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1300(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    goto :goto_2

    .line 404
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Lcom/sonyericsson/home/data/Info;
    .end local v5           #infoGroup:Lcom/sonyericsson/home/data/InfoGroup;
    :cond_7
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1400(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/home/data/Info;

    invoke-static {v7, v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1702(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;

    .line 405
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1800(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/util/Worker;

    move-result-object v6

    new-instance v7, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;

    iget-object v8, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v9, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v9}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1700(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/data/Info;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    invoke-virtual {v6, v7}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    goto :goto_1
.end method

.method public preExecute()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    .line 221
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    instance-of v7, v7, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v7, :cond_1

    .line 222
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v7}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v8

    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    check-cast v7, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-virtual {v8, v7}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getResolveInfo(Lcom/sonyericsson/home/data/ActivityInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 250
    :cond_0
    return-void

    .line 223
    :cond_1
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    instance-of v7, v7, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v7, :cond_0

    .line 226
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    check-cast v5, Lcom/sonyericsson/home/data/InfoGroup;

    .line 227
    .local v5, infoGroup:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v7, v7, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v7, v5}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getInfoCount(Lcom/sonyericsson/home/data/InfoGroup;)I

    move-result v4

    .line 228
    .local v4, infoCount:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mPreviewIcons:Ljava/util/ArrayList;

    .line 229
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mPreviewIcons:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v10, :cond_0

    .line 230
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v7, v7, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v7, v5, v2}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getInfo(Lcom/sonyericsson/home/data/InfoGroup;I)Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    .line 232
    .local v3, info:Lcom/sonyericsson/home/data/Info;
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v7}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    .line 233
    .local v1, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v1, :cond_4

    .line 234
    iget-object v7, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v7}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$200(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 236
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v7}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$300(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    :cond_2
    iget-object v7, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 240
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v7}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$400(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    invoke-static {v7, v8, v0}, Lcom/sonyericsson/home/badge/BadgeManager;->createBadgeBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 244
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget v7, v7, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPreviewIconWidth:I

    iget-object v8, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget v8, v8, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPreviewIconHeight:I

    const/4 v9, 0x1

    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 246
    .local v6, previewIconBitmap:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mPreviewIcons:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v6           #previewIconBitmap:Landroid/graphics/Bitmap;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
