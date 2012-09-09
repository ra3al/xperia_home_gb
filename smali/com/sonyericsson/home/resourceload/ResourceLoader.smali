.class public Lcom/sonyericsson/home/resourceload/ResourceLoader;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;,
        Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;,
        Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;,
        Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ResourceLoader"

.field static final MAX_PREVIEW_ICONS:I = 0x4

.field public static final SLOW_LOADING_LIMIT:I = 0x64

.field private static final STORAGE_ENTITY_NAME:Ljava/lang/String; = "slowloading"

.field private static final STORAGE_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final STORAGE_VERSION_VALUE:I = 0x1

.field private static final sPaintBitmapFilter:Landroid/graphics/Paint;


# instance fields
.field private isTaskExecuting:Z

.field private mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

.field private final mCacheCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            "Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mFolderDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final mFolderIcon:Landroid/graphics/Bitmap;

.field final mFolderMinisPaddingTop:I

.field final mFolderPreviewEmptyIcon:Landroid/graphics/Bitmap;

.field private mIconBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mIconHeight:I

.field private mIconPackPkgName:Ljava/lang/String;

.field private mIconPackRes:Landroid/content/res/Resources;

.field private mIconWidth:I

.field final mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

.field private mInfoLoadTarget:Lcom/sonyericsson/home/data/Info;

.field private final mInfoQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

.field final mPreviewIconHeight:I

.field final mPreviewIconWidth:I

.field private mPrioritizedResources:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;"
        }
    .end annotation
.end field

.field private mReadHandle:Ljava/lang/Object;

.field private mSlowLoadingApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateSlowLoadingList:Z

.field private mWorker:Lcom/sonyericsson/util/Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->sPaintBitmapFilter:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/badge/BadgeManager;)V
    .locals 6
    .parameter "context"
    .parameter "packageLoader"
    .parameter "infoGroupManager"
    .parameter "badgeManager"

    .prologue
    const/4 v5, 0x0

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    .line 117
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheCallbacks:Ljava/util/HashMap;

    .line 135
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    .line 161
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPrioritizedResources:Ljava/util/HashSet;

    .line 458
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    .line 459
    iput-object p2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 460
    iput-object p3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 461
    iput-object p4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    .line 462
    invoke-static {v5}, Lcom/sonyericsson/util/Worker;->obtain(I)Lcom/sonyericsson/util/Worker;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    .line 463
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 464
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f020048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 465
    const v3, 0x7f02001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mFolderDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 466
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mFolderDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mFolderIcon:Landroid/graphics/Bitmap;

    .line 467
    const v3, 0x7f02001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mFolderPreviewEmptyIcon:Landroid/graphics/Bitmap;

    .line 469
    const v3, 0x7f0a0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconWidth:I

    .line 470
    const v3, 0x7f0a0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconHeight:I

    .line 471
    const v3, 0x7f0a003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mFolderMinisPaddingTop:I

    .line 472
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 473
    .local v1, folderMinisScaleValue:Landroid/util/TypedValue;
    const v3, 0x7f0b0005

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 474
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 475
    .local v0, folderMinisScale:F
    iget v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPreviewIconWidth:I

    .line 476
    iget v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPreviewIconHeight:I

    .line 478
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 479
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 480
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 482
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->SetIconPackResources()V

    .line 486
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    const-string v4, "slowloading"

    new-instance v5, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;

    invoke-direct {v5, p0}, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    invoke-static {v3, v4, v5}, Lcom/sonyericsson/storage/Storage;->readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mReadHandle:Ljava/lang/Object;

    .line 550
    new-instance v3, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    iput-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 631
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 632
    return-void
.end method

