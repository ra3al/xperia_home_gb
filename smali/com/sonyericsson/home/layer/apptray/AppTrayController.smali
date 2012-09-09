.class public Lcom/sonyericsson/home/layer/apptray/AppTrayController;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;
    }
.end annotation


# static fields
.field private static final APPTRAY_FIRST_NUDGE_TRIGGER:I = 0x3

.field private static final APPTRAY_PREFERENCES:Ljava/lang/String; = "home_apptray"

.field private static final APPTRAY_SECOND_NUDGE_TRIGGER:I = 0x4

.field private static final CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri; = null

.field private static final PREFERENCE_APPTRAY_COUNTER:Ljava/lang/String; = "preference_apptray_counter"

.field private static final PREFERENCE_APPTRAY_SHORTCUT_CREATED:Ljava/lang/String; = "preference_apptray_shortcut_created"

.field private static final PREFERENCE_APPTRAY_SORT_ORDER:Ljava/lang/String; = "preference_apptray_sort_order"

.field private static final PRODUCT_DEFAULT_SETTINGS_FILE:Ljava/lang/String; = "/etc/customization/settings/com/sonyericsson/home/default_settings_apptray.xml"

.field private static final SHORTCUT_HINT_ADDED_DURATION:I = 0x3e8

.field public static final SORT_ALPHABETICAL:I = 0x1

.field public static final SORT_FREE:I = 0x0

.field public static final SORT_MOSTUSED:I = 0x2

.field public static final SORT_RECENTLYINSTALLED:I = 0x3

.field private static final STORAGE_ENTITY_NAME:Ljava/lang/String; = "apptray"

.field private static final STORAGE_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final STORAGE_VERSION_VALUE:I = 0x1

.field static final TAG:Ljava/lang/String; = "AppTrayController"

.field private static final VELOCITY_THRESHOLD:I = 0x258


# instance fields
.field private final mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

.field private mAlphabeticalComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

.field private mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

.field private final mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

.field private mAppTrayStartCounter:I

.field private mAppTrayView:Landroid/view/View;

.field private mCloseAnim:Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;

.field private final mControls:Landroid/view/ViewGroup;

.field private mControlsHideAnim:Landroid/view/animation/Animation;

.field private mControlsShowAnim:Landroid/view/animation/Animation;

.field private mCurrentComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomizationDoneSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

.field protected mDisableDuringSortDialog:Z

.field private mDisabledWhileClosing:Z

.field private final mEditButton:Landroid/widget/ImageView;

.field private mGrid:Lcom/sonyericsson/grid/Grid;

.field private mIsPackageSyncOngoing:Z

.field private mIsRtl:Z

.field private mMostUsedComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

.field private mOpenAnim:Landroid/view/animation/Animation;

.field private mOrientationLandscape:Z

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

.field private mPaneView:Lcom/sonyericsson/paneview/PaneView;

.field private mPendingPackageSyncCounter:I

.field private mReadHandle:Ljava/lang/Object;

.field private mRecentlyInstalledComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRendererFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

.field private mResourceLoaderUtil:Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

.field private mSavedAppTrayStartCounter:I

.field private mShortcutCreatedByLongPress:Z

.field private final mSortButton:Landroid/widget/ImageView;

.field private mSyncCompleted:Z

.field private final mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

