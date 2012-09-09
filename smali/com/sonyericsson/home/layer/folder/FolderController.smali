.class public Lcom/sonyericsson/home/layer/folder/FolderController;
.super Ljava/lang/Object;
.source "FolderController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/Controller;


# static fields
.field private static final SCROLL_VELOCITY:F = 0.02f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFolderAdapter:Lcom/sonyericsson/home/layer/folder/FolderAdapter;

.field private final mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

.field private final mFolderLayout:Lcom/sonyericsson/home/layer/folder/FolderLayout;

.field private mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

.field private final mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnGridChangedListener:Lcom/sonyericsson/home/layer/folder/FolderLocator$OnGridChangedListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mPaneView:Lcom/sonyericsson/paneview/PaneView;

.field private mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

.field private mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

.field private mScroll:F

.field private mScrollRunnable:Ljava/lang/Runnable;

.field private mTitleView:Landroid/widget/TextView;

.field private mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

.field private mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

.field private mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 14
    .parameter "context"
    .parameter "folderLayout"
    .parameter "transferHandler"
    .parameter "adapterHelper"
    .parameter "infoGroupManager"
    .parameter "resourceLoader"

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$1;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    .line 189
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$2;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    .line 202
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$3;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 222
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$4;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$4;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOnGridChangedListener:Lcom/sonyericsson/home/layer/folder/FolderLocator$OnGridChangedListener;

    .line 230
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$5;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$5;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    .line 252
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$6;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$6;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 264
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$7;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$7;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 274
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$8;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$8;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 285
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$9;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$9;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mScrollRunnable:Ljava/lang/Runnable;

    .line 302
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mContext:Landroid/content/Context;

    .line 303
    const v2, 0x7f0e002d

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/sonyericsson/home/layer/folder/FolderLayout;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderLayout:Lcom/sonyericsson/home/layer/folder/FolderLayout;

    .line 304
    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/folder/FolderController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 305
    move-object/from16 v0, p5

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 306
    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/folder/FolderController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 308
    new-instance v4, Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-direct {v4}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;-><init>()V

    .line 309
    .local v4, modelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;
    invoke-direct {p0, v4}, Lcom/sonyericsson/home/layer/folder/FolderController;->createFolderLocator(Lcom/sonyericsson/home/layer/folder/FolderModelManager;)Lcom/sonyericsson/home/layer/folder/FolderLocator;

    move-result-object v5

    .line 310
    .local v5, folderLocator:Lcom/sonyericsson/home/layer/folder/FolderLocator;
    new-instance v7, Lcom/sonyericsson/home/layer/LayerRendererFactory;

    invoke-direct {v7}, Lcom/sonyericsson/home/layer/LayerRendererFactory;-><init>()V

    .line 311
    .local v7, rendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderFlow;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    iget-object v6, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/home/layer/folder/FolderFlow;-><init>(Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;Lcom/sonyericsson/home/layer/folder/FolderModelManager;Lcom/sonyericsson/home/layer/folder/FolderLocator;Lcom/sonyericsson/home/data/InfoGroupInterface;Lcom/sonyericsson/home/layer/LayerRendererFactory;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    .line 314
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    new-instance v8, Lcom/sonyericsson/home/layer/folder/FolderController$10;

    move-object v9, p0

    move-object/from16 v10, p4

    move-object v11, v4

    move-object v12, v5

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/sonyericsson/home/layer/folder/FolderController$10;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/layer/folder/FolderModelManager;Lcom/sonyericsson/home/layer/folder/FolderLocator;Lcom/sonyericsson/home/layer/LayerRendererFactory;)V

    invoke-virtual {v2, v8}, Lcom/sonyericsson/home/layer/InfoGroupManager;->registerOnLoadCompletedCallback(Ljava/lang/Runnable;)V

    .line 339
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderAdapter:Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/home/layer/folder/FolderAdapter;)Lcom/sonyericsson/home/layer/folder/FolderAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderAdapter:Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/resourceload/ResourceLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderFlow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/InfoGroupManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderLocator$OnGridChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOnGridChangedListener:Lcom/sonyericsson/home/layer/folder/FolderLocator$OnGridChangedListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/paneview/RendererFactory;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/folder/FolderController;->setupPaneView(Lcom/sonyericsson/paneview/RendererFactory;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderLayout:Lcom/sonyericsson/home/layer/folder/FolderLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTitleView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/transfer/TransferSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/transfer/TransferHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/layer/folder/FolderController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/home/layer/folder/FolderController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mScroll:F

    return v0
.end method

.method static synthetic access$902(Lcom/sonyericsson/home/layer/folder/FolderController;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mScroll:F

    return p1
.end method

.method private createFolderLocator(Lcom/sonyericsson/home/layer/folder/FolderModelManager;)Lcom/sonyericsson/home/layer/folder/FolderLocator;
    .locals 8
    .parameter "paramFolderModelManager"

    .prologue
    .line 14
    iget-object v6, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 15
    .local v5, wm:Landroid/view/WindowManager;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 16
    .local v4, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 17
    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 19
    .local v2, density:F
    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 24
    .local v3, desktopWidthPx:I
    iget-object v6, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 26
    const/high16 v6, 0x41a0

    invoke-direct {p0, v2, v6}, Lcom/sonyericsson/home/layer/folder/FolderController;->toPixelsRound(FF)I

    move-result v6

    sub-int v6, v3, v6

    div-int/lit8 v1, v6, 0x4

    .line 27
    .local v1, cellWidth:I
    move v0, v1

    .line 34
    .local v0, cellHeight:I
    :goto_0
    new-instance v6, Lcom/sonyericsson/home/layer/folder/FolderLocator;

    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sonyericsson/home/bidi/Utils;->isRtlAlphabet(Landroid/content/Context;)Z

    move-result v7

    invoke-direct {v6, p1, v1, v0, v7}, Lcom/sonyericsson/home/layer/folder/FolderLocator;-><init>(Lcom/sonyericsson/home/layer/folder/FolderModelManager;IIZ)V

    return-object v6

    .line 31
    .end local v0           #cellHeight:I
    .end local v1           #cellWidth:I
    :cond_0
    const/high16 v6, 0x42e4

    invoke-direct {p0, v2, v6}, Lcom/sonyericsson/home/layer/folder/FolderController;->toPixelsRound(FF)I

    move-result v6

    sub-int v6, v3, v6

    div-int/lit8 v1, v6, 0x4

    .line 32
    .restart local v1       #cellWidth:I
    move v0, v1

    .restart local v0       #cellHeight:I
    goto :goto_0
.end method

.method private setupPaneView(Lcom/sonyericsson/paneview/RendererFactory;)V
    .locals 8
    .parameter "rendererFactory"

    .prologue
    const/4 v5, 0x0

    .line 391
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 392
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 393
    .local v3, stiffness:Landroid/util/TypedValue;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 394
    .local v0, damping:Landroid/util/TypedValue;
    const v4, 0x7f0b0002

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 395
    const v4, 0x7f0b0003

    invoke-virtual {v2, v4, v0, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 396
    new-instance v1, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v1}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    .line 397
    .local v1, dynamics:Lcom/sonyericsson/util/SpringDynamics;
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 398
    const/high16 v4, 0x4000

    invoke-virtual {v1, v4}, Lcom/sonyericsson/util/SpringDynamics;->setFriction(F)V

    .line 400
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/paneview/PaneView;->setScrollDynamics(Lcom/sonyericsson/util/Dynamics;)V

    .line 401
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 402
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 403
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 404
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const v5, 0x7f020046

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setSelectedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const v5, 0x7f02000a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setFocusedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    sget v5, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/paneview/PaneView;->setTag(ILjava/lang/Object;)V

    .line 413
    return-void
.end method

.method private toPixelsRound(FF)I
    .locals 2
    .parameter "density"
    .parameter "DipsVal"

    .prologue
    .line 38
    mul-float v0, p2, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public clickTitleToRename()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->isRenamingFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->onClickTitle(Z)V

    .line 463
    :cond_0
    return-void
.end method

.method public closeFolder(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->closeFolder(Z)V

    .line 352
    return-void
.end method

.method public getCurrentFolder()Lcom/sonyericsson/home/data/InfoGroup;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->getFolder()Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isRenamingFolder()Z
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->isRenamingFolder()Z

    move-result v0

    return v0
.end method

.method public notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->contains(Lcom/sonyericsson/home/data/Info;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->onContentChanged()V

    .line 426
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->unregisterInfoGroupListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;)V

    .line 364
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderLayout:Lcom/sonyericsson/home/layer/folder/FolderLayout;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 370
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 372
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public openFolder(Lcom/sonyericsson/home/data/InfoGroup;Landroid/graphics/Rect;Z)V
    .locals 1
    .parameter "infoGroup"
    .parameter "sourceRect"
    .parameter "animate"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->openFolder(Lcom/sonyericsson/home/data/InfoGroup;Landroid/graphics/Rect;Z)V

    .line 344
    return-void
.end method

.method public requestFocus()Z
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public setFolderListener(Lcom/sonyericsson/home/layer/folder/FolderListener;)V
    .locals 1
    .parameter "folderListener"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->setFolderListener(Lcom/sonyericsson/home/layer/folder/FolderListener;)V

    .line 348
    return-void
.end method

.method public setRenamingFolder(Z)V
    .locals 1
    .parameter "renamingFolder"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->setRenamingFolder(Z)V

    .line 453
    return-void
.end method
