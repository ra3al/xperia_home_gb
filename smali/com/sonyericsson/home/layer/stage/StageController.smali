.class public Lcom/sonyericsson/home/layer/stage/StageController;
.super Ljava/lang/Object;
.source "StageController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;
    }
.end annotation


# static fields
.field private static final CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri; = null

.field private static final PRODUCT_DEFAULT_SETTINGS_FILE:Ljava/lang/String; = "/etc/customization/settings/com/sonyericsson/home/default_settings_stage.xml"

.field private static final STORAGE_ENTITY_NAME:Ljava/lang/String; = "stage"

.field private static final STORAGE_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final STORAGE_VERSION_VALUE:I = 0x1

.field private static sUxpStageResId:I

.field private static sUxpStageResQueried:Z


# instance fields
.field private mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

.field private final mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

.field private mCanvas:Landroid/graphics/Canvas;

.field private final mContext:Landroid/content/Context;

.field private mCreatingFolder:Z

.field private mDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

.field private mFakeStage:Landroid/widget/ImageView;

.field private mFakeStageCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mHideAnim:Landroid/view/animation/Animation;

.field private mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

.field private mHintLocation:I

.field private mHintView:Lcom/sonyericsson/home/layer/HintView;

.field private mHinting:Z

.field private mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

.field private mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mListener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

.field private mLoadCompleted:Z

.field private final mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

.field private mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

.field private mOrientationLandscape:Z

.field private final mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mPaneView:Lcom/sonyericsson/paneview/PaneView;

.field protected mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

.field private mPickedUpItemPosition:I

.field private mReadHandle:Ljava/lang/Object;

.field private mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

.field private mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

.field private mSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

.field private mShowAnim:Landroid/view/animation/Animation;

.field private mShowAnimationRunning:Z

.field private mStageBreadth:I

.field private mStageCellHeight:I

.field private mStageCellWidth:I

.field private mStageView:Landroid/view/View;

.field private final mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

.field private final mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

.field private mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

.field private mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    const-string v0, "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.home/custom_settings_stage.xml"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/home/layer/stage/StageController;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    .line 129
    sput v1, Lcom/sonyericsson/home/layer/stage/StageController;->sUxpStageResId:I

    .line 132
    sput-boolean v1, Lcom/sonyericsson/home/layer/stage/StageController;->sUxpStageResQueried:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/ImageView;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/layer/InfoGroupManager;)V
    .locals 7
    .parameter "context"
    .parameter "stageViewStub"
    .parameter "fakeStage"
    .parameter "transferHandler"
    .parameter "packageLoader"
    .parameter "resourceLoader"
    .parameter "adapterHelper"
    .parameter "infoGroupManager"

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mLoadCompleted:Z

    .line 214
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCanvas:Landroid/graphics/Canvas;

    .line 216
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$1;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    .line 231
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$2;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    .line 449
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$6;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$6;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 484
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$7;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$7;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 493
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$8;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$8;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 525
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$9;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$9;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 705
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$10;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$10;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 254
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    .line 255
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    .line 256
    iput-object p4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 257
    iput-object p5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 258
    iput-object p6, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 259
    iput-object p8, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 260
    iput-object p7, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    .line 261
    iput-object p2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    .line 262
    iput-object p3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    .line 264
    new-instance v3, Lcom/sonyericsson/home/layer/HintInfo;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sonyericsson/home/layer/HintInfo;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    .line 267
    sget-boolean v3, Lcom/sonyericsson/home/layer/stage/StageController;->sUxpStageResQueried:Z

    if-nez v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "semc_home_stage_background"

    const-string v5, "drawable"

    const-string v6, "com.sonyericsson.uxp"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/sonyericsson/home/layer/stage/StageController;->sUxpStageResId:I

    .line 270
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sonyericsson/home/layer/stage/StageController;->sUxpStageResQueried:Z

    .line 273
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    invoke-virtual {p8, v3}, Lcom/sonyericsson/home/layer/InfoGroupManager;->registerInfoGroupListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;)V

    .line 276
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->setStageCellDimens()V

    .line 277
    .local v1, cellWidth:I
    iget v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageCellWidth:I

    .line 278
    .local v0, cellHeight:I
    iget v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageCellHeight:I

    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageModelManager;

    iget-boolean v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    invoke-direct {v3, v4, v1, v0}, Lcom/sonyericsson/home/layer/stage/StageModelManager;-><init>(ZII)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    .line 280
    const v3, 0x7f0a0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageBreadth:I

    .line 282
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 283
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageRendererFactory;

    invoke-direct {v3}, Lcom/sonyericsson/home/layer/stage/StageRendererFactory;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    .line 284
    return-void

    .line 254
    .end local v0           #cellHeight:I
    .end local v1           #cellWidth:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mListener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/layer/stage/StageController;Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/stage/StageController;->syncAndSetup(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/layer/stage/StageController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnimationRunning:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnimationRunning:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/home/layer/stage/StageController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpItemPosition:I

    return v0
