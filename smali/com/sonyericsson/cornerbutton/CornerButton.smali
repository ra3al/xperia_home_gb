.class public abstract Lcom/sonyericsson/cornerbutton/CornerButton;
.super Landroid/view/View;
.source "CornerButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;,
        Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;
    }
.end annotation


# static fields
.field private static final COLLAPSED_ICON_OFFSET:I = 0x19

.field protected static final COLLAPSED_RADIUS:I = 0x3c

.field private static final DEFAULT_MAX_ICON_SIZE:I = 0x30

.field private static final EXPANDED_RADIUS:[I = null

.field private static final HIGHLIGHT_WIDTH_CONSTANT:I = 0xa

.field private static final HIGHLIGHT_WIDTH_NOMINATOR:I = 0x41

.field private static final ICON_OFFSET:I = 0x28

.field public static final MAX_CORNERBUTTON_ACTIONS:I = 0x4

.field protected static final OFFSET:I = 0xa

.field private static final UPDATE_DELAY_TIME:I = 0xf


# instance fields
.field private final mActionAnglesRunnable:Ljava/lang/Runnable;

.field protected final mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

.field private final mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

.field protected mCenterX:I

.field protected mCenterY:I

.field private mClicked:Z

.field private mClientActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/cornerbutton/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mExpanded:Z

.field private mHidden:Z

.field private final mHighlight:Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

.field private final mHighlightAngleRunnable:Ljava/lang/Runnable;

.field private final mInvalidRect:Landroid/graphics/Rect;

.field private mLargeNullRadiusSquared:F

.field private mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

.field private mLongPressListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;

.field private final mLongPressRunnable:Ljava/lang/Runnable;

.field private final mOldInvalidRect:Landroid/graphics/Rect;

.field private mOverAction:Lcom/sonyericsson/cornerbutton/Action;

.field private final mRadiusRunnable:Ljava/lang/Runnable;

.field private mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

.field private final mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

.field private final mShowHideRunnable:Ljava/lang/Runnable;

.field private mSmallNullRadiusSquared:F

.field private final mTempRectF:Landroid/graphics/RectF;

.field private mTouchAngle:F

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mTouchSlop2:I

.field private mTouchX:I

.field private mTouchY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/cornerbutton/CornerButton;->EXPANDED_RADIUS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x3ct 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    .line 224
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClientActionList:Ljava/util/ArrayList;

    .line 191
    iput v6, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSmallNullRadiusSquared:F

    .line 194
    const v2, 0x7f7fffff

    iput v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLargeNullRadiusSquared:F

    .line 197
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    .line 200
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOldInvalidRect:Landroid/graphics/Rect;

    .line 203
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTempRectF:Landroid/graphics/RectF;

    .line 227
    new-instance v2, Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    const/16 v3, 0x3c

    invoke-direct {v2, v3}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;-><init>(I)V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    .line 228
    new-instance v2, Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    const/16 v3, 0x14

    const/16 v4, 0x19

    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->shouldReverseActions()Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;-><init>(IIZ)V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    .line 230
    new-instance v2, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

    invoke-direct {v2}, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlight:Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

    .line 232
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cornerbutton/CornerButton;->setFocusable(Z)V

    .line 235
    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->getDirection()F

    move-result v0

    .line 236
    .local v0, direction:F
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->setDirection(F)V

    .line 237
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setDirection(F)V

    .line 238
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    const/high16 v3, 0x4240

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->setMaxIconSize(I)V

    .line 241
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 242
    .local v1, touchSlop:I
    mul-int v2, v1, v1

    iput v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchSlop2:I

    .line 244
    new-instance v2, Lcom/sonyericsson/cornerbutton/CornerButton$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cornerbutton/CornerButton$1;-><init>(Lcom/sonyericsson/cornerbutton/CornerButton;)V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mRadiusRunnable:Ljava/lang/Runnable;

    .line 261
    new-instance v2, Lcom/sonyericsson/cornerbutton/CornerButton$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cornerbutton/CornerButton$2;-><init>(Lcom/sonyericsson/cornerbutton/CornerButton;)V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlightAngleRunnable:Ljava/lang/Runnable;

    .line 270
    new-instance v2, Lcom/sonyericsson/cornerbutton/CornerButton$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cornerbutton/CornerButton$3;-><init>(Lcom/sonyericsson/cornerbutton/CornerButton;)V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActionAnglesRunnable:Ljava/lang/Runnable;

    .line 279
    new-instance v2, Lcom/sonyericsson/cornerbutton/CornerButton$4;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cornerbutton/CornerButton$4;-><init>(Lcom/sonyericsson/cornerbutton/CornerButton;)V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 293
    new-instance v2, Lcom/sonyericsson/cornerbutton/CornerButton$5;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cornerbutton/CornerButton$5;-><init>(Lcom/sonyericsson/cornerbutton/CornerButton;)V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideRunnable:Ljava/lang/Runnable;

    .line 305
    new-instance v2, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v2}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    .line 306
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v3, 0x4348

    const v4, 0x3f19999a

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 307
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v3, 0x3f80

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 308
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/cornerbutton/CornerButtonArc;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cornerbutton/CornerButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->isHighlightOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlight:Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cornerbutton/CornerButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->updateInvalidRect()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/cornerbutton/CornerButton;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/cornerbutton/CornerButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClicked:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/cornerbutton/CornerButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/cornerbutton/Action;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/util/SpringDynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    return-object v0
.end method

