.class public Lcom/sonyericsson/home/HomeActivity;
.super Landroid/app/Activity;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;,
        Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;,
        Lcom/sonyericsson/home/HomeActivity$SortDialog;,
        Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;,
        Lcom/sonyericsson/home/HomeActivity$AddDialog;,
        Lcom/sonyericsson/home/HomeActivity$DeskStandListener;,
        Lcom/sonyericsson/home/HomeActivity$MyInstanceState;
    }
.end annotation


# static fields
.field public static final ACTION_SET_RUNTIME_THEME:Ljava/lang/String; = "com.sonyericsson.theme.intent.action.SET_RUNTIME_THEME"

.field private static final AIR_TOUCH_KEY_CODE:I = 0x800

.field private static final APPTRAY_BUTTON_ANIMATION_LIMIT:I = 0x3

.field public static final APPWIDGET_HOST_ID:I = 0xa3d9739

.field private static final DEBUG:Z = false

.field private static final DIALOG_ADD:I = 0x1

.field private static final DIALOG_ADD_TO_STAGE:I = 0x3

.field private static final DIALOG_APPTRAY_SORT:I = 0x2

.field private static final DIALOG_FBI_APP_SHARE:I = 0x5

.field private static final DIALOG_PICK_ACTIVITY:I = 0x4

.field private static final GMAIL_PACKAGE:Ljava/lang/String; = "com.google.android.gm"

#the value of this static final field might be set in the static constructor
.field private static final INFO_TAG:I = 0x0

.field private static final INSTANCE_STATE_DESKTOP_PANE:Ljava/lang/String; = "desktop_pane"

.field private static final LAYER_APPTRAY:I = 0x3

.field private static final LAYER_CORNERS:I = 0x4

.field private static final LAYER_DESKTOP:I = 0x0

.field private static final LAYER_FOLDER:I = 0x2

.field private static final LAYER_STAGE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HomeActivity"

.field private static final MENU_GROUP_ALL:I = 0x0

.field private static final MENU_GROUP_DESKTOP_ONLY:I = 0x1

.field private static final MENU_ITEM_ID_ADD:I = 0x0

.field private static final MENU_ITEM_ID_SETTINGS:I = 0x2

.field private static final MENU_ITEM_ID_THEME:I = 0x3

.field private static final MENU_ITEM_ID_WALLPAPER:I = 0x1

.field private static final NORMAL_VIBRATE_DURATION:I = 0x32

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x2

.field private static final REQUEST_PICK_SHORTCUT:I = 0x1

.field private static final REQUEST_PICK_WALLPAPER:I = 0x4

.field private static final REQUEST_PICK_WIDGET_DIALOG:I = 0x5

.field private static final REQUEST_WIDGET_CONFIGURE:I = 0x3

.field private static final REQUEST_WIDGET_PICK:I = 0x0

.field private static final STK_PACKAGE:Ljava/lang/String; = "com.android.stk"

.field private static final UPDATE_APPTRAY_BUTTON_ANIMATION_INTERVAL:I = 0x866


# instance fields
.field private mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

.field private mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

.field private mAddFolderListener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

.field protected mAddTo:I

.field private mAddingFolder:Z

.field private final mAdvWidgetHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

.field private mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

.field private mAlive:Z

.field private mAppTrayButton:Landroid/view/View;

.field private mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

.field private mApptrayButtonAnim:Landroid/view/animation/Animation;

.field private mBadgeListener:Lcom/sonyericsson/home/badge/BadgeManager$BadgeListener;

.field private mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

.field private mButtonExitOverview:Landroid/view/View;

.field private mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

.field private mCurrentDialog:Landroid/app/Dialog;

.field private mCurrentMcc:I

.field private mCurrentMnc:I

.field private mCurrentSorting:I

.field private mDebugStartupMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultOrientation:I

.field private mDeskStandListener:Lcom/sonyericsson/home/HomeActivity$DeskStandListener;

.field private mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

.field private mDesktopLongPressLocation:Lcom/sonyericsson/grid/GridLocation;

.field private mDismissDeleteDialogOnResume:Z

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDropZoneController:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

.field private mFadeView:Lcom/sonyericsson/view/BackgroundFadeSrcXferView;

.field private mFbiAppShareDialog:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

.field private mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

.field private mFullScreenEffectPlaceholder:Landroid/view/ViewGroup;

.field private mHistoryFocus:Landroid/view/View;

.field private mHomeButton:Landroid/view/View;

.field private mHomeButtonPressed:Z

.field private mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

.field private mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private mLandscapeModeEnabled:Z

.field private mLastOpenFolder:Lcom/sonyericsson/home/data/InfoGroup;

.field private mLastOpenFolderLayer:I

.field private mLockCornerVisibility:Z

.field private mNetworkNameManager:Lcom/sonyericsson/home/networkname/NetworkNameManager;

.field private mOnPause:Z

.field private mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field protected mOrientationLandscape:Z

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mPickApplicationDialog:Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

.field private mRenamingFolder:Z

.field private mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

.field protected mSavedFolderText:Ljava/lang/String;

.field private mSmartSliderEnabled:Z

.field private mStageBreadth:I

.field private mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

.field private mStageLocation:I

.field private mStageView:Landroid/view/View;

.field private mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

.field private mStealFocusNextModeChange:Z

.field protected mSwitchButtonHideAnim:Landroid/view/animation/Animation;

.field private mSwitchButtonShowAnim:Landroid/view/animation/Animation;

.field private mThemeOptionEnabled:Z

.field private mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

.field private mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

.field private mUpdateAnimationTask:Ljava/lang/Runnable;

.field private mWaitingForTrashcanClose:Z

.field private mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

.field private mWillRetainNonConfigurationInstance:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    invoke-static {}, Lcom/sonyericsson/util/ViewTag;->createNextTag()I

    move-result v0

    sput v0, Lcom/sonyericsson/home/HomeActivity;->INFO_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 355
    const/4 v0, 0x5

    iput v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDefaultOrientation:I

    .line 2374
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$18;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/HomeActivity$18;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mUpdateAnimationTask:Ljava/lang/Runnable;

    .line 2785
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$19;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/HomeActivity$19;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    .line 2826
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$20;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/HomeActivity$20;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAddFolderListener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    .line 3064
    return-void
.end method

