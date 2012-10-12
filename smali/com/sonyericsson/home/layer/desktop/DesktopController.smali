.class public Lcom/sonyericsson/home/layer/desktop/DesktopController;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/Controller;
.implements Lcom/sonyericsson/home/widget/OnWidgetConfigured;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;,
        Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;,
        Lcom/sonyericsson/home/layer/desktop/DesktopController$State;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH_FOR_REPORTING_CORNERS:F = 0.1f

.field private static final CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri; = null

.field private static final DESKTOP_PREFERENCES:Ljava/lang/String; = "desktop_preferences"

.field private static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field private static final INVALID_TIME:J = -0x1L

.field private static final PREFERENCE_DESKTOP_WIDGET_CUSTOMIZATION_DONE:Ljava/lang/String; = "preference_desktop_widget_customization_done"

.field private static final PRODUCT_DEFAULT_SETTINGS_FILE:Ljava/lang/String; = "/etc/customization/settings/com/sonyericsson/home/default_settings_desktop.xml"

.field private static final REGISTER_WIDGET_DELAY_MILLIS:J = 0x3e8L

.field private static final SMART_SLIDER_TAG:Ljava/lang/String; = "com.sonyerisson.home.SMART_SLIDER_ENABLED"

.field private static final STORAGE_ENTITY_NAME:Ljava/lang/String; = "desktop"

.field private static final STORAGE_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final STORAGE_VERSION_VALUE:I = 0x1

.field static final TAG:Ljava/lang/String; = "DesktopController"

.field private static final VELOCITY_THRESHOLD:I = 0x258

.field private static final WALLPAPER_COMMAND_AIRTOUCH_HOVER:Ljava/lang/String; = "com.sonyericsson.wallpaper.hover"

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private hideAnim:Landroid/view/animation/Animation;

.field private mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

.field private mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mBindSyncCompletedCallback:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCreatingFolder:Z

.field private final mDesktopHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

.field private mDesktopView:Landroid/view/ViewGroup;

.field private mDroppedAtItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

.field private mFirstHint:Z

.field private mFirstPaneSwitchWaitDuration:I

.field private mFreeCorners:[Z

.field private mGrid:Lcom/sonyericsson/grid/Grid;

.field private mGridSize:Lcom/sonyericsson/grid/GridSize;

.field private mHandler:Landroid/os/Handler;

.field private mHintDesktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

.field private mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

.field private mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

.field private mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

.field private mIsWidgetLoadCompleted:Z

.field private final mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

.field private mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

.field private mMinPaneSwitchDuration:I

.field private mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

.field private mNudgeShow:Landroid/view/animation/Animation;

.field private mNumberOfPanes:I

.field private final mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

.field private mOnSyncCompletedCallbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnWidgetsLoadedCallbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationLandscape:Z

.field private mOwner:Landroid/app/Activity;

.field private final mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

.field private mPaneSwitchMarginLeft:I

.field private mPaneSwitchMarginRight:I

.field private mPaneSwitchNudgeOffset:I

.field private mPaneView:Lcom/sonyericsson/paneview/PaneView;

.field private mPaneViewInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

.field private mPaneViewItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

.field private mPaneViewScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

.field private mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

.field protected mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

.field private mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

.field private mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

.field private mRightNudge:Lcom/sonyericsson/home/layer/HintView;

.field private mSavedHintRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

.field private mSavedPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

.field private mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

.field private mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

.field private mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

.field private final mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

.field private final mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

.field private mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

.field private mViewInTransfer:Landroid/view/View;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private final mWidgetLoadHandler:Lcom/sonyericsson/util/DeferredHandler;

.field private mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

.field private mWidgetManagerForRegister:Lcom/sonyericsson/home/widget/WidgetManager;

.field private showAnim:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.home/custom_settings_desktop.xml"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    .line 333
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "desktop worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->sWorkerThread:Landroid/os/HandlerThread;

    .line 336
    sget-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 339
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/sonyericsson/home/layer/desktop/DesktopController;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->sWorker:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/layer/InfoGroupManager;)V
    .locals 5
    .parameter "context"
    .parameter "packageLoader"
    .parameter "infoGroupManager"

    .prologue
    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    sget-object v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->UNINITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    .line 231
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    .line 239
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mHandler:Landroid/os/Handler;

    .line 242
    new-instance v2, Lcom/sonyericsson/util/DeferredHandler;

    invoke-direct {v2}, Lcom/sonyericsson/util/DeferredHandler;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetLoadHandler:Lcom/sonyericsson/util/DeferredHandler;

    .line 245
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnWidgetsLoadedCallbacks:Ljava/util/LinkedList;

    .line 248
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mIsWidgetLoadCompleted:Z

    .line 287
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFirstHint:Z

    .line 291
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$1;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    .line 786
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$2;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    .line 1578
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 1642
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1661
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$11;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$11;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 1683
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 2001
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    .line 2044
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    .line 2068
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$15;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$15;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    .line 2087
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$16;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$16;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    .line 2109
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$17;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$17;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    .line 812
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    .line 813
    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 814
    iput-object p3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 815
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 818
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 819
    .local v1, awm:Landroid/appwidget/AppWidgetManager;
    new-instance v0, Lcom/sonyericsson/home/widget/HomeAppWidgetHost;

    const v2, 0xa3d9739

    invoke-direct {v0, p1, v2}, Lcom/sonyericsson/home/widget/HomeAppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 821
    .local v0, awh:Landroid/appwidget/AppWidgetHost;
    new-instance v2, Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-direct {v2, p1, v1, v0}, Lcom/sonyericsson/home/widget/WidgetManager;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/appwidget/AppWidgetHost;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManagerForRegister:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 823
    new-instance v2, Lcom/sonyericsson/home/layer/HintInfo;

    invoke-direct {v2, p1}, Lcom/sonyericsson/home/layer/HintInfo;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    .line 825
    new-instance v2, Lcom/sonyericsson/grid/GridSize;

    invoke-direct {v2}, Lcom/sonyericsson/grid/GridSize;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    .line 826
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v2, Lcom/sonyericsson/grid/GridSize;->rows:I

    .line 827
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v2, Lcom/sonyericsson/grid/GridSize;->cols:I

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setupGridSize()V

    .line 829
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->readNumOfPanesCfg()V

    .line 831
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 834
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const-string v3, "desktop"

    new-instance v4, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    invoke-direct {v4, p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/content/Context;)V

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/storage/Storage;->readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)Ljava/lang/Object;

    .line 923
    return-void
.end method

.method private GetAutoHidePaginator()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, bRes:Z
    iget-boolean v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOrientationLandscape:Z

    if-nez v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const-string v2, "com.sonyericsson.home_preferences"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "autohideDeskPaginatorPort"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 25
    :goto_0
    return v0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const-string v2, "com.sonyericsson.home_preferences"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "autohideDeskPaginatorLand"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->writeToStorageAsync(Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/PaneIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/layer/desktop/DesktopController;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->reportFreeCorners(IZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/grid/GridSize;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/appwidget/AppWidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/appwidget/AppWidgetManager;)Landroid/appwidget/AppWidgetManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/appwidget/AppWidgetHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/appwidget/AppWidgetHost;)Landroid/appwidget/AppWidgetHost;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/InfoGroupManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$2600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/WidgetInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->performRegister(Lcom/sonyericsson/home/data/WidgetInfo;)V

    return-void
.end method