.method private checkOverAction()V
    .locals 5

    .prologue
    .line 930
    const/4 v0, 0x0

    .line 931
    .local v0, overAction:Lcom/sonyericsson/cornerbutton/Action;
    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchX:I

    iget v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchX:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchY:I

    iget v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchY:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-float v1, v2

    .line 932
    .local v1, radiusSquared:F
    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSmallNullRadiusSquared:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLargeNullRadiusSquared:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 933
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    iget v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchAngle:F

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getClosestAction(F)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    .line 936
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOverAction:Lcom/sonyericsson/cornerbutton/Action;

    if-eq v0, v2, :cond_2

    .line 937
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOverAction:Lcom/sonyericsson/cornerbutton/Action;

    if-eqz v2, :cond_1

    .line 938
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 940
    :cond_1
    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOverAction:Lcom/sonyericsson/cornerbutton/Action;

    .line 941
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    invoke-interface {v2, v0}, Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;->onOverAction(Lcom/sonyericsson/cornerbutton/Action;)V

    .line 943
    :cond_2
    return-void
.end method

.method private getRealDrawingRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 824
    invoke-super {p0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 825
    return-void
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 843
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchX:I

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchY:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHidden:Z

    if-nez v0, :cond_0

    .line 844
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->handleTouchStart()V

    .line 845
    invoke-direct {p0, p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 846
    const/4 v0, 0x1

    .line 848
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleTouchEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 907
    iput-boolean v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClicked:Z

    .line 908
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOverAction:Lcom/sonyericsson/cornerbutton/Action;

    .line 909
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setClicked(Z)V

    .line 910
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 911
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClicked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchX:I

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchY:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    invoke-interface {v0}, Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;->onDragOutside()V

    .line 878
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->isDrag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 882
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClicked:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-eqz v0, :cond_2

    .line 883
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->checkOverAction()V

    .line 885
    :cond_2
    return-void
.end method

.method private handleTouchStart()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 857
    iput-boolean v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClicked:Z

    .line 858
    iget v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchX:I

    iput v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchDownX:I

    .line 859
    iget v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchY:I

    iput v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchDownY:I

    .line 860
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-nez v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setClicked(Z)V

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 864
    return-void
.end method

.method private handleTouchUp(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 893
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClicked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    invoke-interface {v0}, Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;->onOutsideClick()V

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClicked:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 897
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    invoke-interface {v0}, Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;->onCollapsedClick()V

    goto :goto_0

    .line 898
    :cond_2
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClicked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOverAction:Lcom/sonyericsson/cornerbutton/Action;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;->onItemClick(Lcom/sonyericsson/cornerbutton/Action;)V

    goto :goto_0
.end method

.method private isDrag()Z
    .locals 4

    .prologue
    .line 920
    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchX:I

    iget v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchDownX:I

    sub-int v0, v2, v3

    .line 921
    .local v0, dx:I
    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchY:I

    iget v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchDownY:I

    sub-int v1, v2, v3

    .line 922
    .local v1, dy:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchSlop2:I

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isHighlightOn()Z
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static keyCodeToFocusDirection(I)I
    .locals 1
    .parameter "keyCode"

    .prologue
    const/16 v0, 0x82

    .line 1080
    packed-switch p0, :pswitch_data_0

    .line 1090
    :goto_0
    :pswitch_0
    return v0

    .line 1082
    :pswitch_1
    const/16 v0, 0x11

    goto :goto_0

    .line 1084
    :pswitch_2
    const/16 v0, 0x42

    goto :goto_0

    .line 1086
    :pswitch_3
    const/16 v0, 0x21

    goto :goto_0

    .line 1080
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onKey(IILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 1017
    const/4 v1, 0x0

    .line 1018
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 1020
    .local v2, keyAction:I
    if-eq v2, v5, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v3}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getNumberOfActions()I

    move-result v3

    if-lez v3, :cond_0

    .line 1021
    const/4 v0, 0x0

    .line 1022
    .local v0, action:Lcom/sonyericsson/cornerbutton/Action;
    sparse-switch p1, :sswitch_data_0

    .line 1046
    .end local v0           #action:Lcom/sonyericsson/cornerbutton/Action;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    move v3, v5

    .line 1057
    :goto_1
    return v3

    .line 1027
    .restart local v0       #action:Lcom/sonyericsson/cornerbutton/Action;
    :sswitch_0
    iget-boolean v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-eqz v3, :cond_0

    .line 1028
    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    invoke-static {p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->keyCodeToFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/cornerbutton/CornerButton;->getNextFocus(Lcom/sonyericsson/cornerbutton/Action;I)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    .line 1029
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    if-eqz v3, :cond_1

    .line 1030
    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    invoke-interface {v3, v0}, Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;->onFocusedAction(Lcom/sonyericsson/cornerbutton/Action;)V

    .line 1032
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1038
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 1039
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->onSelectKeyPressed()V

    .line 1041
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1049
    .end local v0           #action:Lcom/sonyericsson/cornerbutton/Action;
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 1057
    const/4 v3, 0x0

    goto :goto_1

    .line 1051
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1

    .line 1053
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1

    .line 1055
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1

    .line 1022
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch

    .line 1049
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onSelectKeyPressed()V
    .locals 2

    .prologue
    .line 1066
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    invoke-interface {v0}, Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;->onCollapsedClick()V

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;->onItemClick(Lcom/sonyericsson/cornerbutton/Action;)V

    goto :goto_0
.end method

.method private setExpandedRadius()V
    .locals 4

    .prologue
    .line 831
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getNumberOfActions()I

    move-result v0

    .line 832
    .local v0, numberOfActions:I
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    sget-object v2, Lcom/sonyericsson/cornerbutton/CornerButton;->EXPANDED_RADIUS:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setExpandedRadius(I)V

    .line 833
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    sget-object v2, Lcom/sonyericsson/cornerbutton/CornerButton;->EXPANDED_RADIUS:[I

    aget v2, v2, v0

    const/16 v3, 0x28

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->setExpandedRadius(I)V

    .line 834
    return-void
.end method

.method private setHighlightAngle(F)V
    .locals 2
    .parameter "angle"

    .prologue
    .line 960
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlight:Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->animateTo(F)V

    .line 961
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlight:Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->getRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->setRadius(F)V

    .line 962
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->updateInvalidRect()V

    .line 963
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlightAngleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 964
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlightAngleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->post(Ljava/lang/Runnable;)Z

    .line 965
    return-void
.end method

.method private updateInvalidRect()V
    .locals 14

    .prologue
    .line 972
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v9}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->getDrawRadius()F

    move-result v1

    .line 973
    .local v1, arcRadius:F
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v9}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getRadius()F

    move-result v9

    const/high16 v10, 0x4220

    add-float v0, v9, v10

    .line 974
    .local v0, actionRadius:F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 975
    .local v3, maxRadius:F
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->isHighlightOn()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 976
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlight:Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

    invoke-virtual {v9}, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->getRadius()F

    move-result v2

    .line 977
    .local v2, highlightRadius:F
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 980
    .end local v2           #highlightRadius:F
    :cond_0
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v9}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v9

    mul-float/2addr v3, v9

    .line 981
    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_1

    .line 982
    const/4 v3, 0x0

    .line 986
    :cond_1
    const/high16 v9, 0x3f80

    add-float/2addr v9, v3

    float-to-int v8, v9

    .line 989
    .local v8, radius:I
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    invoke-direct {p0, v9}, Lcom/sonyericsson/cornerbutton/CornerButton;->getRealDrawingRect(Landroid/graphics/Rect;)V

    .line 992
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    iget v10, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterX:I

    sub-int/2addr v10, v8

    iget v11, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterY:I

    sub-int/2addr v11, v8

    iget v12, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterX:I

    add-int/2addr v12, v8

    iget v13, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterY:I

    add-int/2addr v13, v8

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 996
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOldInvalidRect:Landroid/graphics/Rect;

    iget v5, v9, Landroid/graphics/Rect;->left:I

    .line 997
    .local v5, oldLeft:I
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOldInvalidRect:Landroid/graphics/Rect;

    iget v7, v9, Landroid/graphics/Rect;->top:I

    .line 998
    .local v7, oldTop:I
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOldInvalidRect:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->right:I

    .line 999
    .local v6, oldRight:I
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOldInvalidRect:Landroid/graphics/Rect;

    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    .line 1002
    .local v4, oldBottom:I
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOldInvalidRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1005
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v5, v7, v6, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1006
    return-void
.end method


# virtual methods
.method public cancelTouch()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 630
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 631
    iput-boolean v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClicked:Z

    .line 632
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setClicked(Z)V

    .line 633
    return-void
.end method

.method public collapse()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->collapse()V

    .line 524
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->collapse()V

    .line 525
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mRadiusRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 526
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mRadiusRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->post(Ljava/lang/Runnable;)Z

    .line 528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    .line 529
    return-void
.end method

.method public contains(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterX:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterY:I

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->contains(II)Z

    move-result v0

    return v0
.end method

.method public expand(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->setExpandedRadius()V

    .line 507
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->expand(Z)V

    .line 508
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->expand(Z)V

    .line 510
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mRadiusRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 511
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mRadiusRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->post(Ljava/lang/Runnable;)Z

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    .line 514
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setClicked(Z)V

    .line 515
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 516
    return-void
.end method

.method public getAction(II)Lcom/sonyericsson/cornerbutton/Action;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 445
    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterY:I

    sub-int v2, p2, v2

    neg-int v2, v2

    int-to-double v2, v2

    iget v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterX:I

    sub-int v4, p1, v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L

    mul-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L

    div-double/2addr v2, v4

    double-to-float v1, v2

    .line 446
    .local v1, angle:F
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getClosestAction(F)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    .line 447
    .local v0, action:Lcom/sonyericsson/cornerbutton/Action;
    return-object v0
.end method

.method public getActionPosition(Lcom/sonyericsson/cornerbutton/Action;)Landroid/graphics/Point;
    .locals 3
    .parameter "action"

    .prologue
    .line 457
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->contains(Lcom/sonyericsson/cornerbutton/Action;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getActionPosition(Lcom/sonyericsson/cornerbutton/Action;)Landroid/graphics/Point;

    move-result-object v0

    .line 459
    .local v0, point:Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterX:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 460
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterY:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    move-object v1, v0

    .line 463
    .end local v0           #point:Landroid/graphics/Point;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/cornerbutton/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClientActionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCenterPoint()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 574
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterX:I

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterY:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getCollapsedIconBounds()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 583
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getCollapsedIconBound()Landroid/graphics/Rect;

    move-result-object v0

    .line 584
    .local v0, rect:Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 585
    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterX:I

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 587
    :cond_0
    return-object v0
.end method

.method protected abstract getDirection()F
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "outRect"

    .prologue
    .line 650
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->getFocusRect(Landroid/graphics/Rect;)V

    .line 651
    return-void
.end method

.method protected getFocusRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "outRect"

    .prologue
    .line 804
    invoke-super {p0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 805
    return-void
.end method

.method public getMaxIconSize()I
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getMaxIconSize()I

    move-result v0

    return v0
.end method

.method protected getNextFocus(Lcom/sonyericsson/cornerbutton/Action;I)Lcom/sonyericsson/cornerbutton/Action;
    .locals 1
    .parameter "focusedAction"
    .parameter "direction"

    .prologue
    .line 815
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumberOfActions()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getNumberOfActions()I

    move-result v0

    return v0
.end method

.method public getSelectedAction()Lcom/sonyericsson/cornerbutton/Action;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    return-object v0
.end method

.method public getTopmostAction()Lcom/sonyericsson/cornerbutton/Action;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getTopmostAction()Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    return-object v0
.end method

.method public hide(Z)V
    .locals 5
    .parameter "animate"

    .prologue
    const/4 v3, 0x0

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 554
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 555
    if-eqz p1, :cond_0

    .line 556
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 561
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 562
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->post(Ljava/lang/Runnable;)Z

    .line 563
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->setFocusable(Z)V

    .line 565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHidden:Z

    .line 566
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getNumberOfActions()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    return v0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getNumberOfActions()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHidden:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mRadiusRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 720
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlightAngleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 721
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActionAnglesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 722
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 723
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 724
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/high16 v8, 0x437f

    .line 743
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    :goto_0
    return-void

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v7

    .line 749
    .local v7, showHideScale:F
    mul-float v0, v7, v8

    const/4 v1, 0x0

    invoke-static {v0, v1, v8}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v0

    float-to-int v6, v0

    .line 750
    .local v6, alpha:I
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTempRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 754
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTempRectF:Landroid/graphics/RectF;

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v6, v1}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 755
    iget v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 756
    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 758
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->draw(Landroid/graphics/Canvas;)V

    .line 759
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->isHighlightOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlight:Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->draw(Landroid/graphics/Canvas;)V

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->draw(Landroid/graphics/Canvas;)V

    .line 764
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setFocused(Z)V

    .line 729
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 730
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 705
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/cornerbutton/CornerButton;->onKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 710
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cornerbutton/CornerButton;->onKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 715
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/cornerbutton/CornerButton;->onKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 734
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 736
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->setCenterPos(IIF)V

    .line 737
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->updateInvalidRect()V

    .line 738
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 673
    const/4 v0, 0x1

    .line 675
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterX:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchX:I

    .line 676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchY:I

    .line 677
    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchY:I

    neg-int v1, v1

    int-to-double v1, v1

    iget v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchX:I

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L

    div-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchAngle:F

    .line 679
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 693
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->handleTouchEnd()V

    .line 696
    :goto_1
    if-eqz v0, :cond_0

    .line 697
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->updateInvalidRect()V

    .line 698
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->invalidate(Landroid/graphics/Rect;)V

    .line 700
    :cond_0
    return v0

    .line 681
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->handleTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 682
    goto :goto_1

    .line 685
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->handleTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 689
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->handleTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 679
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setActions(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/cornerbutton/Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    const/4 v5, 0x1

    .line 365
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, i:I
    :goto_0
    const/4 v4, 0x4

    if-le v0, v4, :cond_0

    .line 366
    sub-int v4, v0, v5

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 365
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 369
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v4}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getNumberOfActions()I

    move-result v2

    .line 370
    .local v2, previousNumberOfActions:I
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->setActions(Ljava/util/ArrayList;)V

    .line 371
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClientActionList:Ljava/util/ArrayList;

    .line 373
    if-nez v2, :cond_1

    .line 374
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->setExpandedRadius()V

    .line 375
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mRadiusRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 376
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mRadiusRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/cornerbutton/CornerButton;->post(Ljava/lang/Runnable;)Z

    .line 379
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v4}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getNumberOfActions()I

    move-result v1

    .line 380
    .local v1, numberOfActions:I
    if-lez v1, :cond_2

    .line 381
    const/16 v4, 0x41

    div-int/2addr v4, v1

    add-int/lit8 v3, v4, 0xa

    .line 383
    .local v3, width:I
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlight:Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

    invoke-virtual {v4, v3}, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->setWidth(I)V

    .line 384
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    if-eqz v4, :cond_2

    .line 385
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    invoke-virtual {v4}, Lcom/sonyericsson/cornerbutton/Action;->getAngle()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/cornerbutton/CornerButton;->setHighlightAngle(F)V

    .line 388
    .end local v3           #width:I
    :cond_2
    iget-boolean v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHidden:Z

    if-nez v4, :cond_3

    .line 389
    invoke-virtual {p0, v5}, Lcom/sonyericsson/cornerbutton/CornerButton;->setFocusable(Z)V

    .line 392
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActionAnglesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 393
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActionAnglesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/cornerbutton/CornerButton;->post(Ljava/lang/Runnable;)Z

    .line 394
    return-void
.end method

.method protected abstract setCenterPos(IIF)V
.end method

.method public setCollapsedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->setCollapsedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 354
    return-void
.end method

.method public setFocusable(Z)V
    .locals 1
    .parameter "focusable"

    .prologue
    .line 655
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getNumberOfActions()I

    move-result v0

    if-lez v0, :cond_0

    .line 656
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 660
    :goto_0
    return-void

    .line 658
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method

.method public setGlow(Z)V
    .locals 1
    .parameter "glow"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setClicked(Z)V

    .line 642
    return-void
.end method

.method public setListener(Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    .line 317
    return-void
.end method

.method public setLongPressListener(Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;

    .line 326
    return-void
.end method

.method public setMaxIconSize(I)V
    .locals 1
    .parameter "iconMaxSize"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->setMaxIconSize(I)V

    .line 335
    return-void
.end method

.method public setNullRadii(FF)V
    .locals 1
    .parameter "smallNullRadiusSquared"
    .parameter "largeNullRadiusSquared"

    .prologue
    .line 488
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 491
    :cond_0
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    .line 492
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 495
    :cond_1
    iput p1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSmallNullRadiusSquared:F

    .line 496
    iput p2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLargeNullRadiusSquared:F

    .line 497
    return-void
.end method

.method public setSelectedAction(Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    .line 422
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->contains(Lcom/sonyericsson/cornerbutton/Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    .line 424
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/Action;->getAngle()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->setHighlightAngle(F)V

    .line 426
    :cond_0
    return-void
.end method

.method protected shouldReverseActions()Z
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .locals 5

    .prologue
    const/high16 v1, 0x3f80

    .line 536
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 537
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 538
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 540
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->post(Ljava/lang/Runnable;)Z

    .line 542
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->setFocusable(Z)V

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHidden:Z

    .line 545
    return-void
.end method