.method private GetScreenOrientation()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 10268
    const/4 v0, 0x5

    .line 10269
    .local v0, iRes:I
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sonyericsson.home_preferences"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "autoRotateScreen"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10271
    const/4 v0, -0x1

    .line 10273
    :cond_0
    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/HomeActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->hideDesktopAndOpenApptray(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/HomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWaitingForTrashcanClose:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/home/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/sonyericsson/home/HomeActivity;->mWaitingForTrashcanClose:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/HomeActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->hideAppTrayButton(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/appshare/DropZoneController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDropZoneController:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/home/HomeActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->showAppTrayButton(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->restartAppTrayButtonAnim()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/folder/FolderController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/grid/GridLocation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopLongPressLocation:Lcom/sonyericsson/grid/GridLocation;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/grid/GridLocation;)Lcom/sonyericsson/grid/GridLocation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopLongPressLocation:Lcom/sonyericsson/grid/GridLocation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/HomeActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->closeApptrayAndShowDesktop(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/home/HomeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageLocation:I

    return v0
.end method

.method static synthetic access$2002(Lcom/sonyericsson/home/HomeActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput p1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageLocation:I

    return p1
.end method

.method static synthetic access$2100(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/InfoGroupManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/data/InfoGroup;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/home/HomeActivity;->openFolder(Lcom/sonyericsson/home/data/InfoGroup;IZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonyericsson/home/HomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAlive:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/sonyericsson/home/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/sonyericsson/home/HomeActivity;->mDismissDeleteDialogOnResume:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/sonyericsson/home/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/sonyericsson/home/HomeActivity;->mAddingFolder:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/sonyericsson/home/HomeActivity;)Landroid/util/DisplayMetrics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/HomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStealFocusNextModeChange:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/sonyericsson/home/HomeActivity;ILjava/lang/Object;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/HomeActivity;->resolveRect(ILjava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/home/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/sonyericsson/home/HomeActivity;->mStealFocusNextModeChange:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/statistics/Statistics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->bounceAppTrayButton()V

    return-void
.end method

.method static synthetic access$3400(Lcom/sonyericsson/home/HomeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentSorting:I

    return v0
.end method

.method static synthetic access$3402(Lcom/sonyericsson/home/HomeActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput p1, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentSorting:I

    return p1
.end method

.method static synthetic access$3500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/view/BackgroundFadeSrcXferView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFadeView:Lcom/sonyericsson/view/BackgroundFadeSrcXferView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/networkname/NetworkNameManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mNetworkNameManager:Lcom/sonyericsson/home/networkname/NetworkNameManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/transfer/TransferView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/sonyericsson/home/HomeActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mButtonExitOverview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sonyericsson/home/HomeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageBreadth:I

    return v0
.end method

.method static synthetic access$4300(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/data/InfoGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mLastOpenFolder:Lcom/sonyericsson/home/data/InfoGroup;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sonyericsson/home/HomeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/sonyericsson/home/HomeActivity;->mLastOpenFolderLayer:I

    return v0
.end method

.method static synthetic access$4500(Lcom/sonyericsson/home/HomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mRenamingFolder:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->showHomeButton()V

    return-void
.end method

.method static synthetic access$4700(Lcom/sonyericsson/home/HomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mLockCornerVisibility:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/sonyericsson/home/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/sonyericsson/home/HomeActivity;->mLockCornerVisibility:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/resourceload/ResourceLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/data/Info;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->removeInfo(Lcom/sonyericsson/home/data/Info;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mApptrayButtonAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/sonyericsson/home/HomeActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mUpdateAnimationTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/sonyericsson/home/HomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mLandscapeModeEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/sonyericsson/home/HomeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDefaultOrientation:I

    return v0
.end method

.method static synthetic access$6100(Lcom/sonyericsson/home/HomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mThemeOptionEnabled:Z

    return v0
.end method

.method static synthetic access$6200(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->pickActivity()V

    return-void
.end method

.method static synthetic access$6300(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAddFolderListener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->pickShortcut()V

    return-void
.end method

.method static synthetic access$6500(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->pickWallpaper()V

    return-void
.end method

.method static synthetic access$6600(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->pickTheme()V

    return-void
.end method

.method static synthetic access$6700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/WidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFullScreenEffectPlaceholder:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    return-object v0
.end method

.method static synthetic access$7200()I
    .locals 1

    .prologue
    .line 143
    sget v0, Lcom/sonyericsson/home/HomeActivity;->INFO_TAG:I

    return v0
.end method

.method static synthetic access$7400(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->moveToFirstPaneConditional()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->removeAppTrayButtonAnim()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    return-object v0
.end method

.method private bounceAppTrayButton()V
    .locals 3

    .prologue
    .line 1015
    invoke-static {}, Lcom/sonyericsson/animation/BounceRenderer;->createAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 1016
    .local v0, jump:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1017
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonShowAnim:Landroid/view/animation/Animation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1018
    return-void
.end method

.method private closeApptrayAndShowDesktop(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 972
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->close(Z)V

    .line 973
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->hideHomeButton(Z)V

    .line 974
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->restartAppTrayButtonAnim()V

    .line 975
    return-void
.end method

.method private closeFolder(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/folder/FolderController;->closeFolder(Z)V

    .line 1898
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->restoreFocus()V

    .line 1899
    return-void
.end method

.method private createActivityFlow()V
    .locals 2

    .prologue
    .line 1118
    new-instance v0, Lcom/sonyericsson/home/HomeActivityFlow;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$7;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$7;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/HomeActivityFlow;-><init>(Lcom/sonyericsson/home/HomeActivityFlow$Presenter;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    .line 1366
    return-void
.end method

.method private createAppShareDropZone()V
    .locals 4

    .prologue
    .line 1721
    const/high16 v2, 0x7f0e

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1722
    .local v0, appShareView:Landroid/view/View;
    const v2, 0x7f0e0033

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1724
    .local v1, mainLayer:Landroid/view/View;
    new-instance v2, Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mDropZoneController:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    .line 1725
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mDropZoneController:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    new-instance v3, Lcom/sonyericsson/home/HomeActivity$12;

    invoke-direct {v3, p0, v1}, Lcom/sonyericsson/home/HomeActivity$12;-><init>(Lcom/sonyericsson/home/HomeActivity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->setDropZoneControllerListener(Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;)V

    .line 1760
    return-void
.end method

.method private createAppTray(Ljava/lang/Object;)V
    .locals 10
    .parameter "model"

    .prologue
    .line 1370
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    move v9, v0

    .line 1372
    .local v9, modelSupplied:Z
    :goto_0
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0037

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    const v3, 0x7f0e000a

    invoke-virtual {p0, v3}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v8, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Landroid/view/ViewGroup;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/statistics/Statistics;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    .line 1377
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mOrientationLandscape:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->SetOrientation(Z)V

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$8;

    invoke-direct {v1, p0, v9}, Lcom/sonyericsson/home/HomeActivity$8;-><init>(Lcom/sonyericsson/home/HomeActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setAppTrayControllerListener(Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;)V

    .line 1464
    if-eqz p1, :cond_1

    .line 1465
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setRetainedModel(Ljava/lang/Object;)V

    .line 1469
    :goto_1
    return-void

    .line 1370
    .end local v9           #modelSupplied:Z
    :cond_0
    const/4 v0, 0x0

    move v9, v0

    goto :goto_0

    .line 1467
    .restart local v9       #modelSupplied:Z
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->loadStoredModel()V

    goto :goto_1
.end method

.method private createBadgeListener()V
    .locals 2

    .prologue
    .line 1983
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeApplication;->getBadgeManager()Lcom/sonyericsson/home/badge/BadgeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    .line 1984
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$16;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/HomeActivity$16;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mBadgeListener:Lcom/sonyericsson/home/badge/BadgeManager$BadgeListener;

    .line 2011
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mBadgeListener:Lcom/sonyericsson/home/badge/BadgeManager$BadgeListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/badge/BadgeManager;->addBadgeListener(Lcom/sonyericsson/home/badge/BadgeManager$BadgeListener;)V

    .line 2012
    return-void
.end method

.method private createCornerButtons()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 1913
    const v0, 0x7f0e0010

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    .line 1914
    .local v6, cornerButtonsStub:Landroid/view/ViewStub;
    if-eqz v6, :cond_0

    .line 1915
    new-instance v0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/transfer/TransferHandler;Landroid/view/ViewStub;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    .line 1924
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1925
    .local v7, rect:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, v8, v8, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCellRect(IILandroid/graphics/Rect;)V

    .line 1926
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v0, v8, v7}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setExtraHintRect(ILandroid/graphics/Rect;)V

    .line 1928
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, v9, v8, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCellRect(IILandroid/graphics/Rect;)V

    .line 1929
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v7}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setExtraHintRect(ILandroid/graphics/Rect;)V

    .line 1931
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, v8, v9, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCellRect(IILandroid/graphics/Rect;)V

    .line 1932
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v7}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setExtraHintRect(ILandroid/graphics/Rect;)V

    .line 1934
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, v9, v9, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCellRect(IILandroid/graphics/Rect;)V

    .line 1935
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v0, v9, v7}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setExtraHintRect(ILandroid/graphics/Rect;)V

    .line 1937
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$15;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$15;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setCornerButtonsListener(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;)V

    .line 1980
    .end local v7           #rect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private createDesktop()V
    .locals 10

    .prologue
    .line 1472
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1473
    .local v9, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1475
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeApplication;->getDesktopController()Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mOrientationLandscape:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->SetOrientation(Z)V

    .line 1476
    const v0, 0x7f0e0034

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1477
    .local v2, desktopMasterView:Landroid/view/View;
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    iget v8, v9, Landroid/util/DisplayMetrics;->density:F

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->bind(Landroid/app/Activity;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/widget/WidgetManager;Lcom/sonyericsson/home/widget/AdvWidgetManager;F)V

    .line 1480
    const v0, 0x7f0e0035

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mButtonExitOverview:Landroid/view/View;

    .line 1481
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mButtonExitOverview:Landroid/view/View;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$9;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$9;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1489
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$10;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$10;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setDesktopControllerListener(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;)V

    .line 1666
    return-void
.end method

.method private createFolderLayer()V
    .locals 8

    .prologue
    .line 1669
    new-instance v7, Lcom/sonyericsson/home/HomeActivity$11;

    invoke-direct {v7, p0}, Lcom/sonyericsson/home/HomeActivity$11;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    .line 1713
    .local v7, folderListener:Lcom/sonyericsson/home/layer/folder/FolderListener;
    new-instance v0, Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e002d

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/home/layer/folder/FolderController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    .line 1717
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v0, v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->setFolderListener(Lcom/sonyericsson/home/layer/folder/FolderListener;)V

    .line 1718
    return-void
.end method

.method private createStage(Ljava/lang/Object;)V
    .locals 9
    .parameter "model"

    .prologue
    .line 1791
    const v0, 0x7f0e003f

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 1792
    .local v2, stageStub:Landroid/view/ViewStub;
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageBreadth:I

    .line 1793
    if-eqz v2, :cond_0

    .line 1794
    const v0, 0x7f0e0021

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1795
    .local v3, imageView:Landroid/widget/ImageView;
    new-instance v0, Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v8, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/home/layer/stage/StageController;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/ImageView;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/layer/InfoGroupManager;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    .line 1799
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$14;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$14;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/stage/StageController;->setStageControllerListener(Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;)V

    .line 1851
    if-eqz p1, :cond_1

    .line 1852
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->setRetainedModel(Ljava/lang/Object;)V

    .line 1858
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setSelfFocusable(Z)V

    .line 1860
    .end local v3           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void

    .line 1854
    .restart local v3       #imageView:Landroid/widget/ImageView;
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->loadStoredModel()V

    goto :goto_0
.end method

.method private createTrashcan()V
    .locals 3

    .prologue
    .line 1763
    const v1, 0x7f0e0040

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->updateApptrayButtonPosition(Landroid/view/View;)V

    .line 1764
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    .line 1765
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    new-instance v2, Lcom/sonyericsson/home/HomeActivity$13;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/HomeActivity$13;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->setTrashcanControllerListener(Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;)V

    .line 1788
    return-void
.end method

.method private finishAddWidget(I)V
    .locals 1
    .parameter "appWidgetId"

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/HomeActivityFlow;->addWidget(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2342
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->deleteAppWidgetId(I)V

    .line 2345
    :cond_0
    return-void
.end method

.method private hideAppTrayButton(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 978
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 979
    if-eqz p1, :cond_0

    .line 980
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 983
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 985
    :cond_1
    return-void
.end method

.method private hideDesktopAndOpenApptray(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 959
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->defocus()V

    .line 960
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hide(Z)V

    .line 961
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->hide(Z)V

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    if-eqz v0, :cond_1

    .line 965
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->hide(Z)V

    .line 967
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->removeAppTrayButtonAnim()V

    .line 968
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->hideAppTrayButton(Z)V

    .line 969
    return-void
.end method

.method private hideHomeButton(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 988
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 989
    if-eqz p1, :cond_0

    .line 990
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 994
    :cond_1
    return-void
.end method

.method private homeButtonAlternatives(Z)V
    .locals 3
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sonyericsson.home_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "homeButtonAction"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCenterPane()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->moveToPane(IZ)V

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->hideDesktopAndOpenApptray(Z)V

    goto :goto_0
.end method

.method private moveToFirstPaneConditional()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 10000
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 10001
    .local v1, localContext:Landroid/content/Context;
    const-string v2, "com.sonyericsson.home_preferences"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "apptrayStartFromFirstPane"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 10002
    .local v0, bStartFromFirstPane:Z
    if-eqz v0, :cond_0

    .line 10003
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->moveToPane(I)V

    .line 10004
    :cond_0
    return-void
.end method

.method private openFolder(Lcom/sonyericsson/home/data/InfoGroup;IZ)V
    .locals 5
    .parameter "infoGroup"
    .parameter "layer"
    .parameter "animate"

    .prologue
    .line 1872
    iput p2, p0, Lcom/sonyericsson/home/HomeActivity;->mLastOpenFolderLayer:I

    .line 1874
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1875
    .local v1, sourceRect:Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 1876
    .local v0, openfolder:Z
    packed-switch p2, :pswitch_data_0

    .line 1887
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1878
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getUniqueId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getIconRect(JLandroid/graphics/Rect;)Z

    move-result v0

    .line 1890
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->rememberFocus()V

    .line 1891
    if-eqz v0, :cond_0

    .line 1892
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v2, p1, v1, p3}, Lcom/sonyericsson/home/layer/folder/FolderController;->openFolder(Lcom/sonyericsson/home/data/InfoGroup;Landroid/graphics/Rect;Z)V

    .line 1894
    :cond_0
    return-void

    .line 1882
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getUniqueId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/sonyericsson/home/layer/stage/StageController;->getIconRect(JLandroid/graphics/Rect;)Z

    move-result v0

    .line 1883
    goto :goto_0

    .line 1876
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private pickActivity()V
    .locals 1

    .prologue
    .line 2315
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->showDialog(I)V

    .line 2316
    return-void
.end method

.method private pickShortcut()V
    .locals 4

    .prologue
    .line 2319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2320
    .local v0, pickIntent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2321
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2326
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/home/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2327
    return-void
.end method

.method private pickTheme()V
    .locals 3

    .prologue
    .line 2308
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.home.intent.ra3al.PREFERENCES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2309
    .local v1, pickTheme:Landroid/content/Intent;
    const v2, 0x7f07000f

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 2311
    .local v0, chooser:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2312
    return-void
.end method

.method private pickWallpaper()V
    .locals 3

    .prologue
    .line 2301
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2302
    .local v1, pickWallpaper:Landroid/content/Intent;
    const v2, 0x7f07000e

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 2304
    .local v0, chooser:Landroid/content/Intent;
    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/home/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2305
    return-void
.end method

.method private prepareWidget(I)V
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 2330
    if-eqz p1, :cond_0

    .line 2331
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetConfigureIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 2332
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 2333
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/home/HomeActivityFlow;->startActivitySafelyForResult(Landroid/content/Intent;I)V

    .line 2338
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2335
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->finishAddWidget(I)V

    goto :goto_0
.end method

.method private rememberFocus()V
    .locals 1

    .prologue
    .line 1902
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHistoryFocus:Landroid/view/View;

    .line 1903
    return-void
.end method

.method private removeAppTrayButtonAnim()V
    .locals 2

    .prologue
    .line 2383
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mApptrayButtonAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 2384
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mUpdateAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2386
    :cond_0
    return-void
.end method

.method private removeInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 2348
    instance-of v1, p1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v1, :cond_1

    .line 2349
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    check-cast p1, Lcom/sonyericsson/home/data/WidgetInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/WidgetInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/widget/WidgetManager;->deleteAppWidgetId(I)V

    .line 2361
    :cond_0
    :goto_0
    return-void

    .line 2350
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v1, :cond_2

    .line 2352
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    check-cast p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->widgetRemoved(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    goto :goto_0

    .line 2353
    .restart local p1
    :cond_2
    instance-of v1, p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v1, :cond_3

    .line 2354
    check-cast p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v0

    .line 2355
    .local v0, resourceName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2356
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/storage/Storage;->removeBitmap(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2358
    .end local v0           #resourceName:Ljava/lang/String;
    .restart local p1
    :cond_3
    instance-of v1, p1, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v1, :cond_0

    .line 2359
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    check-cast p1, Lcom/sonyericsson/home/data/InfoGroup;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->remove(Lcom/sonyericsson/home/data/InfoGroup;)Z

    goto :goto_0
.end method

.method private resolveRect(ILjava/lang/Object;)Landroid/graphics/Rect;
    .locals 3
    .parameter "layer"
    .parameter "location"

    .prologue
    .line 2015
    if-nez p2, :cond_0

    .line 2016
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2020
    :cond_0
    instance-of v1, p2, Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 2021
    check-cast p2, Landroid/graphics/Rect;

    .end local p2
    move-object v1, p2

    .line 2040
    :goto_0
    return-object v1

    .line 2024
    .restart local p2
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2026
    .local v0, result:Landroid/graphics/Rect;
    packed-switch p1, :pswitch_data_0

    .line 2037
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2028
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->calculateRect(ILandroid/graphics/Rect;)V

    :goto_1
    move-object v1, v0

    .line 2040
    goto :goto_0

    .line 2032
    .restart local p2
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/home/layer/stage/StageController;->calculateRect(ILandroid/graphics/Rect;)V

    goto :goto_1

    .line 2026
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private restartAppTrayButtonAnim()V
    .locals 4

    .prologue
    .line 2389
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mOnPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->getAppTrayStartCounter()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 2390
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mUpdateAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2391
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mUpdateAnimationTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x866

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2393
    :cond_0
    return-void
.end method

.method private restoreFocus()V
    .locals 1

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHistoryFocus:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1907
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHistoryFocus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1908
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHistoryFocus:Landroid/view/View;

    .line 1910
    :cond_0
    return-void
.end method

.method private roundToNearest100(J)I
    .locals 2
    .parameter "time"

    .prologue
    .line 864
    long-to-float v0, p1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private setWallpaperDimensions()V
    .locals 7

    .prologue
    .line 2364
    const-string v5, "wallpaper"

    invoke-virtual {p0, v5}, Lcom/sonyericsson/home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/WallpaperManager;

    .line 2366
    .local v4, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2367
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_0

    const/4 v5, 0x1

    move v2, v5

    .line 2369
    .local v2, isPortrait:Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    move v3, v5

    .line 2370
    .local v3, width:I
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    move v1, v5

    .line 2371
    .local v1, height:I
    :goto_2
    mul-int/lit8 v5, v3, 0x2

    invoke-direct {p0, v5, v1}, Lcom/sonyericsson/home/HomeActivity;->suggestDesiredDimensions2(II)V

    .line 2372
    return-void

    .line 2367
    .end local v1           #height:I
    .end local v2           #isPortrait:Z
    .end local v3           #width:I
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    goto :goto_0

    .line 2369
    .restart local v2       #isPortrait:Z
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    move v3, v5

    goto :goto_1

    .line 2370
    .restart local v3       #width:I
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    move v1, v5

    goto :goto_2
.end method

.method private setupSmartSlider()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1863
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1864
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v2, :cond_0

    .line 1866
    iput-boolean v2, p0, Lcom/sonyericsson/home/HomeActivity;->mSmartSliderEnabled:Z

    .line 1867
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 1869
    :cond_0
    return-void
.end method

.method private setupTransferView(Lcom/sonyericsson/home/transfer/TransferView;)V
    .locals 2
    .parameter "transferView"

    .prologue
    const/4 v1, 0x1

    .line 1021
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/HomeActivity$5;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/home/transfer/TransferView;->setTransferListener(Lcom/sonyericsson/home/transfer/TransferView$TransferListener;)V

    .line 1056
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mLandscapeModeEnabled:Z

    if-nez v0, :cond_0

    .line 1060
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/home/transfer/TransferView;->setFocusable(Z)V

    .line 1061
    const/high16 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/sonyericsson/home/transfer/TransferView;->setDescendantFocusability(I)V

    .line 1115
    :goto_0
    return-void

    .line 1063
    :cond_0
    invoke-virtual {p1, v1}, Lcom/sonyericsson/home/transfer/TransferView;->setFocusable(Z)V

    .line 1064
    invoke-virtual {p1, v1}, Lcom/sonyericsson/home/transfer/TransferView;->setResetFocusability(Z)V

    .line 1065
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/HomeActivity$6;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/home/transfer/TransferView;->setFocusHandler(Lcom/sonyericsson/home/transfer/TransferView$FocusHandler;)V

    goto :goto_0
.end method

.method private showAppTrayButton(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 997
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isSyncCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 999
    if-eqz p1, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1004
    :cond_1
    return-void
.end method

.method private showHomeButton()V
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1009
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1010
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1012
    :cond_0
    return-void
.end method

.method private suggestDesiredDimensions2(II)V
    .locals 5
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    .line 10006
    const-string v2, "wallpaper"

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    .line 10007
    .local v1, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 10008
    .local v0, display:Landroid/view/Display;
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sonyericsson.home_preferences"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "staticWallpaper"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10009
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result p1

    .line 10010
    :cond_0
    invoke-virtual {v1, p1, p2}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 10011
    return-void
.end method

.method private updateApptrayButtonPosition(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x0

    .line 123
    const-string v5, "com.sonyericsson.home_preferences"

    invoke-virtual {p0, v5, v8}, Lcom/sonyericsson/home/HomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "textInStage"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 124
    .local v1, bTextInStage:Z
    if-nez v1, :cond_0

    iget-boolean v5, p0, Lcom/sonyericsson/home/HomeActivity;->mOrientationLandscape:Z

    if-nez v5, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 128
    .local v0, SCALE:F
    const/high16 v3, -0x3e60

    .line 129
    .local v3, valueDips:F
    mul-float v5, v3, v0

    const/high16 v6, 0x3f00

    sub-float/2addr v5, v6

    float-to-int v4, v5

    .line 130
    .local v4, valuePixels:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 132
    .local v2, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v2, v8, v8, v8, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 134
    .end local v0           #SCALE:F
    .end local v2           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3           #valueDips:F
    .end local v4           #valuePixels:I
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 768
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x800

    if-ne v5, v6, :cond_1

    .line 769
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 770
    .local v0, action:I
    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isOpen()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v5

    if-nez v5, :cond_0

    .line 772
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v2

    .line 773
    .local v2, scan:I
    shr-int/lit8 v5, v2, 0x18

    and-int/lit8 v5, v5, 0x7f

    mul-int/lit8 v1, v5, 0x2

    .line 774
    .local v1, pressure:I
    shr-int/lit8 v5, v2, 0xc

    and-int/lit16 v3, v5, 0xfff

    .line 775
    .local v3, x:I
    shr-int/lit8 v5, v2, 0x0

    and-int/lit16 v4, v5, 0xfff

    .line 776
    .local v4, y:I
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v5, v0, v3, v4, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onAirTouchEvent(IIII)V

    move v5, v7

    .line 781
    .end local v0           #action:I
    .end local v1           #pressure:I
    .end local v2           #scan:I
    .end local v3           #x:I
    .end local v4           #y:I
    :goto_0
    return v5

    .restart local v0       #action:I
    :cond_0
    move v5, v7

    .line 779
    goto :goto_0

    .line 781
    .end local v0           #action:I
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_0
.end method

.method public isOnPause()Z
    .locals 1

    .prologue
    .line 2241
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mOnPause:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    .line 2247
    if-ne p2, v6, :cond_2

    if-eqz p3, :cond_2

    .line 2248
    packed-switch p1, :pswitch_data_0

    .line 2298
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2251
    :pswitch_1
    const-string v3, "advWidgetName"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2253
    .local v0, advWidgetName:Ljava/lang/String;
    invoke-static {p3}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetId(Landroid/content/Intent;)I

    move-result v1

    .line 2255
    .local v1, appWidgetId:I
    if-eqz v0, :cond_1

    .line 2259
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->deleteAppWidgetId(I)V

    .line 2260
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/home/HomeActivityFlow;->addAdvWidget(Ljava/lang/String;)V

    goto :goto_0

    .line 2263
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/home/HomeActivity;->prepareWidget(I)V

    goto :goto_0

    .line 2268
    .end local v0           #advWidgetName:Ljava/lang/String;
    .end local v1           #appWidgetId:I
    :pswitch_2
    invoke-static {p3}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetId(Landroid/content/Intent;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/home/HomeActivity;->finishAddWidget(I)V

    goto :goto_0

    .line 2272
    :pswitch_3
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    const/4 v4, 0x2

    invoke-virtual {v3, p3, v4}, Lcom/sonyericsson/home/HomeActivityFlow;->startActivitySafelyForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2276
    :pswitch_4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2277
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 2278
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/home/HomeActivityFlow;->addShortcut(Landroid/os/Bundle;)V

    goto :goto_0

    .line 2282
    .end local v2           #extras:Landroid/os/Bundle;
    :pswitch_5
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    invoke-virtual {v4}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->getId()Ljava/util/UUID;

    move-result-object v4

    const-string v5, "selected"

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onWidgetPickerResult(Ljava/util/UUID;I)V

    goto :goto_0

    .line 2287
    :cond_2
    packed-switch p1, :pswitch_data_1

    :pswitch_6
    goto :goto_0

    .line 2290
    :pswitch_7
    if-eqz p3, :cond_0

    .line 2291
    const-string v3, "appWidgetId"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2293
    .restart local v1       #appWidgetId:I
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->deleteAppWidgetId(I)V

    goto :goto_0

    .line 2248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 2287
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2191
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2192
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->onBackPressed()Z

    move-result v0

    .line 2194
    .local v0, handled:Z
    if-nez v0, :cond_0

    .line 2195
    invoke-direct {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->closeApptrayAndShowDesktop(Z)V

    .line 2204
    .end local v0           #handled:Z
    :cond_0
    :goto_0
    return-void

    .line 2197
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2198
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->exitOverview()V

    goto :goto_0

    .line 2199
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2200
    invoke-direct {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->closeFolder(Z)V

    goto :goto_0

    .line 2201
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2202
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->close()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 527
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 528
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iget v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMcc:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iget v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMnc:I

    if-eq v0, v1, :cond_1

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    const-string v1, "com.android.stk"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->packageChanged(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    const-string v1, "com.google.android.gm"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->packageChanged(Ljava/lang/String;)V

    .line 535
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMcc:I

    .line 536
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMnc:I

    .line 538
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 552
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 554
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 557
    .local v0, appContext:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {p1}, Lcom/sonyericsson/home/HomeApplication;->getPackageLoader()Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 558
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {p1}, Lcom/sonyericsson/home/HomeApplication;->getInfoGroupManager()Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 559
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;

    .line 560
    .local v4, lastState:Lcom/sonyericsson/home/HomeActivity$MyInstanceState;
    if-eqz v4, :cond_7

    .line 561
    iget-object v7, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 562
    iget-object v7, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->statistics:Lcom/sonyericsson/home/statistics/Statistics;

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    .line 569
    :goto_0
    new-instance v7, Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v8, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-direct {v7, v0, v8}, Lcom/sonyericsson/home/layer/AdapterHelper;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    .line 570
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sonyericsson/home/HomeActivity;->mLandscapeModeEnabled:Z

    .line 571
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sonyericsson/home/HomeActivity;->mThemeOptionEnabled:Z

    .line 573
    iget-boolean v7, p0, Lcom/sonyericsson/home/HomeActivity;->mLandscapeModeEnabled:Z

    if-nez v7, :cond_8

    .line 574
    const/4 v7, 0x1

    iput v7, p0, Lcom/sonyericsson/home/HomeActivity;->mDefaultOrientation:I

    .line 586
    :goto_1
    iget v7, p0, Lcom/sonyericsson/home/HomeActivity;->mDefaultOrientation:I

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->setRequestedOrientation(I)V

    .line 588
    new-instance v7, Lcom/sonyericsson/home/HomeActivity$DeskStandListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/sonyericsson/home/HomeActivity$DeskStandListener;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mDeskStandListener:Lcom/sonyericsson/home/HomeActivity$DeskStandListener;

    .line 592
    invoke-static {}, Lcom/sonyericsson/home/networkname/NetworkNameManager;->showNetworkName()Z

    move-result v7

    if-eqz v7, :cond_a

    const v7, 0x7f030019

    move v5, v7

    .line 594
    .local v5, mainResId:I
    :goto_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->setContentView(Landroid/view/View;)V

    .line 597
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x23

    invoke-virtual {v7, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 601
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_b

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lcom/sonyericsson/home/HomeActivity;->mOrientationLandscape:Z

    .line 603
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 604
    const v7, 0x7f0e0036

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity;->mFullScreenEffectPlaceholder:Landroid/view/ViewGroup;

    .line 605
    const v7, 0x7f0e0032

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/view/BackgroundFadeSrcXferView;

    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity;->mFadeView:Lcom/sonyericsson/view/BackgroundFadeSrcXferView;

    .line 606
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->setWallpaperDimensions()V

    .line 608
    const v7, 0x7f0e0031

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/home/transfer/TransferView;

    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    .line 609
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-direct {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->setupTransferView(Lcom/sonyericsson/home/transfer/TransferView;)V

    .line 611
    const v7, 0x7f04003f

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonHideAnim:Landroid/view/animation/Animation;

    .line 612
    const v7, 0x7f040040

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonShowAnim:Landroid/view/animation/Animation;

    .line 616
    new-instance v7, Lcom/sonyericsson/home/networkname/NetworkNameManager;

    const v8, 0x7f0e0038

    invoke-virtual {p0, v8}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/home/networkname/NetworkNameView;

    invoke-direct {v7, p1}, Lcom/sonyericsson/home/networkname/NetworkNameManager;-><init>(Lcom/sonyericsson/home/networkname/NetworkNameView;)V

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mNetworkNameManager:Lcom/sonyericsson/home/networkname/NetworkNameManager;

    .line 619
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonHideAnim:Landroid/view/animation/Animation;

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 620
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->setDefaultKeyMode(I)V

    .line 621
    const v7, 0x7f0e001d

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->updateApptrayButtonPosition(Landroid/view/View;)V

    .line 622
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    new-instance v8, Lcom/sonyericsson/home/HomeActivity$1;

    invoke-direct {v8, p0}, Lcom/sonyericsson/home/HomeActivity$1;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    const v7, 0x7f0e000d

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    .line 628
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 629
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    new-instance v8, Lcom/sonyericsson/home/HomeActivity$2;

    invoke-direct {v8, p0}, Lcom/sonyericsson/home/HomeActivity$2;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createActivityFlow()V

    .line 637
    new-instance v7, Lcom/sonyericsson/home/HomeActivity$3;

    invoke-direct {v7, p0}, Lcom/sonyericsson/home/HomeActivity$3;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 651
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    new-instance v8, Lcom/sonyericsson/home/HomeActivity$4;

    invoke-direct {v8, p0}, Lcom/sonyericsson/home/HomeActivity$4;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/InfoGroupManager;->setInfoListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;)V

    .line 657
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iget-object v8, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v7, p0, v8}, Lcom/sonyericsson/home/layer/InfoGroupManager;->bind(Landroid/app/Activity;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 660
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 661
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v1, Lcom/sonyericsson/home/widget/HomeAppWidgetHost;

    const v7, 0xa3d9739

    invoke-direct {v1, v0, v7}, Lcom/sonyericsson/home/widget/HomeAppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 663
    .local v1, appWidgetHost:Landroid/appwidget/AppWidgetHost;
    new-instance v7, Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-direct {v7, v0, v2, v1}, Lcom/sonyericsson/home/widget/WidgetManager;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/appwidget/AppWidgetHost;)V

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 664
    new-instance v7, Lcom/sonyericsson/home/widget/AdvWidgetManager;

    iget-object v8, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    iget-object v9, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-direct {v7, p0, v8, v9}, Lcom/sonyericsson/home/widget/AdvWidgetManager;-><init>(Landroid/app/Activity;Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    .line 667
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createDesktop()V

    .line 670
    if-eqz v4, :cond_c

    iget-object v7, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageModel:Ljava/lang/Object;

    :goto_4
    invoke-direct {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->createStage(Ljava/lang/Object;)V

    .line 673
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createCornerButtons()V

    .line 676
    if-eqz v4, :cond_d

    iget-object v7, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayModel:Ljava/lang/Object;

    :goto_5
    invoke-direct {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->createAppTray(Ljava/lang/Object;)V

    .line 679
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createFolderLayer()V

    .line 682
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createAppShareDropZone()V

    .line 685
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createTrashcan()V

    .line 688
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v7}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->getAppTrayStartCounter()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_0

    .line 689
    const/high16 v7, 0x7f04

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mApptrayButtonAnim:Landroid/view/animation/Animation;

    .line 692
    :cond_0
    if-eqz v4, :cond_5

    .line 693
    iget-boolean v7, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayIsOpen:Z

    if-eqz v7, :cond_1

    .line 694
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->hideDesktopAndOpenApptray(Z)V

    .line 695
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget v8, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayPane:I

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->moveToPane(I)V

    .line 696
    iget-boolean v7, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayIsEditing:Z

    if-eqz v7, :cond_1

    .line 697
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v7}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->enterEditMode()V

    .line 701
    :cond_1
    iget-boolean v7, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->isInOverview:Z

    if-eqz v7, :cond_2

    .line 702
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget v8, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->overviewProgress:F

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setOverviewProgress(F)V

    .line 703
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    if-eqz v7, :cond_2

    .line 705
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->hide(Z)V

    .line 709
    :cond_2
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v7, :cond_3

    .line 710
    iget-boolean v7, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageCreatingFolder:Z

    if-eqz v7, :cond_3

    .line 711
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/stage/StageController;->setCreatingFolder(Z)V

    .line 712
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v8, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/stage/StageController;->setDroppedAtInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 713
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v8, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/stage/StageController;->setSavedPickedUpInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 714
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    iget v8, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageHintLocation:I

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/stage/StageController;->setHintLocation(I)V

    .line 718
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    if-eqz v7, :cond_4

    .line 719
    iget v7, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openCorner:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 720
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    iget v8, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openCorner:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->expandCorner(IZ)V

    .line 723
    :cond_4
    iget-object v7, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->savedFolderText:Ljava/lang/String;

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    .line 724
    iget-boolean v7, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addingFolder:Z

    iput-boolean v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAddingFolder:Z

    .line 725
    iget v7, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolderSourceLayer:I

    iput v7, p0, Lcom/sonyericsson/home/HomeActivity;->mLastOpenFolderLayer:I

    .line 726
    iget-object v7, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolder:Lcom/sonyericsson/home/data/InfoGroup;

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mLastOpenFolder:Lcom/sonyericsson/home/data/InfoGroup;

    .line 727
    iget-boolean v7, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolderRenaming:Z

    iput-boolean v7, p0, Lcom/sonyericsson/home/HomeActivity;->mRenamingFolder:Z

    .line 728
    iget v7, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addTo:I

    iput v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    .line 729
    iget-object v7, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addFolderToDesktopLocation:Lcom/sonyericsson/grid/GridLocation;

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopLongPressLocation:Lcom/sonyericsson/grid/GridLocation;

    .line 730
    iget v7, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addFolderToStageLocation:I

    iput v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStageLocation:I

    .line 731
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-boolean v8, v4, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayDisableDuringSortDialog:Z

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setButtonsDisabled(Z)V

    .line 735
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createBadgeListener()V

    .line 737
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->setupSmartSlider()V

    .line 740
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 741
    .local v3, conf:Landroid/content/res/Configuration;
    iget v7, v3, Landroid/content/res/Configuration;->mcc:I

    iput v7, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMcc:I

    .line 742
    iget v7, v3, Landroid/content/res/Configuration;->mnc:I

    iput v7, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMnc:I

    .line 744
    iget-boolean v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAddingFolder:Z

    if-eqz v7, :cond_6

    .line 745
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    iget-object v8, p0, Lcom/sonyericsson/home/HomeActivity;->mAddFolderListener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    iget-object v9, p0, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/sonyericsson/home/HomeActivityFlow;->addFolder(Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;Ljava/lang/String;)V

    .line 748
    :cond_6
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAlive:Z

    .line 756
    return-void

    .line 564
    .end local v1           #appWidgetHost:Landroid/appwidget/AppWidgetHost;
    .end local v2           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v3           #conf:Landroid/content/res/Configuration;
    .end local v5           #mainResId:I
    :cond_7
    new-instance v7, Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v8, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v9, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {p1}, Lcom/sonyericsson/home/HomeApplication;->getBadgeManager()Lcom/sonyericsson/home/badge/BadgeManager;

    move-result-object v10

    invoke-direct {v7, v0, v8, v9, v10}, Lcom/sonyericsson/home/resourceload/ResourceLoader;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/badge/BadgeManager;)V

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 566
    new-instance v7, Lcom/sonyericsson/home/statistics/Statistics;

    iget-object v8, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-direct {v7, v0, v8}, Lcom/sonyericsson/home/statistics/Statistics;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    goto/16 :goto_0

    .line 578
    :cond_8
    const-string v7, "uimode"

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/UiModeManager;

    .line 579
    .local v6, uiModeManager:Landroid/app/UiModeManager;
    invoke-virtual {v6}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    .line 580
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->GetScreenOrientation()I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/home/HomeActivity;->mDefaultOrientation:I

    goto/16 :goto_1

    .line 582
    :cond_9
    const/4 v7, 0x4

    iput v7, p0, Lcom/sonyericsson/home/HomeActivity;->mDefaultOrientation:I

    goto/16 :goto_1

    .line 592
    .end local v6           #uiModeManager:Landroid/app/UiModeManager;
    :cond_a
    const v7, 0x7f030018

    move v5, v7

    goto/16 :goto_2

    .line 601
    .restart local v5       #mainResId:I
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 670
    .restart local v1       #appWidgetHost:Landroid/appwidget/AppWidgetHost;
    .restart local v2       #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 676
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_5
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 2085
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 2115
    :goto_0
    return-object v0

    .line 2087
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$AddDialog;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/home/HomeActivity$AddDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$AddDialog;->access$5000(Lcom/sonyericsson/home/HomeActivity$AddDialog;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2089
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$SortDialog;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/home/HomeActivity$SortDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$SortDialog;->access$5200(Lcom/sonyericsson/home/HomeActivity$SortDialog;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2091
    :pswitch_2
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->access$5400(Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2093
    :pswitch_3
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPickApplicationDialog:Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

    .line 2094
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPickApplicationDialog:Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->access$5600(Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2096
    :pswitch_4
    new-instance v0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFbiAppShareDialog:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    .line 2097
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFbiAppShareDialog:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$17;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$17;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->setDialogListener(Lcom/sonyericsson/home/layer/appshare/AppShareDialog$AppShareDialogListener;)V

    .line 2112
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFbiAppShareDialog:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2085
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2139
    .local v0, launchSettings:Landroid/content/Intent;
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2142
    const v1, 0x7f070002

    invoke-interface {p1, v4, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080033

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2144
    const v1, 0x7f070003

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2146
    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mThemeOptionEnabled:Z

    if-eqz v1, :cond_0

    .line 2147
    const/4 v1, 0x3

    const v2, 0x7f07003b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080042

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2150
    :cond_0
    const/4 v1, 0x2

    const v2, 0x7f070005

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080049

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2153
    return v4
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 869
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 873
    :cond_0
    iput-boolean v3, p0, Lcom/sonyericsson/home/HomeActivity;->mWaitingForTrashcanClose:Z

    .line 874
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->onDestroy()V

    .line 876
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 877
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mButtonExitOverview:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 880
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setDesktopControllerListener(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;)V

    .line 881
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setAppTrayControllerListener(Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;)V

    .line 882
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/folder/FolderController;->setFolderListener(Lcom/sonyericsson/home/layer/folder/FolderListener;)V

    .line 883
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/WidgetManager;->onDestroy()V

    .line 884
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/stage/StageController;->setStageControllerListener(Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;)V

    .line 886
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->onDestroy()V

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    if-eqz v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setCornerButtonsListener(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;)V

    .line 890
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->onDestroy()V

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mApptrayButtonAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    .line 894
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mApptrayButtonAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 897
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onDestroy()V

    .line 899
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->unbind(Landroid/app/Activity;)V

    .line 900
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->onDestroy()V

    .line 902
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDropZoneController:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->onDestroy()V

    .line 903
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFbiAppShareDialog:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    if-eqz v0, :cond_4

    .line 904
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFbiAppShareDialog:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->onDestroy()V

    .line 905
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mFbiAppShareDialog:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    .line 908
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->unbind(Landroid/app/Activity;)V

    .line 909
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->onDestroy()V

    .line 911
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWillRetainNonConfigurationInstance:Z

    if-nez v0, :cond_5

    .line 913
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->onDestroy()V

    .line 914
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 915
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-virtual {v0}, Lcom/sonyericsson/home/statistics/Statistics;->onDestroy()V

    .line 916
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    .line 919
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mBadgeListener:Lcom/sonyericsson/home/badge/BadgeManager$BadgeListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/badge/BadgeManager;->removeBadgeListener(Lcom/sonyericsson/home/badge/BadgeManager$BadgeListener;)V

    .line 926
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/transfer/TransferView;->setFocusHandler(Lcom/sonyericsson/home/transfer/TransferView$FocusHandler;)V

    .line 927
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/transfer/TransferView;->setTransferListener(Lcom/sonyericsson/home/transfer/TransferView$TransferListener;)V

    .line 928
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->removeAllViews()V

    .line 930
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    .line 931
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mDropZoneController:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    .line 932
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    .line 933
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    .line 934
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    .line 935
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    .line 937
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 938
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    .line 939
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 940
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    .line 941
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mNetworkNameManager:Lcom/sonyericsson/home/networkname/NetworkNameManager;

    .line 943
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    .line 944
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mStageView:Landroid/view/View;

    .line 945
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mFadeView:Lcom/sonyericsson/view/BackgroundFadeSrcXferView;

    .line 946
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mFullScreenEffectPlaceholder:Landroid/view/ViewGroup;

    .line 947
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    .line 948
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    .line 949
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mButtonExitOverview:Landroid/view/View;

    .line 951
    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    .line 953
    iput-boolean v3, p0, Lcom/sonyericsson/home/HomeActivity;->mAlive:Z

    .line 955
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 956
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2209
    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSmartSliderEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v1, p1}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2210
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->findSmartSliderView()Landroid/view/View;

    move-result-object v0

    .line 2211
    .local v0, smartSliderView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2212
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 2213
    const/4 v1, 0x1

    .line 2217
    .end local v0           #smartSliderView:Landroid/view/View;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 2222
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2226
    .local v0, handled:Z
    if-nez v0, :cond_0

    const/16 v1, 0x54

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    .line 2228
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sonyericsson/home/HomeActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    move v1, v4

    .line 2233
    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/high16 v7, 0x40

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2046
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2048
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2049
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_4

    move v0, v6

    .line 2051
    .local v0, alreadyHome:Z
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v3}, Lcom/sonyericsson/home/transfer/TransferView;->cancelTransfer()V

    .line 2053
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v3}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->hasPendingWidgets()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2054
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v3}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanupPendingWidgets()V

    .line 2057
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_5

    .line 2058
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->cancel()V

    .line 2070
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/home/layer/folder/FolderController;->setRenamingFolder(Z)V

    .line 2073
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    .line 2074
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2075
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 2076
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2079
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iput-boolean v6, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    .line 2081
    .end local v0           #alreadyHome:Z
    .end local v2           #v:Landroid/view/View;
    :cond_3
    return-void

    :cond_4
    move v0, v5

    .line 2049
    goto :goto_0

    .line 2059
    .restart local v0       #alreadyHome:Z
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2060
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->exitOverview()V

    goto :goto_1

    .line 2061
    :cond_6
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isSyncCompleted()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2062
    invoke-direct {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->closeApptrayAndShowDesktop(Z)V

    goto :goto_1

    .line 2063
    :cond_7
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2064
    invoke-direct {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->closeFolder(Z)V

    goto :goto_1

    .line 2065
    :cond_8
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2066
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->close()V

    goto :goto_1

    .line 2067
    :cond_9
    if-eqz v0, :cond_1

    .line 2068
    invoke-direct {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->homeButtonAlternatives(Z)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 2169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2185
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 2171
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopLongPressLocation:Lcom/sonyericsson/grid/GridLocation;

    .line 2172
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    .line 2173
    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/HomeActivity;->showDialog(I)V

    move v0, v1

    .line 2174
    goto :goto_0

    .line 2177
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->pickWallpaper()V

    move v0, v1

    .line 2178
    goto :goto_0

    .line 2181
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->pickTheme()V

    move v0, v1

    .line 2182
    goto :goto_0

    .line 2169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 803
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 805
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onPause()V

    .line 807
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDropZoneController:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->onPause()V

    .line 809
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->onPause()V

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->onPause()V

    .line 814
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mNetworkNameManager:Lcom/sonyericsson/home/networkname/NetworkNameManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/networkname/NetworkNameManager;->onPause()V

    .line 816
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->cancelTransfer()V

    .line 818
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 820
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->removeAppTrayButtonAnim()V

    .line 821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mOnPause:Z

    .line 822
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 2120
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 2121
    packed-switch p1, :pswitch_data_0

    .line 2134
    .end local p2
    :goto_0
    return-void

    .line 2123
    .restart local p2
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPickApplicationDialog:Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->init()V

    goto :goto_0

    .line 2128
    :pswitch_1
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2129
    iput-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDismissDeleteDialogOnResume:Z

    goto :goto_0

    .line 2132
    .restart local p2
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFbiAppShareDialog:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-virtual {v0, p2, p3}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->prepareDialog(Landroid/app/Dialog;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2158
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2161
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {p1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2162
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2164
    return v1

    :cond_0
    move v0, v2

    .line 2161
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2162
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 519
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 520
    const-string v1, "desktop_pane"

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCenterPane()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 522
    .local v0, pane:I
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->moveToPane(IZ)V

    .line 523
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 826
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 828
    iput-boolean v2, p0, Lcom/sonyericsson/home/HomeActivity;->mOnPause:Z

    .line 829
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mNetworkNameManager:Lcom/sonyericsson/home/networkname/NetworkNameManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/networkname/NetworkNameManager;->onResume()V

    .line 831
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->cancelTransfer()V

    .line 833
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->restartAppTrayButtonAnim()V

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->isInTouchMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStealFocusNextModeChange:Z

    .line 840
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 844
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDismissDeleteDialogOnResume:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    if-nez v0, :cond_1

    .line 845
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onResume(Z)V

    .line 849
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_2

    .line 850
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/stage/StageController;->onResume(Z)V

    .line 853
    :cond_2
    iput-boolean v2, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    .line 861
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 456
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getChangingConfigurations()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isSyncCompleted()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 458
    iput-boolean v2, p0, Lcom/sonyericsson/home/HomeActivity;->mWillRetainNonConfigurationInstance:Z

    .line 459
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;

    invoke-direct {v0}, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;-><init>()V

    .line 461
    .local v0, state:Lcom/sonyericsson/home/HomeActivity$MyInstanceState;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->releaseNonRetainedObjects()V

    .line 462
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/AdapterHelper;->unbindDrawables()V

    .line 464
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->statistics:Lcom/sonyericsson/home/statistics/Statistics;

    .line 465
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 466
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->getModel()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageModel:Ljava/lang/Object;

    .line 468
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->isCreatingFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    iput-boolean v2, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageCreatingFolder:Z

    .line 470
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->getDroppedAtInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

    .line 471
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->getSavedPickedUpInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    .line 472
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->getHintLocation()I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageHintLocation:I

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->getModel()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayModel:Ljava/lang/Object;

    .line 477
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isOpen()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayIsOpen:Z

    .line 478
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->getButtonsDisabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayDisableDuringSortDialog:Z

    .line 479
    iget-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayIsOpen:Z

    if-eqz v1, :cond_1

    .line 480
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->getCurrentPane()I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayPane:I

    .line 481
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isEditing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayIsEditing:Z

    .line 483
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->isInOverview:Z

    .line 484
    iget-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->isInOverview:Z

    if-eqz v1, :cond_2

    .line 485
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getOverviewProgress()F

    move-result v1

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->overviewProgress:F

    .line 487
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->isOpen()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->isFolderOpen:Z

    .line 488
    iget-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->isFolderOpen:Z

    if-eqz v1, :cond_3

    .line 489
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->getCurrentFolder()Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolder:Lcom/sonyericsson/home/data/InfoGroup;

    .line 490
    iget v1, p0, Lcom/sonyericsson/home/HomeActivity;->mLastOpenFolderLayer:I

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolderSourceLayer:I

    .line 491
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->isRenamingFolder()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolderRenaming:Z

    .line 493
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    if-eqz v1, :cond_4

    .line 494
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->getOpenCorner()I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openCorner:I

    .line 498
    :goto_0
    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAddingFolder:Z

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addingFolder:Z

    .line 499
    iget v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addTo:I

    .line 500
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopLongPressLocation:Lcom/sonyericsson/grid/GridLocation;

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addFolderToDesktopLocation:Lcom/sonyericsson/grid/GridLocation;

    .line 501
    iget v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageLocation:I

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addFolderToStageLocation:I

    .line 502
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->savedFolderText:Ljava/lang/String;

    move-object v1, v0

    .line 507
    .end local v0           #state:Lcom/sonyericsson/home/HomeActivity$MyInstanceState;
    :goto_1
    return-object v1

    .line 496
    .restart local v0       #state:Lcom/sonyericsson/home/HomeActivity$MyInstanceState;
    :cond_4
    const/4 v1, -0x1

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openCorner:I

    goto :goto_0

    .line 507
    .end local v0           #state:Lcom/sonyericsson/home/HomeActivity$MyInstanceState;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 512
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 514
    const-string v0, "desktop_pane"

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCurrentPane()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 515
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 786
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 788
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDeskStandListener:Lcom/sonyericsson/home/HomeActivity$DeskStandListener;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sonyericsson.hardware.action.ACTION_USB_OTG_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/home/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 790
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/WidgetManager;->startListening()V

    .line 791
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 795
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 797
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDeskStandListener:Lcom/sonyericsson/home/HomeActivity$DeskStandListener;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 798
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/WidgetManager;->stopListening()V

    .line 799
    return-void
.end method