.end method

.method static synthetic access$1502(Lcom/sonyericsson/home/layer/stage/StageController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpItemPosition:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/transfer/TransferSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/transfer/TransferHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/home/layer/stage/StageController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHinting:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHinting:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/HintInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/home/layer/stage/StageController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintLocation:I

    return v0
.end method

.method static synthetic access$2102(Lcom/sonyericsson/home/layer/stage/StageController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintLocation:I

    return p1
.end method

.method static synthetic access$2200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/HintView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintView:Lcom/sonyericsson/home/layer/HintView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sonyericsson/home/layer/stage/StageController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCreatingFolder:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/home/layer/stage/StageController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->finishCreateFolder()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/stage/StageController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->writeToStorage()V

    return-void
.end method

.method static synthetic access$402(Lcom/sonyericsson/home/layer/stage/StageController;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mReadHandle:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/InfoGroupManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/sonyericsson/home/layer/stage/StageController;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/resourceload/ResourceLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    return-object v0
.end method

.method private addInfo(Lcom/sonyericsson/home/data/Info;I)Z
    .locals 2
    .parameter "info"
    .parameter "stageLocation"

    .prologue
    .line 807
    const/4 v0, 0x0

    .line 810
    .local v0, itemAdded:Z
    if-ltz p2, :cond_0

    const/4 v1, 0x4

    if-gt p2, v1, :cond_0

    .line 811
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->addItem(Lcom/sonyericsson/home/data/Info;I)Z

    move-result v0

    .line 815
    :cond_0
    if-eqz v0, :cond_1

    .line 816
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->writeToStorage()V

    .line 817
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 820
    :cond_1
    return v0
.end method

.method private createOnReadCompletedCallback()Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;
    .locals 1

    .prologue
    .line 287
    new-instance v0, Lcom/sonyericsson/home/layer/stage/StageController$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/stage/StageController$3;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    return-object v0
.end method

.method private finishCreateFolder()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 967
    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

    .line 968
    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    .line 969
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCreatingFolder:Z

    .line 970
    return-void
.end method

.method private getSnapshot()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 850
    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mLoadCompleted:Z

    if-nez v3, :cond_0

    move-object v3, v4

    .line 874
    :goto_0
    return-object v3

    .line 854
    :cond_0
    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageBreadth:I

    move v2, v3

    .line 855
    .local v2, stageWidth:I
    :goto_1
    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    move v1, v3

    .line 857
    .local v1, stageHeight:I
    :goto_2
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStageCache:Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStageCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    move-object v0, v3

    .line 859
    .local v0, stageBitmap:Landroid/graphics/Bitmap;
    :goto_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v1, :cond_5

    .line 861
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 862
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStageCache:Ljava/lang/ref/SoftReference;

    .line 867
    :goto_4
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 868
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 869
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCanvas:Landroid/graphics/Canvas;

    iget-boolean v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v4, v2, v4

    int-to-float v4, v4

    :goto_5
    iget-boolean v5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    if-eqz v5, :cond_7

    move v5, v6

    :goto_6
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 871
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 872
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    move-object v3, v0

    .line 874
    goto :goto_0

    .line 854
    .end local v0           #stageBitmap:Landroid/graphics/Bitmap;
    .end local v1           #stageHeight:I
    .end local v2           #stageWidth:I
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    move v2, v3

    goto :goto_1

    .line 855
    .restart local v2       #stageWidth:I
    :cond_3
    iget v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageBreadth:I

    move v1, v3

    goto :goto_2

    .restart local v1       #stageHeight:I
    :cond_4
    move-object v0, v4

    .line 857
    goto :goto_3

    .line 864
    .restart local v0       #stageBitmap:Landroid/graphics/Bitmap;
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_4

    :cond_6
    move v4, v6

    .line 869
    goto :goto_5

    :cond_7
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v5, v1, v5

    int-to-float v5, v5

    goto :goto_6
.end method

.method private setStageCellDimens()V
    .locals 10

    .prologue
    .line 19
    iget-object v8, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0014

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 20
    .local v4, origCellHeight:I
    iget-object v8, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0013

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 22
    .local v5, origCellWidth:I
    iget-object v8, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 23
    .local v7, wm:Landroid/view/WindowManager;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 24
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 25
    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 27
    .local v0, density:F
    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 28
    .local v1, desktopHeightPx:I
    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 30
    .local v2, desktopWidthPx:I
    const/high16 v8, 0x41c8

    invoke-direct {p0, v0, v8}, Lcom/sonyericsson/home/layer/stage/StageController;->toPixelsRound(FF)I

    move-result v6

    .line 32
    .local v6, statusBarHeight:I
    iget-boolean v8, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    if-nez v8, :cond_0

    .line 34
    iput v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageCellHeight:I

    .line 35
    div-int/lit8 v8, v2, 0x5

    iput v8, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageCellWidth:I

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_0
    sub-int v8, v1, v6

    div-int/lit8 v8, v8, 0x5

    iput v8, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageCellHeight:I

    .line 40
    iput v5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageCellWidth:I

    goto :goto_0
.end method

.method private syncAndSetup(Ljava/util/ArrayList;Z)V
    .locals 9
    .parameter
    .parameter "forceWrite"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->setModel(Ljava/util/ArrayList;)V

    .line 329
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v5}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v4, v5, v6}, Lcom/sonyericsson/home/data/SyncHelper;->sync(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Lcom/sonyericsson/home/resourceload/PackageLoader;)Z

    move-result v3

    .line 332
    .local v3, modelChanged:Z
    iget-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    .end local p1           #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->updateViewsMargin()V

    .line 336
    sget v4, Lcom/sonyericsson/home/layer/stage/StageController;->sUxpStageResId:I

    if-eqz v4, :cond_0

    .line 337
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    const v5, 0x7f0e003c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 338
    .local v2, image:Landroid/widget/ImageView;
    sget v4, Lcom/sonyericsson/home/layer/stage/StageController;->sUxpStageResId:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 342
    .end local v2           #image:Landroid/widget/ImageView;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    const v5, 0x7f0e003d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/paneview/PaneView;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    .line 343
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 344
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 348
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    sget v5, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/paneview/PaneView;->setTag(ILjava/lang/Object;)V

    .line 350
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 351
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020046

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setSelectedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setFocusedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 355
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setPreferExternalFocus(Z)V

    .line 356
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setRejectPaddingTouch(Z)V

    .line 357
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    new-instance v5, Lcom/sonyericsson/home/layer/stage/StageController$4;

    invoke-direct {v5, p0}, Lcom/sonyericsson/home/layer/stage/StageController$4;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setPaneViewTouchListener(Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;)V

    .line 376
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    const v5, 0x7f0e003e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/home/layer/HintView;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintView:Lcom/sonyericsson/home/layer/HintView;

    .line 377
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintView:Lcom/sonyericsson/home/layer/HintView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sonyericsson/home/layer/HintView;->setHintType(I)V

    .line 379
    iget-boolean v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageBreadth:I

    move v1, v4

    .line 380
    .local v1, dStageWidth:I
    :goto_0
    iget-boolean v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    move v0, v4

    .line 381
    .local v0, dStageHeight:I
    :goto_1
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    int-to-float v6, v1

    const/4 v7, 0x0

    int-to-float v8, v0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHideAnim:Landroid/view/animation/Animation;

    .line 382
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHideAnim:Landroid/view/animation/Animation;

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v6, 0x4020

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 383
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHideAnim:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 384
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v1

    const/4 v6, 0x0

    int-to-float v7, v0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnim:Landroid/view/animation/Animation;

    .line 385
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnim:Landroid/view/animation/Animation;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x4020

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 386
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnim:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x4b

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 387
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnim:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 388
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnim:Landroid/view/animation/Animation;

    new-instance v5, Lcom/sonyericsson/home/layer/stage/StageController$5;

    invoke-direct {v5, p0}, Lcom/sonyericsson/home/layer/stage/StageController$5;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 413
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v5}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->preCacheShortcuts(Ljava/util/Collection;)V

    .line 415
    new-instance v4, Lcom/sonyericsson/home/layer/stage/StageAdapter;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    iget-object v7, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-boolean v8, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sonyericsson/home/layer/stage/StageAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/layer/stage/StageModelManager;Lcom/sonyericsson/home/layer/AdapterHelper;Z)V

    iput-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

    .line 416
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setAdapter(Lcom/sonyericsson/paneview/PaneAdapter;)V

    .line 418
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mLoadCompleted:Z

    .line 420
    if-nez p2, :cond_1

    if-eqz v3, :cond_2

    .line 421
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->writeToStorage()V

    .line 424
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mListener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    if-eqz v4, :cond_3

    .line 425
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mListener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    invoke-interface {v4}, Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;->onLoadCompleted()V

    .line 427
    :cond_3
    return-void

    .line 379
    .end local v0           #dStageHeight:I
    .end local v1           #dStageWidth:I
    :cond_4
    const/4 v4, 0x0

    move v1, v4

    goto/16 :goto_0

    .line 380
    .restart local v1       #dStageWidth:I
    :cond_5
    iget v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageBreadth:I

    move v0, v4

    goto/16 :goto_1
