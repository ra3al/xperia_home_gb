.class public Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;
.super Ljava/lang/Object;
.source "CornerButtonsController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;
    }
.end annotation


# static fields
.field public static final BOTTOM_LEFT:I = 0x2

.field public static final BOTTOM_RIGHT:I = 0x3

.field private static final CORNERS:[I = null

.field private static final CUSTOM_SETTINGS_PROVIDER:[Landroid/net/Uri; = null

.field public static final INVALID_INDEX:I = -0x1

.field protected static final NORMAL_VIBRATE_DURATION:J = 0xfL

.field private static final PRODUCT_DEFAULT_SETTINGS_FILES:[Ljava/lang/String; = null

.field private static final STORAGE_ENTITY_NAME:Ljava/lang/String; = "corners"

.field private static final STORAGE_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final STORAGE_VERSION_VALUE:I = 0x1

.field public static final TOP_LEFT:I = 0x0

.field public static final TOP_RIGHT:I = 0x1

.field private static final mCornerButtonConfigResources:[I

.field private static final mCornerButtonsIDs:[I


# instance fields
.field private fadeIn:Landroid/view/animation/Animation;

.field private fadeOut:Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;

.field private mCornerButtonControllerListener:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerButtonControllerListener;

.field private mCornerButtonControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;",
            ">;"
        }
    .end annotation
.end field

.field private mCornersView:Landroid/view/ViewGroup;

.field private mDimView:Landroid/view/View;

.field private mDimViewClickListener:Landroid/view/View$OnClickListener;

.field private mIgnoreOnCollapsed:Z

.field private mListener:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;

.field private mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mReadHandle:Ljava/lang/Object;

.field private mSyncCompleted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 114
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->CORNERS:[I

    .line 119
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonsIDs:[I

    .line 125
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonConfigResources:[I

    .line 133
    new-array v0, v2, [Landroid/net/Uri;

    const-string v1, "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.home/custom_settings_topleftcornerbutton.xml"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.home/custom_settings_toprightcornerbutton.xml"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.home/custom_settings_bottomleftcornerbutton.xml"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.home/custom_settings_bottomrightcornerbutton.xml"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->CUSTOM_SETTINGS_PROVIDER:[Landroid/net/Uri;

    .line 141
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "/etc/customization/settings/com/sonyericsson/home/default_settings_topleftcornerbutton.xml"

    aput-object v1, v0, v3

    const-string v1, "/etc/customization/settings/com/sonyericsson/home/default_settings_toprightcornerbutton.xml"

    aput-object v1, v0, v4

    const-string v1, "/etc/customization/settings/com/sonyericsson/home/default_settings_bottomleftcornerbutton.xml"

    aput-object v1, v0, v5

    const-string v1, "/etc/customization/settings/com/sonyericsson/home/default_settings_bottomrightcornerbutton.xml"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->PRODUCT_DEFAULT_SETTINGS_FILES:[Ljava/lang/String;

    return-void

    .line 114
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 119
    :array_1
    .array-data 0x4
        0x12t 0x0t 0xet 0x7ft
        0x13t 0x0t 0xet 0x7ft
        0x14t 0x0t 0xet 0x7ft
        0x15t 0x0t 0xet 0x7ft
    .end array-data

    .line 125
    :array_2
    .array-data 0x4
        0x6t 0x0t 0x5t 0x7ft
        0x7t 0x0t 0x5t 0x7ft
        0x1t 0x0t 0x5t 0x7ft
        0x2t 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/transfer/TransferHandler;Landroid/view/ViewStub;)V
    .locals 2
    .parameter "context"
    .parameter "packageLoader"
    .parameter "resourceLoader"
    .parameter "adapterHelper"
    .parameter "transferHandler"
    .parameter "cornersViewStub"

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonsIDs:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllers:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$1;-><init>(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mDimViewClickListener:Landroid/view/View$OnClickListener;

    .line 187
    new-instance v0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$2;-><init>(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 220
    new-instance v0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$3;-><init>(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllerListener:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerButtonControllerListener;

    .line 292
    iput-object p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mContext:Landroid/content/Context;

    .line 293
    iput-object p2, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 295
    invoke-virtual {p6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornersView:Landroid/view/ViewGroup;

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornersView:Landroid/view/ViewGroup;

    const v1, 0x7f0e0011

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mDimView:Landroid/view/View;

    .line 298
    const v0, 0x7f040007

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->fadeIn:Landroid/view/animation/Animation;

    .line 299
    const v0, 0x7f040008

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->fadeOut:Landroid/view/animation/Animation;

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornersView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p4, p5, p3}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->createControllers(Landroid/view/View;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 304
    invoke-direct {p0, p3}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->readStorageAndSync(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 305
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->readModel(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->readCustomizedModel(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mSyncCompleted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->writeToStorage()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;Lcom/sonyericsson/cornerbutton/CornerButtonController;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->closeAllCornerButtonsExcept(Lcom/sonyericsson/cornerbutton/CornerButtonController;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->dim(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mIgnoreOnCollapsed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->clearDim()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mListener:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mReadHandle:Ljava/lang/Object;

    return-object p1
.end method

.method private clearDim()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mDimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mDimView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mDimView:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 493
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mDimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mListener:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mListener:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;->onClosed()V

    .line 498
    :cond_0
    return-void
.end method

.method private closeAllCornerButtonsExcept(Lcom/sonyericsson/cornerbutton/CornerButtonController;)V
    .locals 4
    .parameter "controller"

    .prologue
    const/4 v3, 0x0

    .line 458
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mIgnoreOnCollapsed:Z

    .line 459
    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    .line 460
    .local v0, homeCornerButtonController:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->collapseButton()V

    goto :goto_1

    .end local v0           #homeCornerButtonController:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    move v2, v3

    .line 458
    goto :goto_0

    .line 464
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    iput-boolean v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mIgnoreOnCollapsed:Z

    .line 465
    return-void
.end method

.method private createControllers(Landroid/view/View;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 11
    .parameter "view"
    .parameter "adapterHelper"
    .parameter "transferHandler"
    .parameter "resourceLoader"

    .prologue
    .line 442
    sget-object v7, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonsIDs:[I

    .local v7, arr$:[I
    array-length v10, v7

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v10, :cond_0

    aget v9, v7, v8

    .line 443
    .local v9, id:I
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cornerbutton/CornerButton;

    .line 444
    .local v2, cornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;
    iget-object v9, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllers:Ljava/util/ArrayList;

    .end local v9           #id:I
    new-instance v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllerListener:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerButtonControllerListener;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;-><init>(Landroid/content/Context;Lcom/sonyericsson/cornerbutton/CornerButton;Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerButtonControllerListener;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 449
    .end local v2           #cornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;
    :cond_0
    return-void
.end method

.method private dim(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mDimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mDimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 475
    if-eqz p1, :cond_0

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mDimView:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->fadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mDimView:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mDimViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mListener:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mListener:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;->onOpened()V

    .line 483
    :cond_1
    return-void
.end method

.method private readCustomizedModel(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 577
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 582
    .local v1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    new-instance v0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-direct {v0, v2, v1, v3}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    .line 584
    .local v0, cust:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;
    sget-object v2, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->PRODUCT_DEFAULT_SETTINGS_FILES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2, v4}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->applyCustomization(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 587
    sget-object v2, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonConfigResources:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2, v4}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->applyCustomization(IZ)Z

    .line 590
    :cond_0
    sget-object v2, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->CUSTOM_SETTINGS_PROVIDER:[Landroid/net/Uri;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->applyCustomization(Landroid/net/Uri;Z)Z

    .line 591
    return-object v1
.end method

.method private readModel(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/storage/Node;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;"
        }
    .end annotation

    .prologue
    .line 554
    .local p1, childNodes:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/storage/Node;>;"
    const/4 v1, 0x0

    .line 555
    .local v1, node:Lcom/sonyericsson/storage/Node;
    const/4 v0, 0x0

    .line 556
    .local v0, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p2, :cond_0

    .line 557
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #node:Lcom/sonyericsson/storage/Node;
    check-cast v1, Lcom/sonyericsson/storage/Node;

    .line 559
    .restart local v1       #node:Lcom/sonyericsson/storage/Node;
    :cond_0
    if-eqz v1, :cond_1

    .line 561
    const-class v2, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 565
    .restart local v0       #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 567
    :cond_1
    return-object v0
.end method

.method private readStorageAndSync(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 3
    .parameter "resourceLoader"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mContext:Landroid/content/Context;

    const-string v1, "corners"

    new-instance v2, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;-><init>(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/storage/Storage;->readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mReadHandle:Ljava/lang/Object;

    .line 543
    return-void
.end method

.method private writeToStorage()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 598
    iget-boolean v4, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mSyncCompleted:Z

    if-eqz v4, :cond_1

    .line 599
    new-instance v3, Lcom/sonyericsson/storage/Root;

    const-string v4, "corners"

    invoke-direct {v3, v4}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 600
    .local v3, root:Lcom/sonyericsson/storage/Root;
    const-string v4, "version"

    invoke-virtual {v3, v4, v6}, Lcom/sonyericsson/storage/Root;->put(Ljava/lang/String;I)V

    .line 601
    iget-object v4, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    .line 602
    .local v0, homeCornerButtonController:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getModel()Ljava/util/ArrayList;

    move-result-object v2

    .line 603
    .local v2, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    const-class v4, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    goto :goto_0

    .line 605
    .end local v0           #homeCornerButtonController:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    .end local v2           #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v6}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Z)V

    .line 607
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #root:Lcom/sonyericsson/storage/Root;
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->closeAllCornerButtonsExcept(Lcom/sonyericsson/cornerbutton/CornerButtonController;)V

    .line 378
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->clearDim()V

    .line 379
    return-void
.end method

.method public expandCorner(IZ)V
    .locals 1
    .parameter "corner"
    .parameter "animate"

    .prologue
    .line 618
    if-gez p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_1

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->expandButton(Z)V

    .line 621
    :cond_1
    return-void
.end method

.method public getCornerVisibility()[Z
    .locals 6

    .prologue
    .line 366
    sget-object v5, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->CORNERS:[I

    array-length v5, v5

    new-array v4, v5, [Z

    .line 367
    .local v4, visibility:[Z
    sget-object v0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->CORNERS:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 368
    .local v1, corner:I
    iget-object v5, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllers:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-virtual {v5}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->isShowing()Z

    move-result v5

    aput-boolean v5, v4, v1

    .line 367
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    .end local v1           #corner:I
    :cond_0
    return-object v4
.end method

.method public getOpenCorner()I
    .locals 2

    .prologue
    .line 388
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 393
    :goto_1
    return v1

    .line 388
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public hide(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    .line 332
    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    .line 333
    .local v0, homeCornerButtonController:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->hide(Z)V

    goto :goto_0

    .line 335
    .end local v0           #homeCornerButtonController:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->getOpenCorner()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 627
    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    .line 628
    .local v0, controller:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getModel()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->updateActionsFromModel()V

    goto :goto_0

    .line 632
    .end local v0           #controller:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 649
    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    .line 650
    .local v0, controller:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->onDestroy()V

    goto :goto_0

    .line 652
    .end local v0           #controller:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->removeOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 653
    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mReadHandle:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 654
    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mReadHandle:Ljava/lang/Object;

    invoke-static {v2}, Lcom/sonyericsson/storage/Storage;->cancelReadRoot(Ljava/lang/Object;)V

    .line 656
    :cond_1
    return-void
.end method

.method public requestFocus()Z
    .locals 6

    .prologue
    .line 422
    sget-object v0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->CORNERS:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v2, v0, v3

    .line 423
    .local v2, cornerId:I
    iget-object v5, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    .line 424
    .local v1, corner:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->requestFocus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 425
    const/4 v5, 0x1

    .line 429
    .end local v1           #corner:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    .end local v2           #cornerId:I
    :goto_1
    return v5

    .line 422
    .restart local v1       #corner:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    .restart local v2       #cornerId:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 429
    .end local v1           #corner:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    .end local v2           #cornerId:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public requestFocus(I)Z
    .locals 1
    .parameter "cornerIndex"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public setCornerButtonsListener(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;)V
    .locals 0
    .parameter "cornerButtonsControllerListener"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mListener:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;

    .line 315
    return-void
.end method

.method public setCornerVisibility([Z)V
    .locals 6
    .parameter "cornerVisibility"

    .prologue
    .line 346
    array-length v4, p1

    sget-object v5, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->CORNERS:[I

    array-length v5, v5

    if-eq v4, v5, :cond_0

    .line 347
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 349
    :cond_0
    sget-object v0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->CORNERS:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget v1, v0, v2

    .line 350
    .local v1, corner:I
    aget-boolean v4, p1, v1

    if-eqz v4, :cond_1

    .line 351
    iget-object v4, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->show()V

    .line 349
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->hide(Z)V

    goto :goto_1

    .line 356
    .end local v1           #corner:I
    :cond_2
    return-void
.end method

.method public setExtraHintRect(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "corner"
    .parameter "rect"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->setExtraHintRect(Landroid/graphics/Rect;)V

    .line 643
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 321
    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->mCornerButtonControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    .line 322
    .local v0, homeCornerButtonController:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->show()V

    goto :goto_0

    .line 324
    .end local v0           #homeCornerButtonController:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    :cond_0
    return-void
.end method
