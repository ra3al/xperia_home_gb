.class Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout$OnInterceptTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransformManager"
.end annotation


# static fields
.field private static final DAMPING_RATIO:F = 0.9f

.field private static final POSITION_TOLERANCE:F = 0.01f

.field private static final STATE_TRANSFORM_ACTIVE:I = 0x1

.field private static final STATE_TRANSFORM_ANIMATING:I = 0x2

.field private static final STATE_TRANSFORM_INACTIVE:I = 0x0

.field private static final STIFFNESS:F = 100.0f

.field private static final TRANSFORM_THRESHOLD:F = 0.9f

.field private static final VELOCITY_TOLERANCE:F = 0.1f


# instance fields
.field private mClick:Z

.field private mClickedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

.field private mIsOkToTransform:Z

.field private final mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private final mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

.field private final mProgressRunnable:Ljava/lang/Runnable;

.field private mScaleFactor:F

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mTouchSlop:I

.field private mTransformState:I

.field private mVelocity:F

.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

.field private final transformer:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;F)V
    .locals 5
    .parameter
    .parameter "densityScaleFactor"

    .prologue
    const/4 v2, 0x0

    .line 501
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    .line 383
    iput-boolean v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClick:Z

    .line 391
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mVelocity:F

    .line 411
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressRunnable:Ljava/lang/Runnable;

    .line 436
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 502
    new-instance v2, Landroid/view/ScaleGestureDetector;

    invoke-static {p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v2, v3, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 503
    new-instance v2, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v2}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    .line 504
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v3, 0x42c8

    const v4, 0x3f666666

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 506
    invoke-static {p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 508
    .local v0, sensorManager:Landroid/hardware/SensorManager;
    invoke-static {p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 510
    .local v1, transformBottomMargin:I
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;

    invoke-direct {v2, v1, v0, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;-><init>(ILandroid/hardware/SensorManager;F)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->transformer:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;

    .line 513
    invoke-static {p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTouchSlop:I

    .line 514
    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->activateTransform()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->startTransformAnimations()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 342
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mScaleFactor:F

    return v0
.end method

.method static synthetic access$1302(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 342
    iput p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mScaleFactor:F

    return p1
.end method

.method static synthetic access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 342
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->runTransform(FF)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Lcom/sonyericsson/util/SpringDynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->stopTransformAnimations()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->deactivateTransform()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->setTransformProgress(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 342
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mVelocity:F

    return v0
.end method

.method static synthetic access$802(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 342
    iput p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mVelocity:F

    return p1
.end method

.method static synthetic access$900(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 342
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    return v0
.end method

.method private activateTransform()V
    .locals 3

    .prologue
    .line 591
    iget v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    if-eqz v1, :cond_0

    .line 592
    const-string v1, "TransformManager"

    const-string v2, "Illegal state in activateTransform()"

    invoke-static {v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->transformer:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->transform(Lcom/sonyericsson/paneview/Transformer;)V

    .line 598
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v0

    .line 599
    .local v0, progress:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 602
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideOpenGLAdvWidgets()V

    .line 605
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 606
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onOverviewActivated()V

    .line 609
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    invoke-interface {v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onFreeCornersChanged([Z)V

    .line 613
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    .line 614
    return-void

    .line 609
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private deactivateTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 650
    iget v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    if-eq v1, v3, :cond_0

    .line 651
    const-string v1, "TransformManager"

    const-string v2, "Illegal state in deactivateTransform()"

    invoke-static {v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->transform(Lcom/sonyericsson/paneview/Transformer;)V

    .line 655
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/PaneIndicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 658
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v0

    .line 659
    .local v0, progress:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 662
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showOpenGLAdvWidgets()V

    .line 665
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    .line 666
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 667
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onOverviewDeactivated()V

    .line 670
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1800(Lcom/sonyericsson/home/layer/desktop/DesktopController;IZ)V

    .line 672
    :cond_2
    return-void
.end method

.method private runTransform(FF)V
    .locals 4
    .parameter "snap"
    .parameter "velocity"

    .prologue
    .line 578
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 580
    .local v0, now:J
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v3

    invoke-virtual {v2, v3, p2, v0, v1}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 581
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 582
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 583
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 584
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/PaneView;->post(Ljava/lang/Runnable;)Z

    .line 585
    return-void
.end method

.method private setTransformProgress(F)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 563
    const/4 v1, 0x0

    const v2, 0x7f7fffff

    invoke-static {p1, v1, v2}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v0

    .line 564
    .local v0, clampedProgress:F
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->transformer:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->setProgress(F)V

    .line 565
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onOverviewProgress(F)V

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->invalidate()V

    .line 569
    return-void
.end method

.method private startTransformAnimations()V
    .locals 2

    .prologue
    .line 620
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 621
    const-string v0, "TransformManager"

    const-string v1, "Illegal state in startTransformAnimations()"

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    .line 626
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onOverviewAnimationsStarted()V

    .line 629
    :cond_1
    return-void
.end method

.method private stopTransformAnimations()V
    .locals 2

    .prologue
    .line 635
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 636
    const-string v0, "TransformManager"

    const-string v1, "Illegal state in stopTransformAnimations()"

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    .line 641
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onOverviewAnimationsStopped()V

    .line 644
    :cond_1
    return-void
.end method


# virtual methods
.method public getTransform()F
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v0

    return v0
.end method

.method public isTransformed()Z
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leaveTransform()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 533
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 534
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->startTransformAnimations()V

    .line 537
    :cond_0
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 538
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClickedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 539
    invoke-direct {p0, v2, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->runTransform(FF)V

    .line 541
    :cond_1
    return-void
.end method

.method public onInterceptTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 722
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 723
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->hasWidgets()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->isOverviewAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    if-nez v0, :cond_4

    .line 728
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mIsOkToTransform:Z

    .line 734
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mIsOkToTransform:Z

    if-eqz v0, :cond_3

    .line 735
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 738
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->isTransformed()Z

    move-result v0

    return v0

    .line 730
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mIsOkToTransform:Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->transformer:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->onPause()V

    .line 548
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->transformer:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->onResume()V

    .line 555
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const v7, 0x3f666666

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 676
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->isTransformed()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v6

    .line 717
    :goto_0
    return v2

    .line 680
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 682
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 683
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTouchDownX:I

    .line 684
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTouchDownY:I

    .line 686
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1

    .line 687
    iput-boolean v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClick:Z

    .line 688
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->transformer:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;

    iget v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTouchDownX:I

    iget v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTouchDownY:I

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->getItemAt(II)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClickedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 693
    :cond_1
    iget v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTouchDownX:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTouchDownY:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 695
    :cond_2
    iput-boolean v6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClick:Z

    .line 696
    iput-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClickedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 700
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v5, :cond_4

    .line 701
    iput-boolean v6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClick:Z

    .line 702
    iput-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClickedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 705
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 706
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClick:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_5

    .line 707
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClickedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-eqz v2, :cond_5

    .line 708
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClickedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v2

    iget v1, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 709
    .local v1, pane:I
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v0

    .line 710
    .local v0, offset:I
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->leaveTransform()V

    .line 711
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->transformer:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;

    neg-int v3, v0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->offsetSourceRects(I)V

    .line 712
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    .end local v0           #offset:I
    .end local v1           #pane:I
    :cond_5
    move v2, v5

    .line 717
    goto/16 :goto_0
.end method

.method public setTransform(F)V
    .locals 4
    .parameter "transform"

    .prologue
    const/4 v3, 0x0

    .line 525
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->activateTransform()V

    .line 526
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/PaneIndicator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/PaneIndicator;->hide(Z)V

    .line 527
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->startTransformAnimations()V

    .line 528
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 529
    const/high16 v0, 0x3f00

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    move v0, v3

    :goto_0
    iget v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mVelocity:F

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->runTransform(FF)V

    .line 530
    return-void

    .line 529
    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method