.method static synthetic access$2802(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopController$State;)Lcom/sonyericsson/home/layer/desktop/DesktopController$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onHideFinished(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onShowFinished()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->customizeWidgets()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/ResourceLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/WidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/AdvWidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/grid/Grid;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView$ScrollListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/util/Collection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->preCacheWidgets(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setOnLayoutListener(Lcom/sonyericsson/paneview/PaneView;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/app/WallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView$ItemViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/transfer/TransferSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/transfer/TransferHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mViewInTransfer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mViewInTransfer:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mMinPaneSwitchDuration:I

    return v0
.end method

.method static synthetic access$5200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFirstHint:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFirstHint:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mHintDesktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mHintDesktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/sonyericsson/home/layer/desktop/DesktopController;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showNudgeIfNeeded(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideNudge()V

    return-void
.end method

.method static synthetic access$5600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/HintInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMarginLeft:I

    return v0
.end method

.method static synthetic access$5800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMarginRight:I

    return v0
.end method

.method static synthetic access$5900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFirstPaneSwitchWaitDuration:I

    return v0
.end method

.method static synthetic access$6000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDroppedAtItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDroppedAtItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mCreatingFolder:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/lang/String;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->sendWallpaperCommand(Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic access$6500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedHintRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->finishCreateFolder()V

    return-void
.end method

.method static synthetic access$6800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->runOnWidgetsLoadedCallbacks()V

    return-void
.end method

.method static synthetic access$6900(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/WidgetInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->registerWidget(Lcom/sonyericsson/home/data/WidgetInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    return-object v0
.end method

.method private addInfo(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/grid/GridLocation;)Z
    .locals 12
    .parameter "info"
    .parameter "location"

    .prologue
    const/4 v11, 0x0

    .line 2194
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    sget-object v10, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-eq v9, v10, :cond_0

    .line 2195
    const-string v9, "DesktopController"

    const-string v10, "Add info called before controller initialized."

    invoke-static {v9, v10}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v11

    .line 2245
    :goto_0
    return v9

    .line 2201
    :cond_0
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v9}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v5

    .line 2203
    .local v5, pane:I
    instance-of v9, p1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v9, :cond_4

    .line 2204
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/data/WidgetInfo;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sonyericsson/home/data/WidgetInfo;->getId()I

    move-result v1

    .line 2205
    .local v1, appWidgetId:I
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v10, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetWidth(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/grid/Grid;->getColSpan(I)I

    move-result v7

    .line 2206
    .local v7, spanX:I
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v10, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetHeight(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/grid/Grid;->getRowSpan(I)I

    move-result v8

    .line 2216
    .end local v1           #appWidgetId:I
    .local v8, spanY:I
    :goto_1
    const/4 v4, 0x0

    .line 2219
    .local v4, itemAdded:Z
    if-nez v4, :cond_1

    if-eqz p2, :cond_1

    .line 2220
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 2221
    .local v2, desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    new-instance v3, Lcom/sonyericsson/grid/GridRect;

    invoke-direct {v3}, Lcom/sonyericsson/grid/GridRect;-><init>()V

    .line 2222
    .local v3, gridRect:Lcom/sonyericsson/grid/GridRect;
    iput v7, v3, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    .line 2223
    iput v8, v3, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    .line 2224
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    iget v10, p2, Lcom/sonyericsson/grid/GridLocation;->col:I

    iget v11, p2, Lcom/sonyericsson/grid/GridLocation;->row:I

    invoke-virtual {v9, v10, v11, v3}, Lcom/sonyericsson/grid/Grid;->centerGridRect(IILcom/sonyericsson/grid/GridRect;)V

    .line 2225
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v9, v3, v5, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getClosestEmptyLocation(Lcom/sonyericsson/grid/GridRect;ILcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2226
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    new-instance v10, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v10, p1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    invoke-virtual {v9, v10}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->addItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z

    move-result v4

    .line 2233
    .end local v2           #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .end local v3           #gridRect:Lcom/sonyericsson/grid/GridRect;
    :cond_1
    if-nez v4, :cond_2

    .line 2234
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 2235
    .restart local v2       #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v9, v7, v8, v5, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getFirstEmptyLocation(IIILcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2236
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    new-instance v10, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v10, p1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    invoke-virtual {v9, v10}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->addItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z

    move-result v4

    .line 2240
    .end local v2           #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    :cond_2
    if-eqz v4, :cond_3

    .line 2241
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->writeToStorageAsync(Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;)V

    .line 2242
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v9}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    :cond_3
    move v9, v4

    .line 2245
    goto :goto_0

    .line 2207
    .end local v4           #itemAdded:Z
    .end local v7           #spanX:I
    .end local v8           #spanY:I
    :cond_4
    instance-of v9, p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v9, :cond_5

    .line 2208
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    move-object v9, v0

    invoke-virtual {v10, v9}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getSpanXY(Lcom/sonyericsson/home/data/AdvWidgetInfo;)[I

    move-result-object v6

    .line 2209
    .local v6, span:[I
    aget v7, v6, v11

    .line 2210
    .restart local v7       #spanX:I
    const/4 v9, 0x1

    aget v8, v6, v9

    .line 2211
    .restart local v8       #spanY:I
    goto :goto_1

    .line 2212
    .end local v6           #span:[I
    .end local v7           #spanX:I
    .end local v8           #spanY:I
    :cond_5
    const/4 v7, 0x1

    .line 2213
    .restart local v7       #spanX:I
    const/4 v8, 0x1

    .restart local v8       #spanY:I
    goto :goto_1
.end method

.method private createDynamics()Lcom/sonyericsson/util/SpringDynamics;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2129
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2130
    .local v2, stiffness:Landroid/util/TypedValue;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2131
    .local v0, damping:Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0b

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2132
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2133
    new-instance v1, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v1}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    .line 2134
    .local v1, dynamics:Lcom/sonyericsson/util/SpringDynamics;
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 2135
    return-object v1
.end method

.method private customizeWidgets()V
    .locals 13

    .prologue
    .line 997
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    if-nez v10, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v10}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v8

    .line 1002
    .local v8, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/Info;>;"
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/home/data/Info;

    .line 1003
    .local v7, info:Lcom/sonyericsson/home/data/Info;
    instance-of v10, v7, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v10, :cond_2

    .line 1004
    move-object v0, v7

    check-cast v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->getCustomization()Ljava/util/HashMap;

    move-result-object v2

    .line 1005
    .local v2, custMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 1006
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1007
    .local v1, bundle:Landroid/os/Bundle;
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1008
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1010
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    check-cast v7, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    .end local v7           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v10, v7, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->customize(Lcom/sonyericsson/home/data/AdvWidgetInfo;Landroid/os/Bundle;)Z

    goto :goto_1

    .line 1014
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #custMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const-string v11, "desktop_preferences"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1016
    .local v9, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1017
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "preference_desktop_widget_customization_done"

    const/4 v11, 0x1

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1018
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private findSmartSliderViewRec(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "viewGroup"

    .prologue
    .line 2628
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 2629
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 2630
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2632
    .local v0, child:Landroid/view/View;
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 2633
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->findSmartSliderViewRec(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2634
    .local v3, smartSliderView:Landroid/view/View;
    if-eqz v3, :cond_1

    move-object v4, v3

    .line 2642
    .end local v3           #smartSliderView:Landroid/view/View;
    :goto_1
    return-object v4

    .line 2637
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.sonyerisson.home.SMART_SLIDER_ENABLED"

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    .line 2638
    goto :goto_1

    .line 2629
    .end local v0           #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2642
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private finishCreateFolder()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2494
    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDroppedAtItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 2495
    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 2496
    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedHintRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 2497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mCreatingFolder:Z

    .line 2498
    return-void
.end method

.method private hideNudge()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2180
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 2181
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintView;->clearAnimation()V

    .line 2182
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 2183
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintView;->clearAnimation()V

    .line 2184
    return-void
.end method

.method private onHideFinished(Z)V
    .locals 1
    .parameter "animating"

    .prologue
    .line 926
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onDesktopHidden(Z)V

    .line 929
    :cond_0
    return-void
.end method

.method private onShowFinished()V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 933
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onDesktopShown()V

    .line 936
    :cond_0
    return-void
.end method

.method private performRegister(Lcom/sonyericsson/home/data/WidgetInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$22;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$22;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/WidgetInfo;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2574
    return-void
.end method

.method private preCacheWidgets(Ljava/util/Collection;)V
    .locals 4
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
    .line 2532
    .local p1, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/Info;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/Info;

    .line 2533
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    instance-of v2, v1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v2, :cond_1

    .line 2537
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetLoadHandler:Lcom/sonyericsson/util/DeferredHandler;

    new-instance v3, Lcom/sonyericsson/home/layer/desktop/DesktopController$20;

    invoke-direct {v3, p0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$20;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/Info;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/util/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2545
    :cond_1
    instance-of v2, v1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v2, :cond_0

    .line 2549
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetLoadHandler:Lcom/sonyericsson/util/DeferredHandler;

    new-instance v3, Lcom/sonyericsson/home/layer/desktop/DesktopController$21;

    invoke-direct {v3, p0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$21;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/Info;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/util/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2559
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_2
    return-void
.end method

.method private readNumOfPanesCfg()V
    .locals 3

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const-string v1, "com.sonyericsson.home_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "numberHomescreens"

    const-string v2, "5"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    .line 1223
    return-void
.end method

.method private registerWidget(Lcom/sonyericsson/home/data/WidgetInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 2583
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->get(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v1

    .line 2584
    .local v1, desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-eqz v1, :cond_0

    .line 2585
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/WidgetInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2586
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/WidgetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2588
    .local v3, packageName:Ljava/lang/String;
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$23;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$23;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/home/layer/desktop/DesktopItem;)V

    .line 2609
    .local v0, callback:Lcom/sonyericsson/home/widget/WidgetManager$AppWidgetRegisteredCallback;
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManagerForRegister:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v4, v2, v3, v0}, Lcom/sonyericsson/home/widget/WidgetManager;->registerAppWidgetAsync(Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/home/widget/WidgetManager$AppWidgetRegisteredCallback;)V

    .line 2611
    .end local v0           #callback:Lcom/sonyericsson/home/widget/WidgetManager$AppWidgetRegisteredCallback;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private removeOnSyncCompletedCallback(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1244
    :cond_0
    return-void
.end method

.method private reportFreeCorners(IZ)V
    .locals 8
    .parameter "pane"
    .parameter "force"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2257
    const/4 v0, 0x0

    .line 2258
    .local v0, changed:Z
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    if-nez v3, :cond_0

    .line 2259
    const/4 v3, 0x4

    new-array v3, v3, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    .line 2262
    const/4 p2, 0x1

    .line 2264
    :cond_0
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 2265
    .local v2, rect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    iput v5, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 2266
    iput v5, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 2267
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 2268
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 2269
    iput p1, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 2270
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->isLocationEmpty(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v1

    .line 2271
    .local v1, free:Z
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aget-boolean v3, v3, v5

    if-eq v1, v3, :cond_1

    .line 2272
    const/4 v0, 0x1

    .line 2273
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aput-boolean v1, v3, v5

    .line 2275
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v3, v3, Lcom/sonyericsson/grid/GridSize;->cols:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 2276
    iput v5, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 2277
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 2278
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 2279
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->isLocationEmpty(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v1

    .line 2280
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aget-boolean v3, v3, v4

    if-eq v1, v3, :cond_2

    .line 2281
    const/4 v0, 0x1

    .line 2282
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aput-boolean v1, v3, v4

    .line 2284
    :cond_2
    iput v5, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 2285
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v3, v3, Lcom/sonyericsson/grid/GridSize;->rows:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 2286
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 2287
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 2288
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->isLocationEmpty(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v1

    .line 2289
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aget-boolean v3, v3, v6

    if-eq v1, v3, :cond_3

    .line 2290
    const/4 v0, 0x1

    .line 2291
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aput-boolean v1, v3, v6

    .line 2293
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v3, v3, Lcom/sonyericsson/grid/GridSize;->cols:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 2294
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v3, v3, Lcom/sonyericsson/grid/GridSize;->rows:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 2295
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 2296
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 2297
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->isLocationEmpty(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v1

    .line 2298
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aget-boolean v3, v3, v7

    if-eq v1, v3, :cond_4

    .line 2299
    const/4 v0, 0x1

    .line 2300
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aput-boolean v1, v3, v7

    .line 2302
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    if-eqz v3, :cond_6

    if-nez v0, :cond_5

    if-eqz p2, :cond_6

    .line 2303
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    invoke-interface {v3, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onFreeCornersChanged([Z)V

    .line 2305
    :cond_6
    return-void

    .line 2259
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private resumeWidgets()V
    .locals 7

    .prologue
    .line 2432
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v5}, Lcom/sonyericsson/paneview/PaneView;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2433
    .local v4, position:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->get(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    .line 2434
    .local v3, info:Lcom/sonyericsson/home/data/Info;
    instance-of v5, v3, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v5, :cond_0

    .line 2435
    move-object v0, v3

    check-cast v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    move-object v1, v0

    .line 2436
    .local v1, advInfo:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->startWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    .line 2437
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->resumeWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    .line 2438
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v5}, Lcom/sonyericsson/paneview/PaneView;->isInteracting()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2439
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->focusWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    goto :goto_0

    .line 2443
    .end local v1           #advInfo:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    .end local v3           #info:Lcom/sonyericsson/home/data/Info;
    .end local v4           #position:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private runOnWidgetsLoadedCallbacks()V
    .locals 3

    .prologue
    .line 2517
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetLoadHandler:Lcom/sonyericsson/util/DeferredHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/util/DeferredHandler;->isQueueEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2518
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnWidgetsLoadedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 2519
    .local v0, callback:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2521
    .end local v0           #callback:Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnWidgetsLoadedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 2522
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mIsWidgetLoadCompleted:Z

    .line 2524
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private sendWallpaperCommand(Ljava/lang/String;III)V
    .locals 8
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 1555
    .local v2, windowToken:Landroid/os/IBinder;
    sget-object v7, Lcom/sonyericsson/home/layer/desktop/DesktopController;->sWorker:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/os/IBinder;Ljava/lang/String;III)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1563
    return-void
.end method

.method private setContextDependentData()V
    .locals 4

    .prologue
    const/high16 v3, 0x4020

    .line 939
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMarginLeft:I

    .line 941
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMarginRight:I

    .line 943
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchNudgeOffset:I

    .line 945
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mMinPaneSwitchDuration:I

    .line 947
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFirstPaneSwitchWaitDuration:I

    .line 950
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const v1, 0x7f04000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNudgeShow:Landroid/view/animation/Animation;

    .line 953
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNudgeShow:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 955
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/grid/GridSize;->rows:I

    .line 956
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/grid/GridSize;->cols:I

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setupGridSize()V

    .line 958
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->readNumOfPanesCfg()V

    .line 960
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideAnim:Landroid/view/animation/Animation;

    .line 961
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 962
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$4;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 976
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showAnim:Landroid/view/animation/Animation;

    .line 977
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 978
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 991
    return-void
.end method

.method private setOnLayoutListener(Lcom/sonyericsson/paneview/PaneView;)V
    .locals 1
    .parameter "paneView"

    .prologue
    .line 1150
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/paneview/PaneView;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/paneview/PaneView;->setOnLayoutListener(Lcom/sonyericsson/paneview/PaneView$OnLayoutListener;)V

    .line 1167
    return-void
.end method

.method private setupGrid()V
    .locals 28

    .prologue
    .line 44
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/sonyericsson/home/layer/desktop/DesktopController;);
    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    #v24=(Reference,Landroid/content/Context;);
    const-string v25, "com.sonyericsson.home_preferences"

    #v25=(Reference,Ljava/lang/String;);
    const/16 v26, 0x0

    #v26=(Null);
    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v25, "desktopConfig"

    const-string v26, "4"

    #v26=(Reference,Ljava/lang/String;);
    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 46
    .local v13, desktopConfig:I
    #v13=(Integer);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "com.sonyericsson.home_preferences"

    const/16 v26, 0x0

    #v26=(Null);
    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v25, "autohideDeskPaginatorPort"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 47
    .local v7, bAutoHidePaginatorPort:Z
    #v7=(Boolean);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "com.sonyericsson.home_preferences"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v25, "autohideDeskPaginatorLand"

    const/16 v26, 0x1

    #v26=(One);
    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 48
    .local v6, bAutoHidePaginatorLand:Z
    #v6=(Boolean);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "com.sonyericsson.home_preferences"

    const/16 v26, 0x0

    #v26=(Null);
    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v25, "textInStage"

    const/16 v26, 0x1

    #v26=(One);
    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 50
    .local v8, bShowTitles:Z
    #v8=(Boolean);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a001f

    #v25=(Integer);
    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 51
    .local v16, desktop_right_nudge_padding_right:I
    #v16=(Integer);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0015

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 53
    .local v20, stage_breadth:I
    #v20=(Integer);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a001d

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 55
    .local v19, padLeft:I
    #v19=(Integer);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "window"

    #v25=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    #v23=(Reference,Ljava/lang/Object;);
    check-cast v23, Landroid/view/WindowManager;

    .line 56
    .local v23, wm:Landroid/view/WindowManager;
    new-instance v18, Landroid/util/DisplayMetrics;

    #v18=(UninitRef,Landroid/util/DisplayMetrics;);
    invoke-direct/range {v18 .. v18}, Landroid/util/DisplayMetrics;-><init>()V

    .line 57
    .local v18, metrics:Landroid/util/DisplayMetrics;
    #v18=(Reference,Landroid/util/DisplayMetrics;);
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    #v1=(Reference,Landroid/util/DisplayMetrics;);
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 58
    move-object/from16 v0, v18

    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    .line 60
    .local v9, density:F
    #v9=(Integer);
    move-object/from16 v0, v18

    iget v14, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 61
    .local v14, desktopHeightPx:I
    #v14=(Integer);
    move-object/from16 v0, v18

    iget v15, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 63
    .local v15, desktopWidthPx:I
    #v15=(Integer);
    const/high16 v24, 0x41c8

    #v24=(Integer);
    move-object/from16 v0, p0

    move/from16 v1, v24

    #v1=(Integer);
    invoke-direct {v0, v9, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->toPixelsRound(FF)I

    move-result v21

    .line 64
    .local v21, statusBarHeight:I
    #v21=(Integer);
    if-eqz v7, :cond_0

    const/4 v11, 0x0

    .line 65
    .local v11, deskPaginatorHeightPort:I
    :goto_0
    #v11=(Integer);
    if-eqz v6, :cond_1

    const/4 v10, 0x0

    .line 66
    .local v10, deskPaginatorHeightLand:I
    :goto_1
    #v10=(Integer);
    if-eqz v8, :cond_2

    const/high16 v24, 0x41a0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v9, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->toPixelsRound(FF)I

    move-result v12

    .line 73
    .local v12, deskStageCompesation:I
    :goto_2
    #v12=(Integer);
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOrientationLandscape:Z

    #v0=(Boolean);
    move/from16 v24, v0

    #v24=(Boolean);
    if-nez v24, :cond_4

    .line 75
    const/16 v24, 0x4

    #v24=(PosByte);
    move/from16 v0, v24

    #v0=(PosByte);
    if-eq v13, v0, :cond_3

    .line 77
    sub-int v24, v14, v20

    #v24=(Integer);
    add-int v24, v24, v12

    sub-int v24, v24, v11

    sub-int v17, v24, v21

    .line 83
    .local v17, height:I
    :goto_3
    #v17=(Integer);
    move/from16 v22, v15

    .line 85
    .local v22, width:I
    #v22=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/sonyericsson/home/layer/desktop/DesktopController;);
    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    move-object/from16 v24, v0

    #v24=(Reference,Lcom/sonyericsson/paneview/PaneView;);
    const/16 v25, 0x0

    #v25=(Null);
    const/16 v26, 0x0

    #v26=(Null);
    move-object/from16 v0, v24

    move/from16 v1, v19

    move/from16 v2, v25

    #v2=(Null);
    move/from16 v3, v26

    #v3=(Null);
    invoke-virtual {v0, v1, v11, v2, v3}, Lcom/sonyericsson/paneview/PaneView;->setPadding(IIII)V

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sonyericsson/home/layer/HintView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    #v27=(Null);
    move-object/from16 v0, v24

    move/from16 v1, v25

    #v1=(Null);
    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sonyericsson/home/layer/HintView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sonyericsson/grid/GridSize;->rows:I

    #v0=(Integer);
    move/from16 v24, v0

    #v24=(Integer);
    div-int v4, v17, v24

    .line 90
    .local v4, CellHeight:I
    #v4=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/sonyericsson/home/layer/desktop/DesktopController;);
    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    move-object/from16 v24, v0

    #v24=(Reference,Lcom/sonyericsson/grid/GridSize;);
    move-object/from16 v0, v24

    iget v0, v0, Lcom/sonyericsson/grid/GridSize;->cols:I

    #v0=(Integer);
    move/from16 v24, v0

    #v24=(Integer);
    div-int v5, v22, v24

    .line 118
    .local v5, CellWidth:I
    :goto_4
    #v2=(Integer);v5=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/sonyericsson/home/layer/desktop/DesktopController;);
    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    move-object/from16 v24, v0

    #v24=(Reference,Lcom/sonyericsson/home/layer/HintView;);
    invoke-virtual/range {v24 .. v24}, Lcom/sonyericsson/home/layer/HintView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    move-object/from16 v25, v0

    #v25=(Reference,Lcom/sonyericsson/grid/GridSize;);
    move-object/from16 v0, v25

    iget v0, v0, Lcom/sonyericsson/grid/GridSize;->rows:I

    #v0=(Integer);
    move/from16 v25, v0

    #v25=(Integer);
    div-int v25, v17, v25

    move-object/from16 v0, p0

    #v0=(Reference,Lcom/sonyericsson/home/layer/desktop/DesktopController;);
    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    move-object/from16 v26, v0

    #v26=(Reference,Lcom/sonyericsson/grid/GridSize;);
    move-object/from16 v0, v26

    iget v0, v0, Lcom/sonyericsson/grid/GridSize;->rows:I

    #v0=(Integer);
    move/from16 v26, v0

    #v26=(Integer);
    mul-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    #v1=(Reference,Landroid/view/ViewGroup$MarginLayoutParams;);
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 119
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/sonyericsson/home/layer/desktop/DesktopController;);
    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sonyericsson/home/layer/HintView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    move-object/from16 v25, v0

    #v25=(Reference,Lcom/sonyericsson/grid/GridSize;);
    move-object/from16 v0, v25

    iget v0, v0, Lcom/sonyericsson/grid/GridSize;->rows:I

    #v0=(Integer);
    move/from16 v25, v0

    #v25=(Integer);
    div-int v25, v17, v25

    move-object/from16 v0, p0

    #v0=(Reference,Lcom/sonyericsson/home/layer/desktop/DesktopController;);
    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    move-object/from16 v26, v0

    #v26=(Reference,Lcom/sonyericsson/grid/GridSize;);
    move-object/from16 v0, v26

    iget v0, v0, Lcom/sonyericsson/grid/GridSize;->rows:I

    #v0=(Integer);
    move/from16 v26, v0

    #v26=(Integer);
    mul-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 121
    new-instance v24, Lcom/sonyericsson/grid/Grid;

    #v24=(UninitRef,Lcom/sonyericsson/grid/Grid;);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/sonyericsson/home/layer/desktop/DesktopController;);
    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    move-object/from16 v25, v0

    #v25=(Reference,Lcom/sonyericsson/grid/GridSize;);
    move-object/from16 v0, v24

    #v0=(UninitRef,Lcom/sonyericsson/grid/Grid;);
    move-object/from16 v1, v25

    invoke-direct {v0, v5, v4, v1}, Lcom/sonyericsson/grid/Grid;-><init>(IILcom/sonyericsson/grid/GridSize;)V

    #v0=(Reference,Lcom/sonyericsson/grid/Grid;);v24=(Reference,Lcom/sonyericsson/grid/Grid;);
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    .line 122
    return-void

    .line 64
    .end local v4           #CellHeight:I
    .end local v5           #CellWidth:I
    .end local v10           #deskPaginatorHeightLand:I
    .end local v11           #deskPaginatorHeightPort:I
    .end local v12           #deskStageCompesation:I
    .end local v17           #height:I
    .end local v22           #width:I
    :cond_0
    #v1=(Integer);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v17=(Uninit);v22=(Uninit);v24=(Integer);v26=(One);v27=(Uninit);
    const/high16 v24, 0x41f0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v9, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->toPixelsRound(FF)I

    move-result v11

    #v11=(Integer);
    goto/16 :goto_0

    .line 65
    .restart local v11       #deskPaginatorHeightPort:I
    :cond_1
    const/high16 v24, 0x41f0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v9, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->toPixelsRound(FF)I

    move-result v10

    #v10=(Integer);
    goto/16 :goto_1

    .line 66
    .restart local v10       #deskPaginatorHeightLand:I
    :cond_2
    const/high16 v24, 0x4220

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v9, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->toPixelsRound(FF)I

    move-result v12

    #v12=(Integer);
    goto/16 :goto_2

    .line 81
    .restart local v12       #deskStageCompesation:I
    :cond_3
    #v0=(PosByte);v24=(PosByte);
    sub-int v24, v14, v11

    #v24=(Integer);
    sub-int v17, v24, v21

    .restart local v17       #height:I
    #v17=(Integer);
    goto/16 :goto_3

    .line 94
    .end local v17           #height:I
    :cond_4
    #v0=(Boolean);v17=(Uninit);v24=(Boolean);
    sub-int v24, v14, v10

    #v24=(Integer);
    sub-int v17, v24, v21

    .line 95
    .restart local v17       #height:I
    #v17=(Integer);
    const/16 v24, 0x4

    #v24=(PosByte);
    move/from16 v0, v24

    #v0=(PosByte);
    if-eq v13, v0, :cond_5

    .line 97
    sub-int v24, v15, v19

    #v24=(Integer);
    sub-int v22, v24, v16

    .line 104
    .restart local v22       #width:I
    :goto_5
    #v22=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/sonyericsson/home/layer/desktop/DesktopController;);
    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    move-object/from16 v24, v0

    #v24=(Reference,Lcom/sonyericsson/paneview/PaneView;);
    const/16 v25, 0x0

    #v25=(Null);
    const/16 v26, 0x0

    #v26=(Null);
    move-object/from16 v0, v24

    move/from16 v1, v19

    move/from16 v2, v25

    #v2=(Null);
    move/from16 v3, v26

    #v3=(Null);
    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/sonyericsson/paneview/PaneView;->setPadding(IIII)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sonyericsson/home/layer/HintView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    #v27=(Null);
    move-object/from16 v0, v24

    move/from16 v1, v25

    #v1=(Null);
    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 106
    const/16 v24, 0x4

    #v24=(PosByte);
    move/from16 v0, v24

    #v0=(PosByte);
    if-eq v13, v0, :cond_6

    .line 108
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/sonyericsson/home/layer/desktop/DesktopController;);
    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    move-object/from16 v24, v0

    #v24=(Reference,Lcom/sonyericsson/home/layer/HintView;);
    invoke-virtual/range {v24 .. v24}, Lcom/sonyericsson/home/layer/HintView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v16

    #v2=(Integer);
    move/from16 v3, v26

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 115
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sonyericsson/grid/GridSize;->rows:I

    #v0=(Integer);
    move/from16 v24, v0

    #v24=(Integer);
    div-int v4, v17, v24

    .line 116
    .restart local v4       #CellHeight:I
    #v4=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/sonyericsson/home/layer/desktop/DesktopController;);
    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    move-object/from16 v24, v0

    #v24=(Reference,Lcom/sonyericsson/grid/GridSize;);
    move-object/from16 v0, v24

    iget v0, v0, Lcom/sonyericsson/grid/GridSize;->cols:I

    #v0=(Integer);
    move/from16 v24, v0

    #v24=(Integer);
    div-int v5, v22, v24

    .restart local v5       #CellWidth:I
    #v5=(Integer);
    goto/16 :goto_4

    .line 101
    .end local v4           #CellHeight:I
    .end local v5           #CellWidth:I
    .end local v22           #width:I
    :cond_5
    #v0=(PosByte);v1=(Integer);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v22=(Uninit);v24=(PosByte);v25=(Reference,Ljava/lang/String;);v26=(One);v27=(Uninit);
    move/from16 v22, v15

    .restart local v22       #width:I
    #v22=(Integer);
    goto :goto_5

    .line 112
    :cond_6
    #v1=(Null);v2=(Null);v3=(Null);v25=(Null);v26=(Null);v27=(Null);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/sonyericsson/home/layer/desktop/DesktopController;);
    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    move-object/from16 v24, v0

    #v24=(Reference,Lcom/sonyericsson/home/layer/HintView;);
    invoke-virtual/range {v24 .. v24}, Lcom/sonyericsson/home/layer/HintView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_6
.end method

.method private setupGridSize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const-string v2, "com.sonyericsson.home_preferences"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "numDesktopCols"

    const-string v3, "4"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/grid/GridSize;->cols:I

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const-string v2, "com.sonyericsson.home_preferences"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "numDesktopRows"

    const-string v3, "4"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/grid/GridSize;->rows:I

    .line 88
    return-void
.end method

.method private setupPaneIndicator(Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "desktopView"

    .prologue
    const/4 v5, 0x0

    .line 2139
    const v2, 0x7f0e001e

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/layer/PaneIndicator;

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    .line 2140
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2141
    .local v1, indicatorSize:Landroid/util/TypedValue;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0004

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2142
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    invoke-virtual {v2, v3, v5, v5}, Lcom/sonyericsson/home/layer/PaneIndicator;->setAppearance(FLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 2143
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->GetAutoHidePaginator()Z

    move-result v0

    .line 2145
    .local v0, fadeOnTimeout:Z
    if-eqz v0, :cond_0

    .line 2146
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    new-instance v3, Lcom/sonyericsson/home/layer/desktop/DesktopController$18;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$18;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/PaneIndicator;->setOnInactiveTimeoutListener(Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;)V

    .line 2152
    :cond_0
    return-void
.end method

.method private showNudgeIfNeeded(I)Z
    .locals 7
    .parameter "x"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2155
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    .line 2156
    .local v0, currentPane:I
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getNumberOfPanes()I

    move-result v1

    .line 2157
    .local v1, maxPane:I
    iget v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMarginLeft:I

    iget v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchNudgeOffset:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_1

    .line 2158
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 2159
    if-lez v0, :cond_3

    .line 2160
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/HintView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2161
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 2162
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNudgeShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/HintView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    move v2, v6

    .line 2176
    :goto_0
    return v2

    .line 2166
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getRight()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMarginRight:I

    iget v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchNudgeOffset:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_3

    .line 2167
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 2168
    sub-int v2, v1, v6

    if-ge v0, v2, :cond_3

    .line 2169
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/HintView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 2170
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 2171
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNudgeShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/HintView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    move v2, v6

    .line 2173
    goto :goto_0

    :cond_3
    move v2, v5

    .line 2176
    goto :goto_0
.end method

.method private toPixelsRound(FF)I
    .locals 2
    .parameter "density"
    .parameter "DipsVal"

    .prologue
    .line 78
    mul-float v0, p2, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private writeToStorageAsync(Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 2249
    new-instance v1, Lcom/sonyericsson/storage/Root;

    const-string v2, "desktop"

    invoke-direct {v1, v2}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 2250
    .local v1, root:Lcom/sonyericsson/storage/Root;
    const-string v2, "version"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/storage/Root;->put(Ljava/lang/String;I)V

    .line 2251
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getStorableModel()Ljava/util/ArrayList;

    move-result-object v0

    .line 2252
    .local v0, model:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 2253
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, p1}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;)V

    .line 2254
    return-void
.end method


# virtual methods
.method public SetOrientation(Z)V
    .locals 0
    .parameter "bIsLandscape"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOrientationLandscape:Z

    .line 11
    return-void
.end method

.method public addActivity(Lcom/sonyericsson/grid/GridLocation;Lcom/sonyericsson/home/data/ActivityInfo;)Z
    .locals 1
    .parameter "location"
    .parameter "activityInfo"

    .prologue
    .line 1392
    new-instance v0, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-direct {v0, p2}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Lcom/sonyericsson/home/data/ActivityInfo;)V

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v0

    return v0
.end method

.method public addAdvWidget(Ljava/lang/String;Lcom/sonyericsson/grid/GridLocation;)Z
    .locals 3
    .parameter "packageName"
    .parameter "location"

    .prologue
    .line 1310
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v2, p1, p2, p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->addNewWidget(Ljava/lang/String;Lcom/sonyericsson/grid/GridLocation;Lcom/sonyericsson/home/widget/OnWidgetConfigured;)Lcom/sonyericsson/home/data/AdvWidgetInfo;

    move-result-object v0

    .line 1311
    .local v0, info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    if-eqz v0, :cond_1

    .line 1312
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v1

    .line 1313
    .local v1, ret:Z
    if-nez v1, :cond_0

    .line 1315
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanupWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    :cond_0
    move v2, v1

    .line 1322
    .end local v1           #ret:Z
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public addFolder(Lcom/sonyericsson/grid/GridLocation;Ljava/lang/String;)Z
    .locals 1
    .parameter "location"
    .parameter "folderName"

    .prologue
    .line 1377
    new-instance v0, Lcom/sonyericsson/home/data/InfoGroup;

    invoke-direct {v0, p2}, Lcom/sonyericsson/home/data/InfoGroup;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v0

    return v0
.end method

.method public addOnSyncCompletedCallback(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    sget-object v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->UNINITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-eq v0, v1, :cond_0

    .line 1234
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1238
    :goto_0
    return-void

    .line 1236
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addOnWidgetsLoadedCallback(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 2506
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mIsWidgetLoadCompleted:Z

    if-eqz v0, :cond_0

    .line 2507
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2511
    :goto_0
    return-void

    .line 2509
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnWidgetsLoadedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addShortcut(Landroid/os/Bundle;Lcom/sonyericsson/grid/GridLocation;)Z
    .locals 5
    .parameter "shortcutData"
    .parameter "location"

    .prologue
    const/4 v4, 0x1

    .line 1404
    invoke-static {p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->create(Landroid/os/Bundle;)Lcom/sonyericsson/home/data/ShortcutInfo;

    move-result-object v1

    .line 1406
    .local v1, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    if-eqz v1, :cond_1

    .line 1407
    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1408
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getShortcutBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1409
    .local v0, shortcutBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1410
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v4}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 1413
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->add(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/graphics/Bitmap;)V

    move v2, v4

    .line 1418
    .end local v0           #shortcutBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addShortcutAsync(Landroid/os/Bundle;Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;)Z
    .locals 19
    .parameter "shortcutData"
    .parameter "callback"

    .prologue
    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    move-object v15, v0

    sget-object v16, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->UNINITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 1436
    new-instance v15, Ljava/lang/IllegalStateException;

    invoke-direct {v15}, Ljava/lang/IllegalStateException;-><init>()V

    throw v15

    .line 1439
    :cond_0
    const/4 v11, 0x0

    .line 1440
    .local v11, shortcutAdded:Z
    const-string v15, "duplicate"

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1442
    .local v9, duplicatesAllowed:Z
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->create(Landroid/os/Bundle;)Lcom/sonyericsson/home/data/ShortcutInfo;

    move-result-object v13

    .line 1444
    .local v13, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    if-eqz v13, :cond_5

    .line 1445
    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-object v15, v0

    invoke-virtual {v15, v13}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->get(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v15

    if-nez v15, :cond_7

    .line 1446
    :cond_1
    new-instance v8, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v8}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 1447
    .local v8, desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    new-instance v7, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v7, v13, v8}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    .line 1448
    .local v7, desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCenterPane()I

    move-result v6

    .line 1449
    .local v6, currentPane:I
    const/4 v10, 0x0

    .line 1450
    .local v10, panesChecked:I
    const/4 v14, -0x1

    .line 1462
    .local v14, sign:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    move v15, v0

    if-ge v10, v15, :cond_4

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-object v15, v0

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-virtual {v7}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v18

    move-object v0, v15

    move/from16 v1, v16

    move/from16 v2, v17

    move v3, v6

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getFirstEmptyLocation(IIILcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-object v15, v0

    invoke-virtual {v15, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->addItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getShortcutBitmap(Landroid/content/Context;Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1470
    .local v12, shortcutBitmap:Landroid/graphics/Bitmap;
    if-eqz v12, :cond_2

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v13}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v12

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 1474
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->writeToStorageAsync(Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    move-object v15, v0

    sget-object v16, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object v15, v0

    invoke-virtual {v15, v13, v12}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->add(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/graphics/Bitmap;)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1482
    :cond_3
    const/4 v11, 0x1

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-static {v15}, Lcom/sonyericsson/home/bidi/Utils;->getBidiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    .line 1484
    .local v5, ctx:Landroid/content/Context;
    const v15, 0x7f07001e

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v13}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object v0, v5

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object v0, v5

    move-object v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    .line 1495
    .end local v5           #ctx:Landroid/content/Context;
    .end local v12           #shortcutBitmap:Landroid/graphics/Bitmap;
    :cond_4
    if-nez v11, :cond_5

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-static {v15}, Lcom/sonyericsson/home/bidi/Utils;->getBidiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    .line 1497
    .restart local v5       #ctx:Landroid/content/Context;
    const v15, 0x7f070018

    const/16 v16, 0x0

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    .line 1509
    .end local v5           #ctx:Landroid/content/Context;
    .end local v6           #currentPane:I
    .end local v7           #desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .end local v8           #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .end local v10           #panesChecked:I
    .end local v14           #sign:I
    :cond_5
    :goto_1
    return v11

    .line 1490
    .restart local v6       #currentPane:I
    .restart local v7       #desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .restart local v8       #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .restart local v10       #panesChecked:I
    .restart local v14       #sign:I
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 1491
    mul-int v15, v14, v10

    add-int/2addr v6, v15

    .line 1492
    neg-int v14, v14

    goto/16 :goto_0

    .line 1501
    .end local v6           #currentPane:I
    .end local v7           #desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .end local v8           #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .end local v10           #panesChecked:I
    .end local v14           #sign:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-static {v15}, Lcom/sonyericsson/home/bidi/Utils;->getBidiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    .line 1502
    .restart local v5       #ctx:Landroid/content/Context;
    const v15, 0x7f070020

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v13}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object v0, v5

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object v0, v5

    move-object v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public addWidget(ILcom/sonyericsson/grid/GridLocation;)Z
    .locals 2
    .parameter "id"
    .parameter "location"

    .prologue
    .line 1298
    new-instance v0, Lcom/sonyericsson/home/data/WidgetInfo;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/home/data/WidgetInfo;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v0

    return v0
.end method

.method public bind(Landroid/app/Activity;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/widget/WidgetManager;Lcom/sonyericsson/home/widget/AdvWidgetManager;F)V
    .locals 13
    .parameter "owner"
    .parameter "desktopView"
    .parameter "transferHandler"
    .parameter "resourceLoader"
    .parameter "adapterHelper"
    .parameter "widgetManager"
    .parameter "advWidgetManager"
    .parameter "densityScaleFactor"

    .prologue
    .line 1051
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOwner:Landroid/app/Activity;

    if-eqz v8, :cond_0

    .line 1052
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOwner:Landroid/app/Activity;

    invoke-virtual {p0, v8}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->unbind(Landroid/app/Activity;)V

    .line 1054
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOwner:Landroid/app/Activity;

    .line 1056
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setContextDependentData()V

    .line 1058
    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 1059
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 1060
    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 1061
    move-object/from16 v0, p7

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    .line 1062
    const v8, 0x7f0e0034

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    .line 1064
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    const v9, 0x7f0e0016

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    .line 1065
    new-instance v8, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    move-object v0, v8

    move-object v1, p0

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;F)V

    iput-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    .line 1067
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1068
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->setOnInterceptTouchListener(Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout$OnInterceptTouchListener;)V

    .line 1070
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-direct {p0, v8}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setupPaneIndicator(Landroid/view/ViewGroup;)V

    .line 1072
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const v9, 0x7f0e0017

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/home/layer/HintView;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 1073
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const v9, 0x7f0e0018

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/home/layer/HintView;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 1074
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/HintView;->setHintType(I)V

    .line 1075
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/HintView;->setHintType(I)V

    .line 1078
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->createDynamics()Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v5

    .line 1081
    .local v5, dynamics:Lcom/sonyericsson/util/SpringDynamics;
    new-instance v8, Lcom/sonyericsson/home/layer/desktop/DesktopRendererFactory;

    invoke-direct {v8}, Lcom/sonyericsson/home/layer/desktop/DesktopRendererFactory;-><init>()V

    iput-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    .line 1084
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1085
    .local v7, res:Landroid/content/res/Resources;
    const v8, 0x7f090009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c8

    div-float v6, v8, v9

    .line 1086
    .local v6, paneMargin:F
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const v9, 0x7f0e0019

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/paneview/PaneView;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    .line 1087
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v8, v5}, Lcom/sonyericsson/paneview/PaneView;->setPaneDynamics(Lcom/sonyericsson/util/Dynamics;)V

    .line 1088
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v8, v6}, Lcom/sonyericsson/paneview/PaneView;->setPaneMargin(F)V

    .line 1089
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0a0022

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v12, 0x7f0a0023

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sonyericsson/paneview/PaneView;->setFocusPadding(IIII)V

    .line 1092
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 1093
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setPreferExternalFocus(Z)V

    .line 1095
    :cond_1
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 1096
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1097
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1098
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    sget v9, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    new-instance v10, Ljava/lang/ref/WeakReference;

    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    invoke-direct {v10, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v9, v10}, Lcom/sonyericsson/paneview/PaneView;->setTag(ILjava/lang/Object;)V

    .line 1100
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCenterPane()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    .line 1101
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setInteractionListener(Lcom/sonyericsson/paneview/PaneView$InteractionListener;)V

    .line 1102
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setItemViewListener(Lcom/sonyericsson/paneview/PaneView$ItemViewListener;)V

    .line 1103
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setPaneViewTouchListener(Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;)V

    .line 1104
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const v9, 0x7f020046

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setSelectedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1105
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const v9, 0x7f02000a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setFocusedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1106
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/16 v9, 0x258

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setVelocityThreshold(I)V

    .line 1109
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setSrcBlit(Z)V

    .line 1112
    const v8, 0x7f0a000e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1113
    .local v4, cellWidth:I
    const v8, 0x7f0a000f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1114
    .local v3, cellHeight:I
    new-instance v8, Lcom/sonyericsson/grid/Grid;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setupGrid()V

    .line 1116
    new-instance v8, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;

    move-object v0, v8

    move-object v1, p0

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/AdapterHelper;)V

    iput-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mBindSyncCompletedCallback:Ljava/lang/Runnable;

    .line 1145
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mBindSyncCompletedCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v8}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addOnSyncCompletedCallback(Ljava/lang/Runnable;)V

    .line 1147
    return-void
.end method

.method public calculateRect(ILandroid/graphics/Rect;)V
    .locals 4
    .parameter "position"
    .parameter "outRect"

    .prologue
    .line 2366
    new-instance v1, Lcom/sonyericsson/grid/GridRect;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->getItem(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/grid/GridRect;-><init>(Lcom/sonyericsson/grid/GridRect;)V

    .line 2367
    .local v1, sourceRect:Lcom/sonyericsson/grid/GridRect;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v2, v1, p2}, Lcom/sonyericsson/grid/Grid;->calculateRect(Lcom/sonyericsson/grid/GridRect;Landroid/graphics/Rect;)V

    .line 2368
    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 2371
    .local v0, paneViewLocationOnScreen:[I
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/paneview/PaneView;->getLocationOnScreen([I)V

    .line 2372
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2373
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2374
    return-void

    .line 2368
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public exitOverview()V
    .locals 1

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->leaveTransform()V

    .line 2313
    return-void
.end method

.method public findSmartSliderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2617
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->findSmartSliderViewRec(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCellRect(IILandroid/graphics/Rect;)V
    .locals 3
    .parameter "col"
    .parameter "row"
    .parameter "outRect"

    .prologue
    const/4 v1, 0x1

    .line 2403
    new-instance v0, Lcom/sonyericsson/grid/GridRect;

    invoke-direct {v0}, Lcom/sonyericsson/grid/GridRect;-><init>()V

    .line 2404
    .local v0, gridRect:Lcom/sonyericsson/grid/GridRect;
    iput p1, v0, Lcom/sonyericsson/grid/GridRect;->col:I

    .line 2405
    iput p2, v0, Lcom/sonyericsson/grid/GridRect;->row:I

    .line 2406
    iput v1, v0, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    .line 2407
    iput v1, v0, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    .line 2408
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v1, v0, p3}, Lcom/sonyericsson/grid/Grid;->calculateRect(Lcom/sonyericsson/grid/GridRect;Landroid/graphics/Rect;)V

    .line 2409
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2410
    return-void
.end method

.method public getCenterPane()I
    .locals 4

    .prologue
    .line 2324
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const-string v2, "com.sonyericsson.home_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "defaultHomescreen"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, iCtrScr:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v0, v1, 0x2

    :cond_0
    return v0
.end method

.method public getCurrentPane()I
    .locals 1

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    return v0
.end method

.method public getFreeCorners()[Z
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    return-object v0
.end method

.method public getIconRect(JLandroid/graphics/Rect;)Z
    .locals 3
    .parameter "openFolderUniqueId"
    .parameter "outRect"

    .prologue
    .line 2354
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2, p1, p2}, Lcom/sonyericsson/paneview/PaneView;->getView(J)Landroid/view/View;

    move-result-object v1

    .line 2355
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2356
    const v2, 0x7f0e001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2357
    .local v0, image:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2358
    invoke-virtual {v0, p3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2359
    const/4 v2, 0x1

    .line 2362
    .end local v0           #image:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getOverviewProgress()F
    .locals 1

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->getTransform()F

    move-result v0

    return v0
.end method

.method public hide(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1249
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 1251
    if-eqz p1, :cond_1

    .line 1252
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1257
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setTouchLocked(Z)V

    .line 1259
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideOpenGLAdvWidgets()V

    .line 1261
    :cond_0
    return-void

    .line 1254
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onHideFinished(Z)V

    goto :goto_0
.end method

.method protected hideOpenGLAdvWidgets()V
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->hideOpenGLAdvWidgets()V

    .line 1033
    return-void
.end method

.method public isInOverview()Z
    .locals 1

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->isTransformed()Z

    move-result v0

    return v0
.end method

.method public itemAddedTo(Lcom/sonyericsson/home/data/InfoGroup;)V
    .locals 4
    .parameter "infoGroup"

    .prologue
    .line 1358
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->get(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    .line 1359
    .local v0, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-eqz v0, :cond_0

    .line 1360
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->setNewUniqueID()V

    .line 1361
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 1362
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    new-instance v2, Lcom/sonyericsson/animation/BounceRenderer;

    invoke-direct {v2}, Lcom/sonyericsson/animation/BounceRenderer;-><init>()V

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->indexOf(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 1364
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1366
    :cond_0
    return-void
.end method

.method public moveToLeftPane()V
    .locals 1

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->moveToLeftPane()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2338
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 2340
    :cond_0
    return-void
.end method

.method public moveToPane(IZ)V
    .locals 2
    .parameter "pane"
    .parameter "animate"

    .prologue
    .line 2328
    if-eqz p2, :cond_0

    .line 2329
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    .line 2333
    :goto_0
    return-void

    .line 2331
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    goto :goto_0
.end method

.method public moveToRightPane()V
    .locals 1

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->moveToRightPane()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2345
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 2347
    :cond_0
    return-void
.end method

.method public notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2378
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->contains(Lcom/sonyericsson/home/data/Info;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2379
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    if-eqz v0, :cond_0

    .line 2380
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 2383
    :cond_0
    return-void
.end method

.method public onAirTouchEvent(IIII)V
    .locals 1
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"

    .prologue
    .line 1575
    const-string v0, "com.sonyericsson.wallpaper.hover"

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->sendWallpaperCommand(Ljava/lang/String;III)V

    .line 1576
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 2416
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->onPause()V

    .line 2418
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mCreatingFolder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-nez v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 2420
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mHintDesktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedHintRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 2424
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setItemViewListener(Lcom/sonyericsson/paneview/PaneView$ItemViewListener;)V

    .line 2425
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->stop()V

    .line 2426
    return-void
.end method

.method public onResume(Z)V
    .locals 3
    .parameter "dueToHomeButtonPressed"

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->onResume()V

    .line 2454
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->resumeWidgets()V

    .line 2455
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setItemViewListener(Lcom/sonyericsson/paneview/PaneView$ItemViewListener;)V

    .line 2457
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mCreatingFolder:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 2458
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    if-eqz v0, :cond_0

    .line 2459
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$19;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$19;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onCreateFolder(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;Z)V

    .line 2488
    :cond_0
    :goto_0
    return-void

    .line 2486
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->finishCreateFolder()V

    goto :goto_0
.end method

.method public onWidgetConfigured(Lcom/sonyericsson/home/data/AdvWidgetInfo;Lcom/sonyericsson/grid/GridLocation;)Z
    .locals 4
    .parameter "info"
    .parameter "location"

    .prologue
    .line 1346
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v1

    .line 1347
    .local v1, ret:Z
    if-nez v1, :cond_0

    .line 1348
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/home/bidi/Utils;->getBidiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 1349
    .local v0, ctx:Landroid/content/Context;
    const v2, 0x7f070018

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1351
    .end local v0           #ctx:Landroid/content/Context;
    :cond_0
    return v1
.end method

.method public removeAdvWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->remove(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 1334
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1335
    return-void
.end method

.method public removeShortcutSync(Landroid/os/Bundle;)Z
    .locals 10
    .parameter "shortcutData"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1520
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    sget-object v6, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->UNINITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-ne v5, v6, :cond_0

    .line 1521
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 1524
    :cond_0
    const-string v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1525
    .local v1, label:Ljava/lang/String;
    const-string v5, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 1526
    .local v3, shortcutIntent:Landroid/content/Intent;
    new-instance v2, Lcom/sonyericsson/home/data/ShortcutInfo;

    invoke-direct {v2, v1, v3, v9, v9}, Lcom/sonyericsson/home/data/ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;)V

    .line 1528
    .local v2, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v5, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->removeAll(Lcom/sonyericsson/home/data/Info;)I

    move-result v5

    if-lez v5, :cond_3

    move v4, v7

    .line 1530
    .local v4, shortcutRemoved:Z
    :goto_0
    if-eqz v4, :cond_2

    .line 1531
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sonyericsson/home/bidi/Utils;->getBidiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 1532
    .local v0, ctx:Landroid/content/Context;
    const v5, 0x7f07001f

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1537
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    if-eqz v5, :cond_1

    .line 1538
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1541
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    if-eqz v5, :cond_2

    .line 1542
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v5, v2}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->remove(Lcom/sonyericsson/home/data/Info;)V

    .line 1546
    .end local v0           #ctx:Landroid/content/Context;
    :cond_2
    return v4

    .end local v4           #shortcutRemoved:Z
    :cond_3
    move v4, v8

    .line 1528
    goto :goto_0
.end method

.method public setDesktopControllerListener(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    .line 1224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    .line 1225
    return-void
.end method

.method public setOverviewProgress(F)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->setTransform(F)V

    .line 2321
    return-void
.end method

.method public setSelfFocusable(Z)V
    .locals 1
    .parameter "focusable"

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/paneview/PaneView;->setFocusable(Z)V

    .line 2393
    return-void
.end method

.method public show(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 1267
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setTouchLocked(Z)V

    .line 1268
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 1270
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->reportFreeCorners(IZ)V

    .line 1272
    if-eqz p1, :cond_1

    .line 1273
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1278
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->resumeWidgets()V

    .line 1285
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showOpenGLAdvWidgets()V

    .line 1287
    :cond_0
    return-void

    .line 1275
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onShowFinished()V

    goto :goto_0
.end method

.method protected showOpenGLAdvWidgets()V
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->showOpenGLAdvWidgets()V

    .line 1026
    return-void
.end method

.method public unbind(Landroid/app/Activity;)V
    .locals 3
    .parameter "owner"

    .prologue
    const/4 v2, 0x0

    .line 1173
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOwner:Landroid/app/Activity;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOwner:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1174
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOwner:Landroid/app/Activity;

    .line 1175
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    sget-object v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-ne v0, v1, :cond_0

    .line 1176
    sget-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->MODEL_INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mBindSyncCompletedCallback:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->removeOnSyncCompletedCallback(Ljava/lang/Runnable;)V

    .line 1180
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mBindSyncCompletedCallback:Ljava/lang/Runnable;

    .line 1182
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1183
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->setOnInterceptTouchListener(Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout$OnInterceptTouchListener;)V

    .line 1184
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    .line 1186
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->unregisterInfoGroupListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;)V

    .line 1188
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/PaneIndicator;->setOnInactiveTimeoutListener(Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;)V

    .line 1189
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks()V

    .line 1190
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    .line 1191
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setScrollListener(Lcom/sonyericsson/paneview/PaneView$ScrollListener;)V

    .line 1192
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 1193
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1194
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1195
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setInteractionListener(Lcom/sonyericsson/paneview/PaneView$InteractionListener;)V

    .line 1196
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setItemViewListener(Lcom/sonyericsson/paneview/PaneView$ItemViewListener;)V

    .line 1197
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setPaneViewTouchListener(Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;)V

    .line 1198
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setOnLayoutListener(Lcom/sonyericsson/paneview/PaneView$OnLayoutListener;)V

    .line 1199
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    sget v1, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/paneview/PaneView;->setTag(ILjava/lang/Object;)V

    .line 1200
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setAdapter(Lcom/sonyericsson/paneview/PaneAdapter;)V

    .line 1201
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    .line 1203
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetLoadHandler:Lcom/sonyericsson/util/DeferredHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/util/DeferredHandler;->cancel()V

    .line 1204
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnWidgetsLoadedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mIsWidgetLoadCompleted:Z

    .line 1207
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    .line 1208
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 1209
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 1210
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 1211
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    .line 1212
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    .line 1213
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    .line 1214
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    .line 1215
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 1216
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 1217
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    .line 1218
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mViewInTransfer:Landroid/view/View;

    .line 1220
    :cond_1
    return-void
.end method