.method private GetCustomDrawable(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "resInfo"

    .prologue
    .line 43
    const/4 v3, 0x0

    .line 44
    .local v3, res:Landroid/graphics/drawable/Drawable;
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, pkgName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    const-string v6, "_"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 47
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconPackRes:Landroid/content/res/Resources;

    if-eqz v4, :cond_1

    .line 49
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconPackRes:Landroid/content/res/Resources;

    const-string v5, "drawable"

    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconPackPkgName:Ljava/lang/String;

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 51
    .local v1, iResId:I
    if-eqz v1, :cond_0

    .line 55
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconPackRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 71
    .end local v1           #iResId:I
    :goto_0
    return-object v3

    .line 57
    .restart local v1       #iResId:I
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 64
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 69
    .end local v1           #iResId:I
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0
.end method

.method private SetIconPackResources()V
    .locals 4

    .prologue
    .line 29
    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    const-string v2, "com.sonyericsson.home_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "iconPack"

    const-string v3, "none"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconPackPkgName:Ljava/lang/String;

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconPackPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconPackRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconPackRes:Landroid/content/res/Resources;

    .line 38
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/resourceload/ResourceLoader;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->createIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/badge/BadgeManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->loadResource(Lcom/sonyericsson/home/data/Info;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sonyericsson/home/resourceload/ResourceLoader;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->isTaskExecuting:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->onLoadTaskFinished()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoLoadTarget:Lcom/sonyericsson/home/data/Info;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoLoadTarget:Lcom/sonyericsson/home/data/Info;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/util/Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sonyericsson/home/resourceload/ResourceLoader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mReadHandle:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/home/resourceload/ResourceLoader;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->GetCustomDrawable(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mUpdateSlowLoadingList:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/home/resourceload/ResourceLoader;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mUpdateSlowLoadingList:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/resourceload/ResourceLoader;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->createIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mSlowLoadingApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sonyericsson/home/resourceload/ResourceLoader;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mSlowLoadingApps:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method private createIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 826
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconWidth:I

    iget v2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitmap"
    .parameter "context"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 842
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v10

    if-nez v10, :cond_0

    .line 843
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 846
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 847
    .local v9, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 850
    .local v8, sourceHeight:I
    if-ne v9, p2, :cond_1

    if-eq v8, p3, :cond_4

    .line 851
    :cond_1
    move v7, p2

    .line 852
    .local v7, scaledWidth:I
    move v6, p3

    .line 854
    .local v6, scaledHeight:I
    int-to-float v10, v9

    int-to-float v11, v8

    div-float v4, v10, v11

    .line 855
    .local v4, ratio:F
    if-le v9, v8, :cond_3

    .line 856
    int-to-float v10, p2

    div-float/2addr v10, v4

    float-to-int v6, v10

    .line 861
    :cond_2
    :goto_0
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 863
    .local v5, scaledBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v5, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 864
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 865
    .local v0, canvas:Landroid/graphics/Canvas;
    sub-int v10, p2, v7

    div-int/lit8 v1, v10, 0x2

    .line 866
    .local v1, dstLeft:I
    sub-int v10, p3, v6

    div-int/lit8 v3, v10, 0x2

    .line 867
    .local v3, dstTop:I
    new-instance v2, Landroid/graphics/Rect;

    add-int v10, v1, v7

    add-int v11, v3, v6

    invoke-direct {v2, v1, v3, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 869
    .local v2, dstRect:Landroid/graphics/Rect;
    const/4 v10, 0x0

    sget-object v11, Lcom/sonyericsson/home/resourceload/ResourceLoader;->sPaintBitmapFilter:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, v10, v2, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object v10, v5

    .line 874
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #dstLeft:I
    .end local v2           #dstRect:Landroid/graphics/Rect;
    .end local v3           #dstTop:I
    .end local v4           #ratio:F
    .end local v5           #scaledBitmap:Landroid/graphics/Bitmap;
    .end local v6           #scaledHeight:I
    .end local v7           #scaledWidth:I
    :goto_1
    return-object v10

    .line 857
    .restart local v4       #ratio:F
    .restart local v6       #scaledHeight:I
    .restart local v7       #scaledWidth:I
    :cond_3
    if-le v8, v9, :cond_2

    .line 858
    int-to-float v10, p3

    mul-float/2addr v10, v4

    float-to-int v7, v10

    goto :goto_0

    .end local v4           #ratio:F
    .end local v6           #scaledHeight:I
    .end local v7           #scaledWidth:I
    :cond_4
    move-object v10, p0

    .line 874
    goto :goto_1
.end method

.method private createIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "drawable"

    .prologue
    .line 879
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 880
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 881
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 882
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconWidth:I

    iget v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconHeight:I

    invoke-static {v1, v4, v5, v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 883
    .local v3, iconBitmap:Landroid/graphics/Bitmap;
    new-instance v4, Lcom/sonyericsson/drawable/FastBitmapDrawable;

    invoke-direct {v4, v3}, Lcom/sonyericsson/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 885
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #iconBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v4

    :cond_0
    move-object v4, p1

    goto :goto_0
.end method

.method private static getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "drawable"

    .prologue
    .line 195
    instance-of v0, p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;

    if-eqz v0, :cond_0

    .line 196
    check-cast p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Lcom/sonyericsson/drawable/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 197
    .restart local p0
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 198
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 200
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getShortcutBitmap(Landroid/content/Context;Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "context"
    .parameter "shortcutData"

    .prologue
    .line 813
    const-string v3, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 814
    .local v1, bitmapParcelable:Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 815
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 816
    .local v2, res:Landroid/content/res/Resources;
    check-cast v1, Landroid/graphics/Bitmap;

    .end local v1           #bitmapParcelable:Landroid/os/Parcelable;
    const v3, 0x7f0a0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0a0007

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v1, p0, v3, v4}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    move-object v3, v0

    .line 822
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v3

    .restart local v1       #bitmapParcelable:Landroid/os/Parcelable;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadResource(Lcom/sonyericsson/home/data/Info;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPrioritizedResources:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 426
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->isTaskExecuting:Z

    if-nez v0, :cond_1

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->isTaskExecuting:Z

    .line 428
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/data/Info;

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoLoadTarget:Lcom/sonyericsson/home/data/Info;

    .line 429
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    new-instance v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;

    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoLoadTarget:Lcom/sonyericsson/home/data/Info;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 431
    :cond_1
    return-void

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onLoadTaskFinished()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const-string v7, "slowloading"

    .line 756
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mSlowLoadingApps:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 759
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mSlowLoadingApps:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 760
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mSlowLoadingApps:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;

    .line 761
    .local v1, info:Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;
    iget-object v4, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;->item:Lcom/sonyericsson/home/data/Info;

    check-cast v4, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 764
    .end local v1           #info:Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;
    :cond_0
    new-instance v3, Lcom/sonyericsson/storage/Root;

    const-string v4, "slowloading"

    invoke-direct {v3, v7}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 765
    .local v3, root:Lcom/sonyericsson/storage/Root;
    const-string v4, "version"

    invoke-virtual {v3, v4, v6}, Lcom/sonyericsson/storage/Root;->put(Ljava/lang/String;I)V

    .line 766
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 767
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v6}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Z)V

    .line 773
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    .end local v3           #root:Lcom/sonyericsson/storage/Root;
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPrioritizedResources:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 775
    const/16 v4, 0xa

    invoke-static {v4}, Lcom/sonyericsson/util/Worker;->obtain(I)Lcom/sonyericsson/util/Worker;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    .line 776
    return-void

    .line 769
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    const-string v5, "slowloading"

    invoke-static {v4, v7}, Lcom/sonyericsson/storage/Storage;->deleteRoot(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private unbindDrawables()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 909
    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    .line 910
    .local v0, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    iget-object v2, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 911
    iget-object v2, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 914
    .end local v0           #cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 915
    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mFolderDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 916
    return-void
.end method


# virtual methods
.method public add(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "shortcutInfo"
    .parameter "bitmap"

    .prologue
    .line 722
    if-eqz p2, :cond_0

    .line 723
    new-instance v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    invoke-direct {v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;-><init>()V

    .line 724
    .local v0, value:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    new-instance v1, Lcom/sonyericsson/drawable/FastBitmapDrawable;

    invoke-direct {v1, p2}, Lcom/sonyericsson/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 725
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    .line 726
    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    .end local v0           #value:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    :goto_0
    return-void

    .line 728
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->loadResource(Lcom/sonyericsson/home/data/Info;)V

    goto :goto_0
.end method

.method public getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    .locals 5
    .parameter "info"

    .prologue
    .line 641
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    .line 642
    .local v0, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-nez v0, :cond_0

    instance-of v3, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getUnavailablePackageSet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/Info;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 646
    new-instance v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    .end local v0           #cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    invoke-direct {v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;-><init>()V

    .line 647
    .restart local v0       #cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 649
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/Info;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 651
    .local v2, packageName:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 652
    .local v1, lastDotIndex:I
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    .line 653
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    .end local v1           #lastDotIndex:I
    .end local v2           #packageName:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getDefaultFolderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mFolderDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getShortcutBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "shortcutData"

    .prologue
    .line 796
    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 797
    .local v1, bitmapParcelable:Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 798
    check-cast v1, Landroid/graphics/Bitmap;

    .end local v1           #bitmapParcelable:Landroid/os/Parcelable;
    invoke-direct {p0, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->createIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    move-object v2, v0

    .line 802
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .restart local v1       #bitmapParcelable:Landroid/os/Parcelable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasQueuedInfos(Ljava/util/Set;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 705
    .local p1, infoSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/Info;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 706
    .local v0, allPendingInfos:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/Info;>;"
    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 707
    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoLoadTarget:Lcom/sonyericsson/home/data/Info;

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoLoadTarget:Lcom/sonyericsson/home/data/Info;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public onAppearanceChanged()V
    .locals 0

    .prologue
    .line 949
    return-void
.end method

.method public onContentChanged(Ljava/util/UUID;)V
    .locals 5
    .parameter "infoGroupUuid"

    .prologue
    .line 921
    const/4 v3, 0x0

    .line 923
    .local v3, infoToRemove:Lcom/sonyericsson/home/data/Info;
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/data/Info;

    .line 924
    .local v2, info:Lcom/sonyericsson/home/data/Info;
    instance-of v4, v2, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v4, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sonyericsson/home/data/InfoGroup;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 925
    move-object v0, v2

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    move-object v3, v0

    .line 930
    .end local v2           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    if-eqz v3, :cond_2

    .line 931
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    invoke-direct {p0, v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->loadResource(Lcom/sonyericsson/home/data/Info;)V

    .line 934
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->removeOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 890
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 891
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mReadHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mReadHandle:Ljava/lang/Object;

    invoke-static {v0}, Lcom/sonyericsson/storage/Storage;->cancelReadRoot(Ljava/lang/Object;)V

    .line 894
    :cond_0
    return-void
.end method

.method public onGroupRemoved(Ljava/util/UUID;)V
    .locals 4
    .parameter "infoGroupUuid"

    .prologue
    .line 938
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/data/Info;

    .line 939
    .local v2, info:Lcom/sonyericsson/home/data/Info;
    instance-of v3, v2, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sonyericsson/home/data/InfoGroup;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 940
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    check-cast v2, Lcom/sonyericsson/home/data/InfoGroup;

    .end local v2           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    :cond_1
    return-void
.end method

.method public preCacheShortcuts(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 748
    .local p1, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/Info;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/Info;

    .line 749
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    instance-of v2, v1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 750
    invoke-direct {p0, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->loadResource(Lcom/sonyericsson/home/data/Info;)V

    goto :goto_0

    .line 753
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    return-void
.end method

.method public prioritizeResource(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 447
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPrioritizedResources:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public registerCacheCallback(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;)V
    .locals 6
    .parameter "info"
    .parameter "callback"

    .prologue
    .line 666
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v2

    .line 668
    .local v2, value:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v2, :cond_0

    .line 669
    iget-object v3, v2, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v4, v2, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    iget-object v5, v2, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    invoke-interface {p2, p1, v3, v4, v5}, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;->cacheCallback(Lcom/sonyericsson/home/data/Info;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 695
    :goto_0
    return-void

    .line 670
    :cond_0
    instance-of v3, p1, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v3, :cond_1

    .line 672
    new-instance v2, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    .end local v2           #value:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    invoke-direct {v2}, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;-><init>()V

    .line 673
    .restart local v2       #value:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mFolderDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v3, v2, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 674
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sonyericsson/home/data/InfoGroup;->getLabel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    .line 675
    iget-object v3, v2, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v4, v2, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    iget-object v5, v2, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    invoke-interface {p2, p1, v3, v4, v5}, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;->cacheCallback(Lcom/sonyericsson/home/data/Info;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 678
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->loadResource(Lcom/sonyericsson/home/data/Info;)V

    goto :goto_0

    .line 685
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 687
    .local v1, callbackList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;>;"
    if-nez v1, :cond_2

    .line 688
    new-instance v1, Ljava/util/LinkedList;

    .end local v1           #callbackList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 691
    .restart local v1       #callbackList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;>;"
    :cond_2
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public releaseNonRetainedObjects()V
    .locals 1

    .prologue
    .line 901
    invoke-direct {p0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->unbindDrawables()V

    .line 902
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 903
    return-void
.end method

.method public remove(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    return-void
.end method