.end method

.method private toPixelsRound(FF)I
    .locals 2
    .parameter "density"
    .parameter "DipsVal"

    .prologue
    .line 46
    mul-float v0, p2, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private updateViewMargin(Landroid/view/View;Z)V
    .locals 7
    .parameter "v"
    .parameter "bOrientationLandscape"

    .prologue
    const/4 v6, 0x0

    .line 110
    if-eqz p1, :cond_0

    .line 112
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 114
    .local v0, SCALE:F
    const/high16 v2, -0x3e60

    .line 115
    .local v2, valueDips:F
    mul-float v4, v2, v0

    const/high16 v5, 0x3f00

    sub-float/2addr v4, v5

    float-to-int v3, v4

    .line 117
    .local v3, valuePixels:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 118
    .local v1, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v6, v6, v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 120
    .end local v0           #SCALE:F
    .end local v1           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2           #valueDips:F
    .end local v3           #valuePixels:I
    :cond_0
    return-void
.end method

.method private updateViewsMargin()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    const-string v2, "com.sonyericsson.home_preferences"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "textInStage"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 101
    .local v0, bTextInStage:Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    const v2, 0x7f0e003c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/sonyericsson/home/layer/stage/StageController;->updateViewMargin(Landroid/view/View;Z)V

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    const v2, 0x7f0e003d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/sonyericsson/home/layer/stage/StageController;->updateViewMargin(Landroid/view/View;Z)V

    .line 105
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    const v2, 0x7f0e003e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/sonyericsson/home/layer/stage/StageController;->updateViewMargin(Landroid/view/View;Z)V

    .line 107
    :cond_0
    return-void
