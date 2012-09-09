.class Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
.super Lcom/sonyericsson/cornerbutton/CornerButtonController;
.source "HomeCornerButtonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerLongPressListener;,
        Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerListener;,
        Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerButtonControllerListener;
    }
.end annotation


# instance fields
.field private mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

.field private mContext:Landroid/content/Context;

.field private mExtraHintRect:Landroid/graphics/Rect;

.field private mHintAction:Lcom/sonyericsson/cornerbutton/Action;

.field private mLoadingIcon:Landroid/graphics/drawable/Drawable;

.field private mModel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;"
        }
    .end annotation
.end field

.field private mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

.field private mPickedUpInfoPosition:I

.field private mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

.field private mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

.field private mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

.field private mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cornerbutton/CornerButton;Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerButtonControllerListener;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 4
    .parameter "context"
    .parameter "cornerButton"
    .parameter "listener"
    .parameter "adapterHelper"
    .parameter "transferHandler"
    .parameter "resourceLoader"

    .prologue
    const/4 v3, 0x0

    .line 391
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonController;-><init>(Lcom/sonyericsson/cornerbutton/CornerButton;I)V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mModel:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Lcom/sonyericsson/cornerbutton/Action;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/sonyericsson/cornerbutton/Action;-><init>(Ljava/lang/String;JLandroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mHintAction:Lcom/sonyericsson/cornerbutton/Action;

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mPickedUpInfoPosition:I

    .line 128
    new-instance v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;-><init>(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 292
    new-instance v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$2;-><init>(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    .line 393
    invoke-virtual {p0, p3}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->setListener(Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;)V

    .line 394
    iput-object p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mContext:Landroid/content/Context;

    .line 395
    iput-object p4, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    .line 396
    iput-object p5, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 397
    iput-object p6, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 399
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mLoadingIcon:Landroid/graphics/drawable/Drawable;

    .line 401
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    sget v1, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButton;->setTag(ILjava/lang/Object;)V

    .line 403
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/home/data/Info;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->isInfoAllowed(Lcom/sonyericsson/home/data/Info;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->removeActionAndInfo(Lcom/sonyericsson/cornerbutton/Action;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->moveHintActionTo(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/cornerbutton/Action;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->createActionFrom(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mModel:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->bounceCornerButton()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mPickedUpInfoPosition:I

    return v0
.end method

.method static synthetic access$2402(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mPickedUpInfoPosition:I

    return p1
.end method

.method static synthetic access$2500(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->pickupAction(Lcom/sonyericsson/cornerbutton/Action;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/cornerbutton/Action;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getActionFromInfo(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mExtraHintRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/Action;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mHintAction:Lcom/sonyericsson/cornerbutton/Action;

    return-object v0
.end method

.method private bounceCornerButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 668
    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v2}, Lcom/sonyericsson/cornerbutton/CornerButton;->getCenterPoint()Landroid/graphics/Point;

    move-result-object v1

    .line 669
    .local v1, point:Landroid/graphics/Point;
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-static {v4, v2, v4, v3}, Lcom/sonyericsson/animation/BounceRenderer;->createAnimation(IFIF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 671
    .local v0, jump:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 672
    return-void
.end method

.method private createActionFrom(JLcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;)Lcom/sonyericsson/cornerbutton/Action;
    .locals 5
    .parameter "id"
    .parameter "cacheValue"

    .prologue
    .line 654
    iget-object v3, p3, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 655
    .local v2, label:Ljava/lang/String;
    iget-object v3, p3, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 656
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p3, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 657
    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mContext:Landroid/content/Context;

    iget-object v4, p3, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/home/badge/BadgeManager;->createBadgeBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 659
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 661
    .local v1, icon:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v3, Lcom/sonyericsson/cornerbutton/Action;

    invoke-direct {v3, v2, p1, p2, v1}, Lcom/sonyericsson/cornerbutton/Action;-><init>(Ljava/lang/String;JLandroid/graphics/drawable/Drawable;)V

    return-object v3
.end method

.method private createActionFrom(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/cornerbutton/Action;
    .locals 3
    .parameter "info"

    .prologue
    .line 636
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v0

    .line 637
    .local v0, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/Info;->getUniqueId()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->createActionFrom(JLcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v1

    .line 641
    :goto_0
    return-object v1

    .line 640
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->loadAction(Lcom/sonyericsson/home/data/Info;)V

    .line 641
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->createTemporaryAction(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v1

    goto :goto_0
.end method

.method private createTemporaryAction(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/cornerbutton/Action;
    .locals 5
    .parameter "info"

    .prologue
    .line 714
    new-instance v0, Lcom/sonyericsson/cornerbutton/Action;

    const-string v1, ""

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/Info;->getUniqueId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mLoadingIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cornerbutton/Action;-><init>(Ljava/lang/String;JLandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private getActionFromInfo(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/cornerbutton/Action;
    .locals 7
    .parameter "info"

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getActions()Ljava/util/ArrayList;

    move-result-object v1

    .line 725
    .local v1, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cornerbutton/Action;

    .line 726
    .local v0, action:Lcom/sonyericsson/cornerbutton/Action;
    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/Action;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/Info;->getUniqueId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    .line 730
    .end local v0           #action:Lcom/sonyericsson/cornerbutton/Action;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "drawable"

    .prologue
    .line 682
    instance-of v0, p1, Lcom/sonyericsson/drawable/FastBitmapDrawable;

    if-eqz v0, :cond_0

    .line 683
    check-cast p1, Lcom/sonyericsson/drawable/FastBitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/drawable/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 687
    :goto_0
    return-object v0

    .line 684
    .restart local p1
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 685
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 687
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInfoFromAction(Lcom/sonyericsson/cornerbutton/Action;)Lcom/sonyericsson/home/data/Info;
    .locals 6
    .parameter "action"

    .prologue
    .line 740
    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mModel:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/Info;

    .line 741
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/Info;->getUniqueId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sonyericsson/cornerbutton/Action;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    .line 745
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getViewFromInfo(Lcom/sonyericsson/home/data/Info;)Landroid/view/View;
    .locals 2
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 583
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/layer/AdapterHelper;->getActivityInfoView(Lcom/sonyericsson/home/data/ActivityInfo;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 588
    :goto_0
    return-object v0

    .line 585
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    check-cast p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    .end local p1
    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/layer/AdapterHelper;->getShortcutInfoView(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .restart local p1
    :cond_1
    move-object v0, v1

    .line 588
    goto :goto_0
.end method

.method private isInfoAllowed(Lcom/sonyericsson/home/data/Info;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 623
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutActionView(Landroid/view/View;Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 10
    .parameter "view"
    .parameter "action"

    .prologue
    const/high16 v9, 0x4000

    .line 598
    iget-object v7, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a000e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 599
    .local v2, cellWidth:I
    iget-object v7, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a000f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 600
    .local v1, cellHeight:I
    iget-object v7, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 602
    .local v3, iconPadding:I
    or-int v7, v9, v2

    or-int v8, v9, v1

    invoke-virtual {p1, v7, v8}, Landroid/view/View;->measure(II)V

    .line 604
    iget-object v7, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v7, p2}, Lcom/sonyericsson/cornerbutton/CornerButton;->getActionPosition(Lcom/sonyericsson/cornerbutton/Action;)Landroid/graphics/Point;

    move-result-object v5

    .line 605
    .local v5, point:Landroid/graphics/Point;
    invoke-virtual {p2}, Lcom/sonyericsson/cornerbutton/Action;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 606
    .local v0, actionIconWidth:I
    if-eqz v5, :cond_0

    .line 607
    iget v7, v5, Landroid/graphics/Point;->x:I

    sub-int v8, v2, v0

    div-int/lit8 v8, v8, 0x2

    sub-int v4, v7, v8

    .line 608
    .local v4, left:I
    iget v7, v5, Landroid/graphics/Point;->y:I

    sub-int v6, v7, v3

    .line 609
    .local v6, top:I
    add-int v7, v4, v2

    add-int v8, v6, v1

    invoke-virtual {p1, v4, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 613
    .end local v4           #left:I
    .end local v6           #top:I
    :goto_0
    return-void

    .line 611
    :cond_0
    const-string v7, "HomeCornerButtonController.layoutActionView(View view, Action action)"

    const-string v8, "point is null"

    invoke-static {v7, v8}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadAction(Lcom/sonyericsson/home/data/Info;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 697
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    new-instance v1, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$4;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$4;-><init>(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/home/data/Info;)V

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->registerCacheCallback(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;)V

    .line 704
    return-void
.end method

.method private moveHintActionTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 569
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/cornerbutton/CornerButton;->getAction(II)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    .line 570
    .local v0, hoverAction:Lcom/sonyericsson/cornerbutton/Action;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mHintAction:Lcom/sonyericsson/cornerbutton/Action;

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 571
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mHintAction:Lcom/sonyericsson/cornerbutton/Action;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->switchActions(Lcom/sonyericsson/cornerbutton/Action;Lcom/sonyericsson/cornerbutton/Action;)V

    .line 573
    :cond_0
    return-void
.end method

.method private pickupAction(Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 4
    .parameter "action"

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getInfoFromAction(Lcom/sonyericsson/cornerbutton/Action;)Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    .line 548
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->getActions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mPickedUpInfoPosition:I

    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    invoke-direct {p0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getViewFromInfo(Lcom/sonyericsson/home/data/Info;)Landroid/view/View;

    move-result-object v0

    .line 555
    :cond_0
    if-eqz v0, :cond_1

    .line 556
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->layoutActionView(Landroid/view/View;Lcom/sonyericsson/cornerbutton/Action;)V

    .line 557
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->removeActionAndInfo(Lcom/sonyericsson/cornerbutton/Action;)V

    .line 558
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-interface {v1, v2, v0, v3}, Lcom/sonyericsson/home/transfer/TransferHandler;->transferView(Lcom/sonyericsson/home/transfer/TransferSource;Landroid/view/View;Landroid/view/View;)Lcom/sonyericsson/animation/Renderer;

    .line 560
    :cond_1
    return-void
.end method

.method private removeActionAndInfo(Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 755
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->removeAction(Lcom/sonyericsson/cornerbutton/Action;)V

    .line 756
    invoke-virtual {p1}, Lcom/sonyericsson/cornerbutton/Action;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->removeInfoFromModel(J)V

    .line 757
    return-void
.end method

.method private removeInfoFromModel(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 765
    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mModel:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 766
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/home/data/Info;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 767
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/data/Info;

    .line 768
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v0}, Lcom/sonyericsson/home/data/Info;->getUniqueId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 769
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 772
    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCornerButtonBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->getCollapsedIconBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method protected getCornerButtonListener()Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;
    .locals 2

    .prologue
    .line 529
    new-instance v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerListener;-><init>(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;)V

    return-object v0
.end method

.method protected getCornerButtonLongPressListener()Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;
    .locals 2

    .prologue
    .line 537
    new-instance v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerLongPressListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerLongPressListener;-><init>(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;)V

    return-object v0
.end method

.method public getInfo(Lcom/sonyericsson/cornerbutton/Action;)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "action"

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getInfoFromAction(Lcom/sonyericsson/cornerbutton/Action;)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getActions()Ljava/util/ArrayList;

    move-result-object v1

    .line 439
    .local v1, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 441
    .local v4, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cornerbutton/Action;

    .line 442
    .local v0, action:Lcom/sonyericsson/cornerbutton/Action;
    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getInfoFromAction(Lcom/sonyericsson/cornerbutton/Action;)Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    .line 443
    .local v3, info:Lcom/sonyericsson/home/data/Info;
    if-eqz v3, :cond_0

    .line 444
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 447
    .end local v0           #action:Lcom/sonyericsson/cornerbutton/Action;
    .end local v3           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    return-object v4
.end method

.method public getSyncable()Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    .locals 1

    .prologue
    .line 457
    new-instance v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$3;-><init>(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->onDestroy()V

    .line 522
    return-void
.end method

.method public requestFocus()Z
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public setExtraHintRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 500
    if-nez p1, :cond_0

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mExtraHintRect:Landroid/graphics/Rect;

    .line 509
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mExtraHintRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 504
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mExtraHintRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mExtraHintRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setModel(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mModel:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 413
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mModel:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->updateActionsFromModel()V

    .line 418
    return-void
.end method

.method public updateActionsFromModel()V
    .locals 5

    .prologue
    .line 424
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mModel:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 425
    .local v1, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    iget-object v4, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->mModel:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/data/Info;

    .line 426
    .local v3, info:Lcom/sonyericsson/home/data/Info;
    invoke-direct {p0, v3}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->createActionFrom(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    .line 427
    .local v0, action:Lcom/sonyericsson/cornerbutton/Action;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 429
    .end local v0           #action:Lcom/sonyericsson/cornerbutton/Action;
    .end local v3           #info:Lcom/sonyericsson/home/data/Info;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->setActions(Ljava/util/ArrayList;)V

    .line 430
    return-void
.end method