.field private mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    const-string v0, "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.home/custom_settings_apptray.xml"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewStub;Landroid/view/ViewGroup;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/statistics/Statistics;)V
    .locals 15
    .parameter "context"
    .parameter "appTrayViewStub"
    .parameter "controls"
    .parameter "transferHandler"
    .parameter "packageLoader"
    .parameter "resourceLoader"
    .parameter "adapterHelper"
    .parameter "statistics"

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/4 v12, 0x0

    iput v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    .line 266
    const/4 v12, 0x0

    iput v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPendingPackageSyncCounter:I

    .line 269
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsPackageSyncOngoing:Z

    .line 276
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mShortcutCreatedByLongPress:Z

    .line 286
    new-instance v12, Lcom/sonyericsson/home/layer/apptray/AppTrayController$1;

    invoke-direct {v12, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$1;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    .line 302
    new-instance v12, Lcom/sonyericsson/home/layer/apptray/AppTrayController$2;

    invoke-direct {v12, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$2;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCustomizationDoneSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    .line 327
    move-object/from16 v0, p1

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    .line 328
    move-object/from16 v0, p5

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 329
    move-object/from16 v0, p2

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    .line 330
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 332
    new-instance v12, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    move-object v0, v12

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mResourceLoaderUtil:Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    .line 334
    move-object v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createComparators(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/statistics/Statistics;)V

    .line 337
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090002

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 338
    .local v11, rows:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090003

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 339
    .local v7, cols:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0016

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 341
    .local v6, cellWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0017

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 343
    .local v5, cellHeight:I
    new-instance v9, Lcom/sonyericsson/grid/GridSize;

    invoke-direct {v9}, Lcom/sonyericsson/grid/GridSize;-><init>()V

    .line 344
    .local v9, gridSize:Lcom/sonyericsson/grid/GridSize;
    iput v11, v9, Lcom/sonyericsson/grid/GridSize;->rows:I

    .line 345
    iput v7, v9, Lcom/sonyericsson/grid/GridSize;->cols:I

    .line 346
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setupGrid()V

    .line 349
    new-instance v12, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-direct {v12}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;-><init>()V

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    .line 350
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    new-instance v13, Lcom/sonyericsson/util/PagedList;

    mul-int v14, v11, v7

    invoke-direct {v13, v14}, Lcom/sonyericsson/util/PagedList;-><init>(I)V

    invoke-virtual {v12, v13}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->setModel(Lcom/sonyericsson/util/PagedList;)V

    .line 353
    new-instance v12, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    iget-object v13, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    iget-object v14, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mGrid:Lcom/sonyericsson/grid/Grid;

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, p7

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/grid/Grid;)V

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    .line 355
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 356
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->setLandscapeMode(Z)V

    .line 360
    :cond_0
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/sonyericsson/home/bidi/Utils;->isRtlAlphabet(Landroid/content/Context;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsRtl:Z

    .line 361
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    iget-boolean v13, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsRtl:Z

    invoke-virtual {v12, v13}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->setDoMirror(Z)V

    .line 364
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    const-string v13, "home_apptray"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 367
    .local v10, prefs:Landroid/content/SharedPreferences;
    const-string v12, "preference_apptray_counter"

    iget v13, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    .line 370
    iget v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    iput v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSavedAppTrayStartCounter:I

    .line 371
    const-string v12, "preference_apptray_shortcut_created"

    iget-boolean v13, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mShortcutCreatedByLongPress:Z

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mShortcutCreatedByLongPress:Z

    .line 375
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v12, 0x4020

    invoke-direct {v4, v12}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 376
    .local v4, accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v12, 0x4020

    invoke-direct {v8, v12}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 377
    .local v8, decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;
    const v12, 0x7f040001

    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v12

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCloseAnim:Landroid/view/animation/Animation;

    .line 378
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCloseAnim:Landroid/view/animation/Animation;

    invoke-virtual {v12, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 379
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCloseAnim:Landroid/view/animation/Animation;

    new-instance v13, Lcom/sonyericsson/home/layer/apptray/AppTrayController$3;

    invoke-direct {v13, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$3;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    invoke-virtual {v12, v13}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 393
    const v12, 0x7f040004

    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v12

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mOpenAnim:Landroid/view/animation/Animation;

    .line 394
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mOpenAnim:Landroid/view/animation/Animation;

    invoke-virtual {v12, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 395
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mOpenAnim:Landroid/view/animation/Animation;

    new-instance v13, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/content/Context;)V

    invoke-virtual {v12, v13}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 422
    const v12, 0x7f040002

    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v12

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControlsHideAnim:Landroid/view/animation/Animation;

    .line 423
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControlsHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v12, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 424
    const v12, 0x7f040003

    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v12

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControlsShowAnim:Landroid/view/animation/Animation;

    .line 425
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControlsShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v12, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 427
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createOnPackageUpdateListener()Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    move-result-object v12

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 428
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v13, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v12, v13}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 431
    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControls:Landroid/view/ViewGroup;

    .line 432
    const v12, 0x7f0e000c

    move-object/from16 v0, p3

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    .line 433
    const v12, 0x7f0e000b

    move-object/from16 v0, p3

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    .line 434
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    new-instance v13, Lcom/sonyericsson/home/layer/apptray/AppTrayController$5;

    invoke-direct {v13, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$5;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    new-instance v13, Lcom/sonyericsson/home/layer/apptray/AppTrayController$6;

    invoke-direct {v13, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$6;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    return-void
.end method

.method private GetAutoHidePaginator()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, bRes:Z
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 41
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    const-string v2, "com.sonyericsson.home_preferences"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "autohideAppTrayPaginatorPort"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 47
    :goto_0
    return v0

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    const-string v2, "com.sonyericsson.home_preferences"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "autohideAppTrayPaginatorLand"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/home/layer/apptray/AppTrayController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->saveSortOrder(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCustomizationDoneSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/util/PagedList;Lcom/sonyericsson/home/data/SyncHelper$Syncable;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->syncAndSetup(Lcom/sonyericsson/util/PagedList;Lcom/sonyericsson/home/data/SyncHelper$Syncable;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->initializePackageSync()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->finalizePackageSync()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/ResourceLoaderUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mResourceLoaderUtil:Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->onCloseEnd(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->writeToStorage()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/PaneIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    return v0
.end method

.method static synthetic access$308(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mShortcutCreatedByLongPress:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mShortcutCreatedByLongPress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/widget/Toast;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->showToast(Landroid/widget/Toast;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisabledWhileClosing:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->exitEditMode()V

    return-void
.end method

.method static synthetic access$902(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mReadHandle:Ljava/lang/Object;

    return-object p1
.end method

.method private createAppTrayEditor(Landroid/content/Context;Lcom/sonyericsson/home/transfer/TransferHandler;Landroid/view/View;Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/grid/Grid;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;
    .locals 11
    .parameter "context"
    .parameter "transferHandler"
    .parameter "view"
    .parameter "modelManager"
    .parameter "grid"

    .prologue
    .line 1159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020044

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1161
    .local v10, uninstallIcon:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 1163
    .local v9, badgeOffset:I
    new-instance v1, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-direct {v1, v2, v3, v10, v9}, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;Lcom/sonyericsson/home/resourceload/PackageLoader;Landroid/graphics/Bitmap;I)V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRendererFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    .line 1165
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRendererFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    iget-object v7, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    iget-object v8, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/grid/Grid;Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    .line 1167
    .local v0, editor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;
    iget-boolean v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mOrientationLandscape:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->SetOrientation(Z)V

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->setCustomDPIsettings(Landroid/content/Context;)V

    new-instance v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$17;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$17;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->setEditorListener(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;)V

    .line 1197
    return-object v0
.end method

.method private createComparators(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/statistics/Statistics;)V
    .locals 1
    .parameter "resourceLoader"
    .parameter "statistics"

    .prologue
    .line 717
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAlphabeticalComparator:Ljava/util/Comparator;

    .line 726
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$9;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$9;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/statistics/Statistics;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mMostUsedComparator:Ljava/util/Comparator;

    .line 734
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/statistics/Statistics;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRecentlyInstalledComparator:Ljava/util/Comparator;

    .line 750
    return-void
.end method

.method private createDynamics(Landroid/content/Context;)Lcom/sonyericsson/util/SpringDynamics;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 1147
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1148
    .local v2, stiffness:Landroid/util/TypedValue;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1149
    .local v0, damping:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0b

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1151
    new-instance v1, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v1}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    .line 1152
    .local v1, dynamics:Lcom/sonyericsson/util/SpringDynamics;
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 1153
    return-object v1
.end method

.method private createOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 880
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$13;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$13;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    return-object v0
.end method

.method private createOnPackageUpdateListener()Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    .locals 1

    .prologue
    .line 1057
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    return-object v0
.end method

.method private createOnReadCompletedCallback()Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;
    .locals 1

    .prologue
    .line 931
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    return-object v0
.end method

.method private createPaneViewTouchListener()Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;
    .locals 1

    .prologue
    .line 898
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    return-object v0
.end method

.method private createScrollListener(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/paneview/PaneView$ScrollListener;
    .locals 1
    .parameter "paneIndicator"

    .prologue
    .line 866
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$12;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$12;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/layer/PaneIndicator;)V

    return-object v0
.end method

.method private exitEditMode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 794
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->isEditingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 795
    const-string v3, "AppTrayControler"

    const-string v4, "exitEditMode() called when editing already was disabled."

    invoke-static {v3, v4}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 800
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 801
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    if-eqz v3, :cond_1

    .line 802
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    invoke-interface {v3, v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onEditModeEnabled(Z)V

    .line 804
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-virtual {v3, v5, v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->enableEditing(ZZ)V

    .line 807
    const/4 v1, 0x0

    .line 808
    .local v1, emptyPanes:I
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    .line 809
    .local v0, currentPane:I
    const/4 v2, 0x0

    .local v2, pane:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 810
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->isPaneEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    :goto_1
    add-int/2addr v1, v3

    .line 809
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    .line 810
    goto :goto_1

    .line 814
    :cond_3
    if-eqz v1, :cond_4

    .line 817
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->offsetAllPanes(I)V

    .line 818
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    sub-int v4, v0, v1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    .line 819
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 820
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 821
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRendererFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 822
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->offsetAllPanes(I)V

    .line 826
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->removeEmptyPanes()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 827
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 828
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->writeToStorage()V

    .line 831
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setBackplate(Landroid/graphics/drawable/Drawable;)V

    .line 832
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    const v4, 0x7f020001

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 833
    return-void
.end method

.method private finalizePackageSync()V
    .locals 2

    .prologue
    .line 1123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsPackageSyncOngoing:Z

    .line 1124
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPendingPackageSyncCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPendingPackageSyncCounter:I

    .line 1125
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPendingPackageSyncCounter:I

    if-nez v0, :cond_0

    .line 1126
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->refreshModel()V

    .line 1128
    :cond_0
    return-void
.end method

.method private initializePackageSync()V
    .locals 1

    .prologue
    .line 1112
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsPackageSyncOngoing:Z

    if-nez v0, :cond_0

    .line 1113
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPendingPackageSyncCounter:I

    .line 1115
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsPackageSyncOngoing:Z

    .line 1116
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPendingPackageSyncCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPendingPackageSyncCounter:I

    .line 1117
    return-void
.end method

.method private onCloseEnd(Z)V
    .locals 1
    .parameter "animating"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onAppTrayClosed(Z)V

    .line 547
    :cond_0
    return-void
.end method

.method private refreshModel()V
    .locals 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->sort(Ljava/util/Comparator;)V

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->isEditingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1139
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->removeEmptyPanes()Z

    .line 1142
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->writeToStorage()V

    .line 1143
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 1144
    return-void
.end method

.method private saveNudgeData()V
    .locals 5

    .prologue
    .line 623
    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSavedAppTrayStartCounter:I

    const/4 v3, 0x5

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    iget v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSavedAppTrayStartCounter:I

    if-le v2, v3, :cond_0

    .line 625
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    const-string v3, "home_apptray"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 627
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 628
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "preference_apptray_counter"

    iget v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 629
    const-string v2, "preference_apptray_shortcut_created"

    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mShortcutCreatedByLongPress:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 630
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 631
    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    iput v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSavedAppTrayStartCounter:I

    .line 633
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private saveSortOrder(I)V
    .locals 5
    .parameter "sortMode"

    .prologue
    .line 1031
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    const-string v3, "home_apptray"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1033
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1034
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "preference_apptray_sort_order"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1035
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1036
    return-void
.end method

.method private setFreeSort()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 753
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->sort(Ljava/util/Comparator;)V

    .line 754
    iput-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 755
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 756
    return-void
.end method

.method private setUp()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 985
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    .line 988
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setupPaneIndicator(Landroid/content/Context;Landroid/view/View;)Lcom/sonyericsson/home/layer/PaneIndicator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    .line 991
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 992
    .local v10, res:Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/paneview/PaneView;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setupPaneMargin()V

    .line 993
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 994
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createPaneViewTouchListener()Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setPaneViewTouchListener(Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;)V

    .line 995
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createDynamics(Landroid/content/Context;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setPaneDynamics(Lcom/sonyericsson/util/Dynamics;)V

    .line 996
    const v0, 0x7f090009

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float v9, v0, v1

    .line 997
    .local v9, paneMargin:F
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v9}, Lcom/sonyericsson/paneview/PaneView;->setPaneMargin(F)V

    .line 998
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const v1, 0x7f020046

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setSelectedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 999
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const v1, 0x7f02000a

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setFocusedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1001
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const v1, 0x7f020031

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setBackplate(Landroid/graphics/drawable/Drawable;)V

    .line 1002
    const v0, 0x7f0a002f

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 1003
    .local v6, backPlateOffsetX:I
    const v0, 0x7f0a0030

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1004
    .local v7, backPlateWidth:I
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v6, v7}, Lcom/sonyericsson/paneview/PaneView;->setBackplateModifiers(II)V

    .line 1005
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setPreferExternalFocus(Z)V

    .line 1007
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int v1, v6, v7

    sub-int v8, v0, v1

    .line 1009
    .local v8, focusPaddingRight:I
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v6, v2, v8, v2}, Lcom/sonyericsson/paneview/PaneView;->setFocusPadding(IIII)V

    .line 1011
    .end local v8           #focusPaddingRight:I
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setAdapter(Lcom/sonyericsson/paneview/PaneAdapter;)V

    .line 1012
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-direct {p0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createScrollListener(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setScrollListener(Lcom/sonyericsson/paneview/PaneView$ScrollListener;)V

    .line 1013
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setVelocityThreshold(I)V

    .line 1016
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mGrid:Lcom/sonyericsson/grid/Grid;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createAppTrayEditor(Landroid/content/Context;Lcom/sonyericsson/home/transfer/TransferHandler;Landroid/view/View;Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/grid/Grid;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    .line 1020
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    iget-boolean v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsRtl:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->setDoMirror(Z)V

    .line 1021
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    iget-boolean v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsRtl:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/PaneIndicator;->setDoMirror(Z)V

    .line 1022
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-boolean v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsRtl:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setDoMirror(Z)V

    .line 1025
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 1026
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    .line 1027
    return-void
.end method

.method private setupGrid()V
    .locals 20

    .prologue
    .line 53
    new-instance v12, Lcom/sonyericsson/grid/GridSize;

    invoke-direct {v12}, Lcom/sonyericsson/grid/GridSize;-><init>()V

    .line 54
    .local v12, lGridSize:Lcom/sonyericsson/grid/GridSize;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "com.sonyericsson.home_preferences"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "numAppTrayCols"

    const-string v19, "4"

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v12, Lcom/sonyericsson/grid/GridSize;->cols:I

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "com.sonyericsson.home_preferences"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "numAppTrayRows"

    const-string v19, "4"

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v12, Lcom/sonyericsson/grid/GridSize;->rows:I

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "com.sonyericsson.home_preferences"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "autohideAppTrayPaginatorPort"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 58
    .local v7, bAutoHidePaginatorPort:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "com.sonyericsson.home_preferences"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "autohideAppTrayPaginatorLand"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 60
    .local v6, bAutoHidePaginatorLand:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "window"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 61
    .local v16, wm:Landroid/view/WindowManager;
    new-instance v13, Landroid/util/DisplayMetrics;

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    .line 62
    .local v13, metrics:Landroid/util/DisplayMetrics;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 63
    iget v8, v13, Landroid/util/DisplayMetrics;->density:F

    .line 65
    .local v8, density:F
    iget v9, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 66
    .local v9, desktopHeightPx:I
    iget v10, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 68
    .local v10, desktopWidthPx:I
    const/high16 v17, 0x41c8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->toPixelsRound(FF)I

    move-result v14

    .line 69
    .local v14, statusBarHeight:I
    if-eqz v7, :cond_0

    const/4 v5, 0x0

    .line 70
    .local v5, appTrayPaginatorHeightPort:I
    :goto_0
    if-eqz v6, :cond_1

    const/4 v4, 0x0

    .line 77
    .local v4, appTrayPaginatorHeightLand:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 79
    const/high16 v17, 0x42b0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->toPixelsRound(FF)I

    move-result v17

    sub-int v17, v9, v17

    sub-int v17, v17, v5

    sub-int v11, v17, v14

    .line 80
    .local v11, height:I
    const/high16 v17, 0x4180

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->toPixelsRound(FF)I

    move-result v17

    sub-int v15, v10, v17

    .line 82
    .local v15, width:I
    iget v0, v12, Lcom/sonyericsson/grid/GridSize;->rows:I

    move/from16 v17, v0

    div-int v2, v11, v17

    .line 83
    .local v2, CellHeight:I
    iget v0, v12, Lcom/sonyericsson/grid/GridSize;->cols:I

    move/from16 v17, v0

    div-int v3, v15, v17

    .line 93
    .local v3, CellWidth:I
    :goto_2
    new-instance v17, Lcom/sonyericsson/grid/Grid;

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v2, v12}, Lcom/sonyericsson/grid/Grid;-><init>(IILcom/sonyericsson/grid/GridSize;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mGrid:Lcom/sonyericsson/grid/Grid;

    .line 94
    return-void

    .line 69
    .end local v2           #CellHeight:I
    .end local v3           #CellWidth:I
    .end local v4           #appTrayPaginatorHeightLand:I
    .end local v5           #appTrayPaginatorHeightPort:I
    .end local v11           #height:I
    .end local v15           #width:I
    :cond_0
    const/high16 v17, 0x41f0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->toPixelsRound(FF)I

    move-result v5

    goto :goto_0

    .line 70
    .restart local v5       #appTrayPaginatorHeightPort:I
    :cond_1
    const/high16 v17, 0x41f0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->toPixelsRound(FF)I

    move-result v4

    goto :goto_1

    .line 87
    .restart local v4       #appTrayPaginatorHeightLand:I
    :cond_2
    const/high16 v17, 0x4180

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->toPixelsRound(FF)I

    move-result v17

    sub-int v17, v9, v17

    sub-int v17, v17, v4

    sub-int v11, v17, v14

    .line 88
    .restart local v11       #height:I
    const/high16 v17, 0x4290

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->toPixelsRound(FF)I

    move-result v17

    sub-int v15, v10, v17

    .line 90
    .restart local v15       #width:I
    iget v0, v12, Lcom/sonyericsson/grid/GridSize;->rows:I

    move/from16 v17, v0

    div-int v2, v11, v17

    .line 91
    .restart local v2       #CellHeight:I
    iget v0, v12, Lcom/sonyericsson/grid/GridSize;->cols:I

    move/from16 v17, v0

    div-int v3, v15, v17

    .restart local v3       #CellWidth:I
    goto :goto_2
.end method

.method private setupPaneIndicator(Landroid/content/Context;Landroid/view/View;)Lcom/sonyericsson/home/layer/PaneIndicator;
    .locals 8
    .parameter "context"
    .parameter "appTrayView"

    .prologue
    .line 836
    const v5, 0x7f0e0008

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/layer/PaneIndicator;

    .line 838
    .local v3, paneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 839
    .local v1, indicatorSize:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0004

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 840
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020014

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 842
    .local v2, leftArrow:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020015

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 844
    .local v4, rightArrow:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    invoke-virtual {v3, v5, v2, v4}, Lcom/sonyericsson/home/layer/PaneIndicator;->setAppearance(FLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 846
    iget-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->GetAutoHidePaginator()Z

    move-result v0

    .line 848
    .local v0, fadeOnTimeout:Z
    if-eqz v0, :cond_0

    .line 849
    new-instance v5, Lcom/sonyericsson/home/layer/apptray/AppTrayController$11;

    invoke-direct {v5, p0, v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$11;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/layer/PaneIndicator;)V

    invoke-virtual {v3, v5}, Lcom/sonyericsson/home/layer/PaneIndicator;->setOnInactiveTimeoutListener(Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;)V

    .line 856
    :cond_0
    return-object v3
.end method

.method private setupPaneMargin()V
    .locals 11

    .prologue
    const/high16 v10, 0x41f0

    const/4 v0, 0x0

    .line 98
    iget-object v7, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    const-string v8, "com.sonyericsson.home_preferences"

    invoke-virtual {v7, v8, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "autohideAppTrayPaginatorPort"

    invoke-interface {v7, v8, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 99
    .local v3, bAutoHidePaginatorPort:Z
    iget-object v7, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    const-string v8, "com.sonyericsson.home_preferences"

    invoke-virtual {v7, v8, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "autohideAppTrayPaginatorLand"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 101
    .local v2, bAutoHidePaginatorLand:Z
    iget-object v7, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 102
    .local v6, wm:Landroid/view/WindowManager;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 103
    .local v5, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 104
    iget v4, v5, Landroid/util/DisplayMetrics;->density:F

    .line 106
    .local v4, density:F
    if-eqz v3, :cond_0

    move v1, v0

    .line 107
    .local v1, appTrayPaginatorHeightPort:I
    :goto_0
    if-eqz v2, :cond_1

    .line 109
    .local v0, appTrayPaginatorHeightLand:I
    :goto_1
    iget-object v7, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    .line 111
    iget-object v7, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v7}, Lcom/sonyericsson/paneview/PaneView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 118
    :goto_2
    return-void

    .line 106
    .end local v0           #appTrayPaginatorHeightLand:I
    .end local v1           #appTrayPaginatorHeightPort:I
    :cond_0
    invoke-direct {p0, v4, v10}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->toPixelsRound(FF)I

    move-result v1

    goto :goto_0

    .line 107
    .restart local v1       #appTrayPaginatorHeightPort:I
    :cond_1
    invoke-direct {p0, v4, v10}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->toPixelsRound(FF)I

    move-result v0

    goto :goto_1

    .line 115
    .restart local v0       #appTrayPaginatorHeightLand:I
    :cond_2
    iget-object v7, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v7}, Lcom/sonyericsson/paneview/PaneView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2
.end method

.method private showToast(Landroid/widget/Toast;I)V
    .locals 2
    .parameter "toast"
    .parameter "addedDuration"

    .prologue
    .line 460
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$7;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;ILandroid/widget/Toast;)V

    .line 485
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 486
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 487
    return-void
.end method

.method private syncAndSetup(Lcom/sonyericsson/util/PagedList;Lcom/sonyericsson/home/data/SyncHelper$Syncable;Z)V
    .locals 3
    .parameter
    .parameter "syncable"
    .parameter "forceWrite"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/util/PagedList",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;",
            "Lcom/sonyericsson/home/data/SyncHelper$Syncable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1039
    .local p1, model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->setModel(Lcom/sonyericsson/util/PagedList;)V

    .line 1040
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {p2, v1, v2}, Lcom/sonyericsson/home/data/SyncHelper;->sync(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Lcom/sonyericsson/home/resourceload/PackageLoader;)Z

    move-result v0

    .line 1043
    .local v0, modelChanged:Z
    invoke-virtual {p1}, Lcom/sonyericsson/util/PagedList;->removeGaps()V

    .line 1045
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setUp()V

    .line 1047
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncCompleted:Z

    .line 1048
    if-nez p3, :cond_0

    if-eqz v0, :cond_1

    .line 1049
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->writeToStorage()V

    .line 1051
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    if-eqz v1, :cond_2

    .line 1052
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onSyncCompleted()V

    .line 1054
    :cond_2
    return-void
.end method

.method private toPixelsRound(FF)I
    .locals 2
    .parameter "density"
    .parameter "DipsVal"

    .prologue
    .line 121
    mul-float v0, p2, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private writeToStorage()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1201
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncCompleted:Z

    if-eqz v2, :cond_0

    .line 1202
    new-instance v1, Lcom/sonyericsson/storage/Root;

    const-string v2, "apptray"

    invoke-direct {v1, v2}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 1203
    .local v1, root:Lcom/sonyericsson/storage/Root;
    const-string v2, "version"

    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/storage/Root;->put(Ljava/lang/String;I)V

    .line 1204
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getModel()Lcom/sonyericsson/util/PagedList;

    move-result-object v0

    .line 1205
    .local v0, model:Lcom/sonyericsson/util/PagedList;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 1206
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v4}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Z)V

    .line 1208
    .end local v0           #model:Lcom/sonyericsson/util/PagedList;
    .end local v1           #root:Lcom/sonyericsson/storage/Root;
    :cond_0
    return-void
.end method


# virtual methods
.method public SetOrientation(Z)V
    .locals 3
    .parameter "bIsLandscape"

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mOrientationLandscape:Z

    .line 13
    const-string v0, "AppTrayController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Orientation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void
.end method

.method public close(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 599
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 600
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->exitEditMode()V

    .line 604
    :cond_0
    iput-boolean v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisabledWhileClosing:Z

    .line 605
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setTouchLocked(Z)V

    .line 606
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControls:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 609
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->saveNudgeData()V

    .line 611
    if-eqz p1, :cond_2

    .line 612
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControls:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControlsHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 613
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCloseAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 618
    :cond_1
    :goto_0
    return-void

    .line 615
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->onCloseEnd(Z)V

    goto :goto_0
.end method

.method public enterEditMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 760
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->isEditingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    const-string v1, "AppTrayControler"

    const-string v2, "forceEditMode() called when editing already was enabled."

    invoke-static {v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    if-nez v1, :cond_1

    .line 768
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->addEmptyPane()V

    .line 769
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->notifyObservers()V

    .line 772
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 773
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 775
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    if-eqz v1, :cond_4

    move v0, v4

    .line 776
    .local v0, onlyUninstall:Z
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-virtual {v1, v4, v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->enableEditing(ZZ)V

    .line 777
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->setBackplate(Landroid/graphics/drawable/Drawable;)V

    .line 778
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 780
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    if-eqz v1, :cond_2

    .line 781
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    invoke-interface {v1, v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onEditModeEnabled(Z)V

    .line 784
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->hasEnabledItems(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    if-eqz v1, :cond_3

    .line 788
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onNoUninstallableItems()V

    .line 790
    :cond_3
    return-void

    .end local v0           #onlyUninstall:Z
    :cond_4
    move v0, v3

    .line 775
    goto :goto_0
.end method

.method public getAppTrayStartCounter()I
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    return v0
.end method

.method public getButtonsDisabled()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisableDuringSortDialog:Z

    return v0
.end method

.method public getCurrentPane()I
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    return v0
.end method

.method public getCurrentSorting()I
    .locals 2

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAlphabeticalComparator:Ljava/util/Comparator;

    if-ne v0, v1, :cond_0

    .line 1216
    const/4 v0, 0x1

    .line 1222
    :goto_0
    return v0

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mMostUsedComparator:Ljava/util/Comparator;

    if-ne v0, v1, :cond_1

    .line 1218
    const/4 v0, 0x2

    goto :goto_0

    .line 1219
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRecentlyInstalledComparator:Ljava/util/Comparator;

    if-ne v0, v1, :cond_2

    .line 1220
    const/4 v0, 0x3

    goto :goto_0

    .line 1222
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getModel()Lcom/sonyericsson/util/PagedList;

    move-result-object v0

    return-object v0
.end method

.method public isEditing()Z
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->isEditingEnabled()Z

    move-result v0

    .line 569
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSyncCompleted()Z
    .locals 1

    .prologue
    .line 1211
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncCompleted:Z

    return v0
.end method

.method public loadStoredModel()V
    .locals 3

    .prologue
    .line 911
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    const-string v1, "apptray"

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createOnReadCompletedCallback()Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/storage/Storage;->readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mReadHandle:Ljava/lang/Object;

    .line 912
    return-void
.end method

.method public moveToLeftPane()V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->moveToLeftPane()Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 705
    :cond_0
    return-void
.end method

.method public moveToPane(I)V
    .locals 2
    .parameter "pane"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    .line 691
    return-void
.end method

.method public moveToRightPane()V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->moveToRightPane()Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 698
    :cond_0
    return-void
.end method

.method public notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 1242
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1231
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isSyncCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1232
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->exitEditMode()V

    .line 1233
    const/4 v0, 0x1

    .line 1236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 582
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->removeOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 585
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mReadHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mReadHandle:Ljava/lang/Object;

    invoke-static {v0}, Lcom/sonyericsson/storage/Storage;->cancelReadRoot(Ljava/lang/Object;)V

    .line 588
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncCompleted:Z

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 590
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setScrollListener(Lcom/sonyericsson/paneview/PaneView$ScrollListener;)V

    .line 591
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/PaneIndicator;->setOnInactiveTimeoutListener(Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;)V

    .line 592
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks()V

    .line 594
    :cond_1
    iput-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    .line 595
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->saveNudgeData()V

    .line 596
    return-void
.end method

.method public open(Z)V
    .locals 7
    .parameter "animate"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 636
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    .line 637
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/paneview/PaneView;->setTouchLocked(Z)V

    .line 638
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 639
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 640
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControls:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 641
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 643
    iput-boolean v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisabledWhileClosing:Z

    .line 645
    if-eqz p1, :cond_3

    .line 646
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControls:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControlsShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 647
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mOpenAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 655
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    const-string v4, "home_apptray"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 657
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preference_apptray_sort_order"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 660
    .local v2, sortMode:I
    if-nez v2, :cond_4

    .line 661
    iput-object v6, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 662
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v4, 0x7f02004c

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 675
    :cond_1
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->sort(Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    :goto_2
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->clearAllRenderers()V

    .line 682
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v3, v6}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 683
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 684
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRendererFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 687
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    .end local v2           #sortMode:I
    :cond_2
    return-void

    .line 649
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    if-eqz v3, :cond_0

    .line 650
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    invoke-interface {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onAppTrayOpened()V

    goto :goto_0

    .line 663
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    .restart local v2       #sortMode:I
    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 664
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAlphabeticalComparator:Ljava/util/Comparator;

    iput-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 665
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v4, 0x7f02004b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 666
    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 667
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mMostUsedComparator:Ljava/util/Comparator;

    iput-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 668
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v4, 0x7f02004e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 669
    :cond_6
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 670
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRecentlyInstalledComparator:Ljava/util/Comparator;

    iput-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 671
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v4, 0x7f02004d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 676
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 677
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setFreeSort()V

    .line 678
    const-string v3, "apptray"

    const-string v4, "Sort failed"

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public setAppTrayControllerListener(Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 554
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    .line 555
    return-void
.end method

.method public setButtonsDisabled(Z)V
    .locals 0
    .parameter "disable"

    .prologue
    .line 578
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisableDuringSortDialog:Z

    .line 579
    return-void
.end method

.method public setOriginRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->setOriginRect(Landroid/graphics/Rect;)V

    .line 551
    return-void
.end method

.method public setRetainedModel(Ljava/lang/Object;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 923
    check-cast p1, Lcom/sonyericsson/util/PagedList;

    .end local p1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->syncAndSetup(Lcom/sonyericsson/util/PagedList;Lcom/sonyericsson/home/data/SyncHelper$Syncable;Z)V

    .line 924
    return-void
.end method

.method public sort(I)V
    .locals 6
    .parameter "sortMode"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 490
    const/4 v1, 0x0

    .line 491
    .local v1, sameSort:Z
    if-nez p1, :cond_3

    .line 492
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    if-nez v2, :cond_0

    .line 493
    const/4 v1, 0x1

    .line 495
    :cond_0
    iput-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 496
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v3, 0x7f02004c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 517
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 518
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->offsetAllPanes(I)V

    .line 519
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    .line 520
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 521
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 522
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRendererFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 526
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->sort(Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->offsetAllPanes(I)V

    .line 532
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 535
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->saveSortOrder(I)V

    .line 536
    iput-boolean v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisableDuringSortDialog:Z

    .line 537
    return-void

    .line 497
    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    .line 498
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAlphabeticalComparator:Ljava/util/Comparator;

    if-ne v2, v3, :cond_4

    .line 499
    const/4 v1, 0x1

    .line 501
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAlphabeticalComparator:Ljava/util/Comparator;

    iput-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 502
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v3, 0x7f02004b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 503
    :cond_5
    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    .line 504
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mMostUsedComparator:Ljava/util/Comparator;

    if-ne v2, v3, :cond_6

    .line 505
    const/4 v1, 0x1

    .line 507
    :cond_6
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mMostUsedComparator:Ljava/util/Comparator;

    iput-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 508
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v3, 0x7f02004e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 509
    :cond_7
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 510
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRecentlyInstalledComparator:Ljava/util/Comparator;

    if-ne v2, v3, :cond_8

    .line 511
    const/4 v1, 0x1

    .line 513
    :cond_8
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRecentlyInstalledComparator:Ljava/util/Comparator;

    iput-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 514
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v3, 0x7f02004d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 527
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 528
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setFreeSort()V

    .line 529
    const-string v2, "apptray"

    const-string v3, "Sort failed"

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public sortFinished()V
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisableDuringSortDialog:Z

    .line 541
    return-void
.end method