.end method

.method private writeToStorage()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 745
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mLoadCompleted:Z

    if-eqz v2, :cond_0

    .line 746
    new-instance v1, Lcom/sonyericsson/storage/Root;

    const-string v2, "stage"

    invoke-direct {v1, v2}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 747
    .local v1, root:Lcom/sonyericsson/storage/Root;
    const-string v2, "version"

    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/storage/Root;->put(Ljava/lang/String;I)V

    .line 748
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getModel()Ljava/util/ArrayList;

    move-result-object v0

    .line 749
    .local v0, model:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 750
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v4}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Z)V

    .line 752
    .end local v0           #model:Ljava/util/ArrayList;
    .end local v1           #root:Lcom/sonyericsson/storage/Root;
    :cond_0
    return-void
.end method


# virtual methods
.method public addActivity(ILcom/sonyericsson/home/data/ActivityInfo;)Z
    .locals 1
    .parameter "stageLocation"
    .parameter "activityInfo"

    .prologue
    .line 781
    new-instance v0, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-direct {v0, p2}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Lcom/sonyericsson/home/data/ActivityInfo;)V

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->addInfo(Lcom/sonyericsson/home/data/Info;I)Z

    move-result v0

    return v0
.end method

.method public addFolder(ILjava/lang/String;)Z
    .locals 1
    .parameter "stageLocation"
    .parameter "folderName"

    .prologue
    .line 803
    new-instance v0, Lcom/sonyericsson/home/data/InfoGroup;

    invoke-direct {v0, p2}, Lcom/sonyericsson/home/data/InfoGroup;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->addInfo(Lcom/sonyericsson/home/data/Info;I)Z

    move-result v0

    return v0
.end method

.method public addShortcut(Landroid/os/Bundle;I)Z
    .locals 5
    .parameter "shortcutData"
    .parameter "stageLocation"

    .prologue
    const/4 v4, 0x1

    .line 785
    invoke-static {p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->create(Landroid/os/Bundle;)Lcom/sonyericsson/home/data/ShortcutInfo;

    move-result-object v1

    .line 787
    .local v1, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    if-eqz v1, :cond_1

    .line 788
    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/home/layer/stage/StageController;->addInfo(Lcom/sonyericsson/home/data/Info;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 789
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getShortcutBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 790
    .local v0, shortcutBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 791
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v4}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 794
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->add(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/graphics/Bitmap;)V

    move v2, v4

    .line 799
    .end local v0           #shortcutBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public calculateRect(ILandroid/graphics/Rect;)V
    .locals 3
    .parameter "position"
    .parameter "outRect"

    .prologue
    .line 901
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getIndexFromPosition(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->setupRect(ILandroid/graphics/Rect;)V

    .line 902
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 905
    .local v0, paneViewLocationOnScreen:[I
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/paneview/PaneView;->getLocationOnScreen([I)V

    .line 906
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 907
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 908
    return-void

    .line 902
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getDroppedAtInfo()Lcom/sonyericsson/home/data/Info;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

    return-object v0
.end method

.method public getHintLocation()I
    .locals 1

    .prologue
    .line 1040
    iget v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintLocation:I

    return v0
.end method

.method public getIconRect(JLandroid/graphics/Rect;)Z
    .locals 3
    .parameter "openFolderUniqueId"
    .parameter "outRect"

    .prologue
    .line 889
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2, p1, p2}, Lcom/sonyericsson/paneview/PaneView;->getView(J)Landroid/view/View;

    move-result-object v1

    .line 890
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 891
    const v2, 0x7f0e001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 892
    .local v0, image:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {v0, p3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 894
    const/4 v2, 0x1

    .line 897
    .end local v0           #image:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getModel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getModel()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSavedPickedUpInfo()Lcom/sonyericsson/home/data/Info;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    return-object v0
.end method

.method public hide(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 838
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnimationRunning:Z

    if-eqz v0, :cond_1

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 840
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 841
    if-eqz p1, :cond_1

    .line 842
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->getSnapshot()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 843
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnimationRunning:Z

    .line 844
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 847
    :cond_1
    return-void
.end method

.method public isCreatingFolder()Z
    .locals 1

    .prologue
    .line 979
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCreatingFolder:Z

    return v0
.end method

.method public itemAddedTo(Lcom/sonyericsson/home/data/InfoGroup;)V
    .locals 3
    .parameter "infoGroup"

    .prologue
    .line 759
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->positionOf(Lcom/sonyericsson/home/data/Info;)I

    move-result v0

    .line 760
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 761
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->setNewUniqueID()V

    .line 762
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 763
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    new-instance v2, Lcom/sonyericsson/animation/BounceRenderer;

    invoke-direct {v2}, Lcom/sonyericsson/animation/BounceRenderer;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 764
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 766
    :cond_0
    return-void
.end method

.method public loadStoredModel()V
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    const-string v1, "stage"

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->createOnReadCompletedCallback()Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/storage/Storage;->readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mReadHandle:Ljava/lang/Object;

    .line 436
    return-void
.end method

.method public notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->contains(Lcom/sonyericsson/home/data/Info;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 917
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->removeOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 879
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mReadHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mReadHandle:Ljava/lang/Object;

    invoke-static {v0}, Lcom/sonyericsson/storage/Storage;->cancelReadRoot(Ljava/lang/Object;)V

    .line 882
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 923
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCreatingFolder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    if-nez v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    .line 926
    :cond_0
    return-void
.end method

.method public onResume(Z)V
    .locals 3
    .parameter "dueToHomeButtonPressed"

    .prologue
    .line 935
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCreatingFolder:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 936
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mListener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mListener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    new-instance v1, Lcom/sonyericsson/home/layer/stage/StageController$11;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/stage/StageController$11;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;->onCreateFolder(Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener$OnCreateFolderCompletedListener;Z)V

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->finishCreateFolder()V

    goto :goto_0
.end method

.method public requestFocus()Z
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->requestFocus()Z

    move-result v0

    .line 1063
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCreatingFolder(Z)V
    .locals 0
    .parameter "creatingFolder"

    .prologue
    .line 990
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCreatingFolder:Z

    .line 991
    return-void
.end method

.method public setDroppedAtInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 0
    .parameter "droppedAtInfo"

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

    .line 1011
    return-void
.end method

.method public setHintLocation(I)V
    .locals 0
    .parameter "hintLocation"

    .prologue
    .line 1050
    iput p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintLocation:I

    .line 1051
    return-void
.end method

.method public setRetainedModel(Ljava/lang/Object;)V
    .locals 1
    .parameter "model"

    .prologue
    .line 446
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/home/layer/stage/StageController;->syncAndSetup(Ljava/util/ArrayList;Z)V

    .line 447
    return-void
.end method

.method public setSavedPickedUpInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 0
    .parameter "savedPickedUpInfo"

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    .line 1031
    return-void
.end method

.method public setStageControllerListener(Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 430
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mListener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    .line 431
    return-void
.end method

.method public show(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHideAnim:Landroid/view/animation/Animation;

    if-ne v0, v1, :cond_1

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 827
    if-eqz p1, :cond_2

    .line 828
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnimationRunning:Z

    .line 834
    :cond_1
    :goto_0
    return-void

    .line 831
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
