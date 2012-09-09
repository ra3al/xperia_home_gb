.class public Lcom/sonyericsson/paneview/PaneView;
.super Landroid/widget/AdapterView;
.source "PaneView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;,
        Lcom/sonyericsson/paneview/PaneView$AdapterItem;,
        Lcom/sonyericsson/paneview/PaneView$Item;,
        Lcom/sonyericsson/paneview/PaneView$OnLayoutListener;,
        Lcom/sonyericsson/paneview/PaneView$ItemViewListener;,
        Lcom/sonyericsson/paneview/PaneView$InteractionListener;,
        Lcom/sonyericsson/paneview/PaneView$DrawFilter;,
        Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;,
        Lcom/sonyericsson/paneview/PaneView$ScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Lcom/sonyericsson/paneview/PaneAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG_FPS:Z = false

.field private static final FRAME_DELAY:J = 0xaL

.field private static final POSITION_TOLERANCE:F = 0.0010f

.field private static final RUBBER_BAND_FACTOR:F = 0.4f

.field private static final VELOCITY_TOLERANCE:F = 0.0010f


# instance fields
.field private mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

.field private mBackplate:Landroid/graphics/drawable/Drawable;

.field private mBackplateBitmap:Landroid/graphics/Bitmap;

.field private mBackplateOffsetX:I

.field private mBackplateWidth:I

.field private mDataSetObserver:Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;

.field private mDebugAverageFps:F

.field private mDebugLastDrawTime:J

.field private final mDebugTextPaint:Landroid/graphics/Paint;

.field private mDeletedItems:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/paneview/PaneView$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mDoMirror:Z

.field private mDynamicsRunnable:Ljava/lang/Runnable;

.field private mFocusDesired:Z

.field private mFocusFinder:Lcom/sonyericsson/paneview/FocusFinder;

.field private mFocusPaddingBottom:I

.field private mFocusPaddingLeft:I

.field private mFocusPaddingRight:I

.field private mFocusPaddingTop:I

.field private mFocusedItemDrawable:Landroid/graphics/drawable/Drawable;

.field private mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

.field private mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

.field private mInvalidRect:Landroid/graphics/Rect;

.field private mIsInteracting:Z

.field private mItemBackgroundDrawn:Z

.field private mItemFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mItemKeyListener:Landroid/view/View$OnKeyListener;

.field private mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

.field private mItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/paneview/PaneView$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItems1:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/paneview/PaneView$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItems2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/paneview/PaneView$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsSorted:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/paneview/PaneView$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mKeepMaxScroll:Z

.field private mMarginF:F

.field private mMaxScroll:F

.field private mNumberOfPanes:I

.field private mOnLayoutListener:Lcom/sonyericsson/paneview/PaneView$OnLayoutListener;

.field private mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

.field private mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

.field private mPreferExternalFocus:Z

.field private mPreventExternalFocus:Z

.field private mRejectPaddingTouch:Z

.field private mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

.field private mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

.field private mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

.field private mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

.field private mSelectedItemDrawable:Landroid/graphics/drawable/Drawable;

.field private mSrcBlit:Z

.field private mSrcBlitPaint:Landroid/graphics/Paint;

.field private mStandardRenderersEnabled:Z

.field private mTouchIsLocked:Z

.field private mTransformer:Lcom/sonyericsson/paneview/Transformer;

.field private mVelocityThreshold:I

.field private mVerticalScrollEnabled:Z

.field private mViewCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWidthWithMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 438
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 295
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    .line 301
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems2:Ljava/util/HashMap;

    .line 304
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    .line 307
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    .line 316
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    .line 325
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDeletedItems:Ljava/util/LinkedList;

    .line 364
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDebugTextPaint:Landroid/graphics/Paint;

    .line 366
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    .line 375
    new-instance v1, Lcom/sonyericsson/paneview/FocusFinder;

    invoke-direct {v1}, Lcom/sonyericsson/paneview/FocusFinder;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusFinder:Lcom/sonyericsson/paneview/FocusFinder;

    .line 427
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    .line 440
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    .line 442
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 444
    .local v0, touchSlop:I
    new-instance v1, Lcom/sonyericsson/paneview/GestureDetector;

    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->createGestureListener()Lcom/sonyericsson/paneview/GestureDetector$GestureListener;

    move-result-object v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/sonyericsson/paneview/GestureDetector;-><init>(Lcom/sonyericsson/paneview/GestureDetector$GestureListener;IJ)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    .line 447
    new-instance v1, Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;-><init>(Lcom/sonyericsson/paneview/PaneView;Lcom/sonyericsson/paneview/PaneView$1;)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDataSetObserver:Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;

    .line 449
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->createDynamicsRunnable()V

    .line 451
    new-instance v1, Lcom/sonyericsson/paneview/PaneView$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/paneview/PaneView$1;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    .line 463
    new-instance v1, Lcom/sonyericsson/paneview/PaneView$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/paneview/PaneView$2;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    .line 475
    new-instance v1, Lcom/sonyericsson/paneview/PaneView$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/paneview/PaneView$3;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemKeyListener:Landroid/view/View$OnKeyListener;

    .line 498
    new-instance v1, Lcom/sonyericsson/paneview/PaneView$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/paneview/PaneView$4;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 511
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/paneview/PaneView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/paneview/PaneView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->pixelsToPosition(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/paneview/PaneView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/paneview/PaneView;FFF)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/paneview/PaneView;->updateSnapPosition(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/paneview/PaneView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    return v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->interactionStart()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/paneview/PaneView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->onDataChanged(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->interactionEnd()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/paneview/PaneView;Lcom/sonyericsson/paneview/PaneView$AdapterItem;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/paneview/PaneView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/paneview/PaneView;II)Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/paneview/PaneView;->getContainingItem(II)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/paneview/PaneView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private addItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/view/View;Z)V
    .locals 3
    .parameter "item"
    .parameter "view"
    .parameter "addAsChild"

    .prologue
    const/high16 v2, 0x4000

    .line 2356
    if-nez p2, :cond_0

    .line 2384
    :goto_0
    return-void

    .line 2361
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2363
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 2367
    :cond_1
    iput-object p2, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 2368
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2371
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    if-eqz v0, :cond_2

    .line 2372
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/sonyericsson/paneview/PaneView$ItemViewListener;->onViewAdded(ILandroid/view/View;)V

    .line 2376
    :cond_2
    if-eqz p3, :cond_3

    .line 2378
    invoke-direct {p0, p2}, Lcom/sonyericsson/paneview/PaneView;->addViewAndLayoutParams(Landroid/view/View;)V

    .line 2382
    :cond_3
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    or-int/2addr v0, v2

    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v1, v1, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    or-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method private addRootView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 2624
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2625
    .local v2, parent:Landroid/view/ViewParent;
    move-object v1, p1

    .line 2627
    .local v1, descendant:Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_0

    if-eq v2, p0, :cond_0

    .line 2628
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 2629
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    .line 2632
    :cond_0
    if-nez v2, :cond_1

    .line 2633
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->addViewAndLayoutParams(Landroid/view/View;)V

    .line 2635
    :cond_1
    return-void
.end method

.method private addViewAndLayoutParams(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, -0x2

    .line 2683
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2684
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 2685
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2688
    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/sonyericsson/paneview/PaneView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2689
    return-void
.end method

.method private addViewToCache(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "viewType"

    .prologue
    .line 2411
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 2412
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 2413
    .local v0, viewTypeCache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 2414
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #viewTypeCache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2415
    .restart local v0       #viewTypeCache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2417
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2419
    .end local v0           #viewTypeCache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method private clearItems(Ljava/util/HashMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/paneview/PaneView$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2013
    .local p1, items:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 2014
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneLocation;->recycle()V

    .line 2015
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    goto :goto_0

    .line 2017
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 2018
    return-void
.end method

.method private createDynamicsRunnable()V
    .locals 1

    .prologue
    .line 1551
    new-instance v0, Lcom/sonyericsson/paneview/PaneView$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/paneview/PaneView$6;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    .line 1571
    return-void
.end method

.method private createGestureListener()Lcom/sonyericsson/paneview/GestureDetector$GestureListener;
    .locals 1

    .prologue
    .line 1396
    new-instance v0, Lcom/sonyericsson/paneview/PaneView$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/paneview/PaneView$5;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    return-object v0
.end method

.method private createSrcBlitPaint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2209
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    .line 2210
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2211
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2212
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2213
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2214
    return-void
.end method

.method private detectUserPaneSwitch(Landroid/view/View;Landroid/view/View;I)Z
    .locals 6
    .parameter "currentFocus"
    .parameter "newFocus"
    .parameter "direction"

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    .line 2700
    const/4 v1, 0x0

    .line 2702
    .local v1, scroll:Z
    if-eq p3, v4, :cond_0

    if-ne p3, v5, :cond_3

    .line 2703
    :cond_0
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2704
    .local v0, focusRect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 2705
    .local v3, sourceRect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 2707
    .local v2, scrollRect:Landroid/graphics/Rect;
    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/paneview/PaneView;->getFocusRectInRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2708
    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/paneview/PaneView;->getFocusRectInRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2710
    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2711
    invoke-direct {p0, p0, v2}, Lcom/sonyericsson/paneview/PaneView;->offsetRectToRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2715
    if-ne p3, v4, :cond_4

    .line 2716
    iget v4, v2, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 2725
    :cond_1
    :goto_0
    invoke-static {p3, v3, v2, v0}, Lcom/sonyericsson/paneview/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2726
    const/4 v1, 0x1

    .line 2729
    :cond_2
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2730
    invoke-static {v3}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2731
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2734
    .end local v0           #focusRect:Landroid/graphics/Rect;
    .end local v2           #scrollRect:Landroid/graphics/Rect;
    .end local v3           #sourceRect:Landroid/graphics/Rect;
    :cond_3
    return v1

    .line 2717
    .restart local v0       #focusRect:Landroid/graphics/Rect;
    .restart local v2       #scrollRect:Landroid/graphics/Rect;
    .restart local v3       #sourceRect:Landroid/graphics/Rect;
    :cond_4
    if-ne p3, v5, :cond_1

    .line 2718
    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/graphics/Rect;->right:I

    iput v4, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private drawBackplate(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1352
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 1353
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 1354
    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateWidth:I

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateWidth:I

    move v0, v4

    .line 1356
    .local v0, backplateWidth:I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    .line 1358
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1359
    .local v3, tmpCanvas:Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v7, v7, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1360
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1363
    .end local v0           #backplateWidth:I
    .end local v3           #tmpCanvas:Landroid/graphics/Canvas;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v4}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v4

    float-to-int v2, v4

    .line 1365
    .local v2, pane1:I
    if-ltz v2, :cond_1

    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    if-ge v2, v4, :cond_1

    .line 1366
    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateOffsetX:I

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v5

    add-int v1, v4, v5

    .line 1367
    .local v1, left:I
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    int-to-float v5, v1

    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1368
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v1, v7, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 1372
    .end local v1           #left:I
    :cond_1
    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_2

    .line 1373
    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateOffsetX:I

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v5

    add-int v1, v4, v5

    .line 1374
    .restart local v1       #left:I
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    int-to-float v5, v1

    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1375
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v1, v7, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 1379
    .end local v1           #left:I
    .end local v2           #pane1:I
    :cond_2
    return-void

    .line 1354
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method private drawDeletedItems(Landroid/graphics/Canvas;F)V
    .locals 6
    .parameter "canvas"
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 2089
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mDeletedItems:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2091
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/paneview/PaneView$Item;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2092
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/paneview/PaneView$Item;

    .line 2094
    .local v0, deletedItem:Lcom/sonyericsson/paneview/PaneView$Item;
    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/paneview/PaneView;->drawItemUsingRenderer(Landroid/graphics/Canvas;Lcom/sonyericsson/paneview/PaneView$Item;F)Z

    move-result v2

    .line 2096
    .local v2, newFrame:Z
    if-nez v2, :cond_0

    .line 2098
    iget-object v3, v0, Lcom/sonyericsson/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/paneview/PaneView;->removeViewInLayout(Landroid/view/View;)V

    .line 2102
    iput-object v5, v0, Lcom/sonyericsson/paneview/PaneView$Item;->view:Landroid/view/View;

    .line 2105
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v4, v0, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v3, v4}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 2106
    iput-object v5, v0, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 2109
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2116
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->invalidate()V

    goto :goto_0

    .line 2118
    .end local v0           #deletedItem:Lcom/sonyericsson/paneview/PaneView$Item;
    .end local v2           #newFrame:Z
    :cond_1
    return-void
.end method

.method private static drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "canvas"
    .parameter "drawable"
    .parameter "rect"

    .prologue
    .line 2075
    if-eqz p1, :cond_0

    .line 2076
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2077
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2079
    :cond_0
    return-void
.end method

.method private drawFocusRect(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1382
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1383
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1384
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1385
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusedItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v1, v0}, Lcom/sonyericsson/paneview/PaneView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 1386
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1388
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private drawItemUsingRenderer(Landroid/graphics/Canvas;Lcom/sonyericsson/paneview/PaneView$Item;F)Z
    .locals 7
    .parameter "canvas"
    .parameter "item"
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 2226
    iget-object v0, p2, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-nez v0, :cond_0

    .line 2228
    const/4 v0, 0x0

    .line 2248
    :goto_0
    return v0

    .line 2233
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2234
    invoke-direct {p0, v2, p3}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2237
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 2238
    .local v3, targetRect:Landroid/graphics/Rect;
    iget-object v0, p2, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2239
    iget-object v0, p2, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v0, v0, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v0, v0

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2242
    iget-object v0, p2, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    iget-object v1, p2, Lcom/sonyericsson/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z

    move-result v6

    .line 2245
    .local v6, newFrame:Z
    invoke-static {v3}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2246
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v0, v6

    .line 2248
    goto :goto_0
.end method

.method private drawItems(Landroid/graphics/Canvas;F)V
    .locals 8
    .parameter "canvas"
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    .line 2127
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 2128
    .local v4, viewRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2130
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 2131
    .local v2, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 2136
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v5, :cond_3

    .line 2137
    invoke-direct {p0, p1, v2, p2}, Lcom/sonyericsson/paneview/PaneView;->drawItemUsingRenderer(Landroid/graphics/Canvas;Lcom/sonyericsson/paneview/PaneView$Item;F)Z

    move-result v3

    .line 2138
    .local v3, newFrame:Z
    if-nez v3, :cond_2

    iget-boolean v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->rendererIsStandard:Z

    if-nez v5, :cond_2

    .line 2140
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v6, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v5, v6}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 2141
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 2142
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    invoke-direct {p0, v5, p2, v4}, Lcom/sonyericsson/paneview/PaneView;->isLocationVisible(Lcom/sonyericsson/paneview/PaneLocation;FLandroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2145
    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 2148
    :cond_1
    iget-boolean v5, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    if-eqz v5, :cond_2

    .line 2151
    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->setStandardRenderer(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 2157
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->invalidate()V

    goto :goto_0

    .line 2159
    .end local v3           #newFrame:Z
    :cond_3
    const/4 v0, 0x0

    .line 2161
    .local v0, cache:Landroid/graphics/Bitmap;
    iget-boolean v5, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlit:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/sonyericsson/paneview/PaneView;->mItemBackgroundDrawn:Z

    if-nez v5, :cond_4

    .line 2162
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2165
    :cond_4
    if-eqz v0, :cond_5

    .line 2166
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, p1, v5, v0}, Lcom/sonyericsson/paneview/PaneView;->srcBlitChild(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 2170
    :goto_1
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/sonyericsson/paneview/PaneView;->unionInvalidRectWithView(Landroid/view/View;)V

    goto :goto_0

    .line 2168
    :cond_5
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getDrawingTime()J

    move-result-wide v6

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/sonyericsson/paneview/PaneView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 2174
    .end local v0           #cache:Landroid/graphics/Bitmap;
    .end local v2           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_6
    invoke-static {v4}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2175
    return-void
.end method

.method private drawUsingTransformer(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 2027
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v5}, Lcom/sonyericsson/paneview/Transformer;->update()V

    .line 2029
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 2030
    .local v3, rect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 2031
    .local v4, viewRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2034
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 2035
    .local v2, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonyericsson/paneview/PaneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 2036
    .local v0, adapterItem:Ljava/lang/Object;
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v5, v0, v3}, Lcom/sonyericsson/paneview/Transformer;->getDrawRect(Ljava/lang/Object;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2037
    invoke-static {v4, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2038
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-nez v5, :cond_1

    .line 2039
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v5, v5

    invoke-direct {p0, v2, v5}, Lcom/sonyericsson/paneview/PaneView;->layoutItem(Lcom/sonyericsson/paneview/PaneView$AdapterItem;F)V

    .line 2042
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v5, v0}, Lcom/sonyericsson/paneview/Transformer;->isSelected(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonyericsson/paneview/PaneAdapter;->isInteractive(I)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonyericsson/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2045
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v5, v3}, Lcom/sonyericsson/paneview/PaneView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 2048
    :cond_2
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 2049
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    iget-object v6, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-interface {v5, v0, v6}, Lcom/sonyericsson/paneview/Transformer;->addItemToDraw(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_0

    .line 2055
    .end local v0           #adapterItem:Ljava/lang/Object;
    .end local v2           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_3
    invoke-static {v4}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2056
    invoke-static {v3}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2060
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v5, p1}, Lcom/sonyericsson/paneview/Transformer;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2063
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->invalidate()V

    .line 2065
    :cond_4
    return-void
.end method

.method private ensureItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;Z)V
    .locals 11
    .parameter "item"
    .parameter "rect"
    .parameter "addAsChild"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x4000

    const/4 v8, 0x1

    .line 2278
    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v0

    .line 2279
    .local v0, adapterPosition:I
    const/4 v1, 0x0

    .line 2281
    .local v1, gotView:Z
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-interface {v4}, Lcom/sonyericsson/paneview/PaneAdapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$600(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-interface {v6, v0}, Lcom/sonyericsson/paneview/PaneAdapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 2283
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ID has changed!A posible cause of this is that the client has changed the data without notifiying us (via the observer on the adapter).If the IDs are not stable, hasStableIds() should return false."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2289
    :cond_0
    iget-object v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-boolean v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->viewValid:Z

    if-nez v4, :cond_6

    .line 2292
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    iget-object v5, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-interface {v4, v0, v5, p0}, Lcom/sonyericsson/paneview/PaneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2293
    .local v2, view:Landroid/view/View;
    const/4 v1, 0x1

    .line 2295
    iget-object v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eq v2, v4, :cond_1

    .line 2299
    const-string v4, "PaneView"

    const-string v5, "convertView does not seem to be handled efficiently by the adaptor"

    invoke-static {v4, v5}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 2304
    invoke-direct {p0, p1, v2, p3}, Lcom/sonyericsson/paneview/PaneView;->addItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/view/View;Z)V

    .line 2307
    :cond_1
    iput-boolean v8, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->viewValid:Z

    .line 2317
    .end local v2           #view:Landroid/view/View;
    :cond_2
    :goto_0
    iget-object v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    if-eqz v4, :cond_3

    .line 2318
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->setStandardRenderer(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 2321
    :cond_3
    iget-object v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 2322
    iget-object v2, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 2324
    .restart local v2       #view:Landroid/view/View;
    if-eqz v1, :cond_4

    .line 2325
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sonyericsson/paneview/PaneAdapter;->isInteractive(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2326
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sonyericsson/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2327
    invoke-virtual {v2, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 2329
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mItemKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2330
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mItemFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2340
    :cond_4
    :goto_1
    iget-object v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v4, v4, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    or-int/2addr v4, v9

    iget-object v5, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    or-int/2addr v5, v9

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 2342
    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 2344
    .end local v2           #view:Landroid/view/View;
    :cond_5
    return-void

    .line 2309
    :cond_6
    iget-object v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-nez v4, :cond_2

    .line 2311
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-interface {v4, v0}, Lcom/sonyericsson/paneview/PaneAdapter;->getItemViewType(I)I

    move-result v3

    .line 2312
    .local v3, viewType:I
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-direct {p0, v3}, Lcom/sonyericsson/paneview/PaneView;->removeViewFromCache(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v0, v5, p0}, Lcom/sonyericsson/paneview/PaneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2313
    .restart local v2       #view:Landroid/view/View;
    const/4 v1, 0x1

    .line 2314
    invoke-direct {p0, p1, v2, p3}, Lcom/sonyericsson/paneview/PaneView;->addItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/view/View;Z)V

    goto :goto_0

    .line 2332
    .end local v3           #viewType:I
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 2333
    invoke-virtual {v2, v10}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2334
    invoke-virtual {v2, v10}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_1
.end method

.method private findItem(Landroid/view/View;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    .locals 3
    .parameter "view"

    .prologue
    .line 2494
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 2495
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-ne v2, p1, :cond_0

    move-object v2, v1

    .line 2500
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private focusSearchOffScreen(Landroid/view/View;I)Landroid/view/View;
    .locals 10
    .parameter "currentFocus"
    .parameter "direction"

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x2

    const/4 v7, 0x0

    const/16 v6, 0x42

    const/16 v5, 0x11

    .line 2801
    const/4 v1, 0x0

    .line 2802
    .local v1, newFocus:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v2

    .line 2803
    .local v2, pane:I
    const/4 v3, 0x0

    .line 2805
    .local v3, sourceRect:Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 2806
    new-instance v3, Landroid/graphics/Rect;

    .end local v3           #sourceRect:Landroid/graphics/Rect;
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2807
    .restart local v3       #sourceRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v3}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2810
    invoke-virtual {p0, p1, v3}, Lcom/sonyericsson/paneview/PaneView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2813
    :cond_0
    if-ne p2, v5, :cond_5

    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->panesToTheLeft(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2814
    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->getLeftPane(I)I

    move-result v4

    invoke-direct {p0, p2, v4}, Lcom/sonyericsson/paneview/PaneView;->getFocusableViewsOnPane(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 2815
    .local v0, focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v3, :cond_4

    .line 2821
    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 2822
    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 2823
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusFinder:Lcom/sonyericsson/paneview/FocusFinder;

    invoke-virtual {v4, v0, p0, v3, v6}, Lcom/sonyericsson/paneview/FocusFinder;->findNextFocusFromRect(Ljava/util/ArrayList;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    .line 2830
    :goto_0
    if-nez v1, :cond_1

    iget-boolean v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusDesired:Z

    if-eqz v4, :cond_1

    .line 2836
    invoke-virtual {p0, v8}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    .line 2839
    move-object v1, p0

    .line 2842
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->moveToLeftPane()Z

    .line 2881
    .end local v0           #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    if-eq v1, p0, :cond_3

    .line 2884
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->addRootView(Landroid/view/View;)V

    .line 2887
    :cond_3
    return-object v1

    .line 2826
    .restart local v0       #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusFinder:Lcom/sonyericsson/paneview/FocusFinder;

    invoke-virtual {v4, v0, p0, v9, v6}, Lcom/sonyericsson/paneview/FocusFinder;->findNextFocus(Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 2843
    .end local v0           #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    if-ne p2, v6, :cond_8

    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->panesToTheRight(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2844
    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->getRightPane(I)I

    move-result v4

    invoke-direct {p0, p2, v4}, Lcom/sonyericsson/paneview/PaneView;->getFocusableViewsOnPane(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 2845
    .restart local v0       #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v3, :cond_7

    .line 2851
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2852
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2853
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusFinder:Lcom/sonyericsson/paneview/FocusFinder;

    invoke-virtual {v4, v0, p0, v3, v5}, Lcom/sonyericsson/paneview/FocusFinder;->findNextFocusFromRect(Ljava/util/ArrayList;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    .line 2860
    :goto_2
    if-nez v1, :cond_6

    iget-boolean v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusDesired:Z

    if-eqz v4, :cond_6

    .line 2866
    invoke-virtual {p0, v8}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    .line 2869
    move-object v1, p0

    .line 2872
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->moveToRightPane()Z

    goto :goto_1

    .line 2856
    :cond_7
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusFinder:Lcom/sonyericsson/paneview/FocusFinder;

    invoke-virtual {v4, v0, p0, v9, v5}, Lcom/sonyericsson/paneview/FocusFinder;->findNextFocus(Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .line 2873
    .end local v0           #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_8
    const/16 v4, 0x82

    if-eq p2, v4, :cond_9

    const/16 v4, 0x21

    if-ne p2, v4, :cond_2

    .line 2874
    :cond_9
    invoke-direct {p0, p2, v2}, Lcom/sonyericsson/paneview/PaneView;->getFocusableViewsOnPane(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 2875
    .restart local v0       #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v3, :cond_2

    .line 2876
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusFinder:Lcom/sonyericsson/paneview/FocusFinder;

    invoke-virtual {v4, v0, p0, v3, p2}, Lcom/sonyericsson/paneview/FocusFinder;->findNextFocusFromRect(Ljava/util/ArrayList;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method private getAdapterItems(Ljava/util/HashMap;Ljava/util/HashMap;Z)V
    .locals 20
    .parameter
    .parameter
    .parameter "enableAnimations"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/paneview/PaneView$AdapterItem;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/paneview/PaneView$AdapterItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1796
    .local p1, newItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    .local p2, oldItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    move-object v5, v0

    invoke-interface {v5}, Lcom/sonyericsson/paneview/PaneAdapter;->hasStableIds()Z

    move-result v18

    .line 1797
    .local v18, stableIDs:Z
    if-nez v18, :cond_0

    .line 1800
    const/16 p3, 0x0

    .line 1805
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->clear()V

    .line 1808
    :cond_0
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 1809
    .local v6, itemDrawRect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/paneview/PaneLocation;->obtain()Lcom/sonyericsson/paneview/PaneLocation;

    move-result-object v16

    .line 1810
    .local v16, newLocation:Lcom/sonyericsson/paneview/PaneLocation;
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v19

    .line 1811
    .local v19, viewRect:Landroid/graphics/Rect;
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v9

    move-object/from16 v0, v19

    move v1, v5

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v17

    .line 1814
    .local v17, position:F
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    move-object v5, v0

    invoke-interface {v5}, Lcom/sonyericsson/paneview/PaneAdapter;->getCount()I

    move-result v5

    if-ge v11, v5, :cond_7

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    move-object v5, v0

    move-object v0, v5

    move v1, v11

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/paneview/PaneAdapter;->getLocation(ILcom/sonyericsson/paneview/PaneLocation;)V

    .line 1819
    const/4 v14, 0x0

    .line 1821
    .local v14, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    if-eqz v18, :cond_5

    .line 1824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    move-object v5, v0

    invoke-interface {v5, v11}, Lcom/sonyericsson/paneview/PaneAdapter;->getItemId(I)J

    move-result-wide v12

    .line 1825
    .local v12, id:J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    check-cast v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1831
    .restart local v14       #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :goto_1
    if-eqz v14, :cond_6

    .line 1840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    move-object v5, v0

    if-eqz v5, :cond_2

    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneLocation;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-nez v5, :cond_2

    if-eqz p3, :cond_2

    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v17

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/paneview/PaneView;->isLocationVisible(Lcom/sonyericsson/paneview/PaneLocation;FLandroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/paneview/PaneView;->isLocationVisible(Lcom/sonyericsson/paneview/PaneLocation;FLandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1846
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    move-object v5, v0

    invoke-interface {v5, v11}, Lcom/sonyericsson/paneview/RendererFactory;->getMoveRenderer(I)Lcom/sonyericsson/animation/Renderer;

    move-result-object v5

    iput-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1847
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v5, :cond_2

    .line 1848
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1849
    const/4 v5, 0x0

    iget-object v7, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v7, v7, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    move v1, v5

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 1851
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-interface/range {v5 .. v10}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 1856
    :cond_2
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneLocation;->set(Lcom/sonyericsson/paneview/PaneLocation;)V

    .line 1857
    invoke-static {v14, v11}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$502(Lcom/sonyericsson/paneview/PaneView$AdapterItem;I)I

    .line 1859
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 1862
    const/4 v5, 0x0

    iput-boolean v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->viewValid:Z

    .line 1888
    :cond_3
    :goto_2
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v7

    if-le v5, v7, :cond_4

    .line 1889
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->pixelsToPosition(F)F

    move-result v15

    .line 1890
    .local v15, maxScroll:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    move v5, v0

    cmpl-float v5, v15, v5

    if-lez v5, :cond_4

    .line 1891
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    .line 1896
    .end local v15           #maxScroll:F
    :cond_4
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1828
    .end local v12           #id:J
    :cond_5
    int-to-long v12, v11

    .restart local v12       #id:J
    goto/16 :goto_1

    .line 1870
    :cond_6
    new-instance v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .end local v14           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    const/4 v5, 0x0

    invoke-direct {v14, v5}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;-><init>(Lcom/sonyericsson/paneview/PaneView$1;)V

    .line 1871
    .restart local v14       #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    invoke-static {}, Lcom/sonyericsson/paneview/PaneLocation;->obtain()Lcom/sonyericsson/paneview/PaneLocation;

    move-result-object v5

    iput-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    .line 1872
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneLocation;->set(Lcom/sonyericsson/paneview/PaneLocation;)V

    .line 1873
    invoke-static {v14, v11}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$502(Lcom/sonyericsson/paneview/PaneView$AdapterItem;I)I

    .line 1874
    invoke-static {v14, v12, v13}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$602(Lcom/sonyericsson/paneview/PaneView$AdapterItem;J)J

    .line 1877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    move-object v5, v0

    if-eqz v5, :cond_3

    if-eqz p3, :cond_3

    .line 1878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    move-object v5, v0

    invoke-interface {v5, v11}, Lcom/sonyericsson/paneview/RendererFactory;->getAddRenderer(I)Lcom/sonyericsson/animation/Renderer;

    move-result-object v5

    iput-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1879
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v5, :cond_3

    .line 1880
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1881
    const/4 v5, 0x0

    iget-object v7, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v7, v7, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    move v1, v5

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 1883
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-interface/range {v5 .. v10}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    goto/16 :goto_2

    .line 1899
    .end local v12           #id:J
    .end local v14           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->updateMaxScroll(Ljava/util/Collection;)V

    .line 1901
    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1902
    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/paneview/PaneLocation;->recycle()V

    .line 1903
    invoke-static {v6}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1904
    return-void
.end method

.method private getContainingItem(II)Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1528
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1532
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1533
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1534
    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1535
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1536
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    move-object v3, v1

    .line 1543
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :goto_0
    return-object v3

    .line 1542
    :cond_1
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1543
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getFocusRectInRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "view"
    .parameter "rect"

    .prologue
    .line 2613
    invoke-virtual {p1, p2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2614
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/paneview/PaneView;->offsetRectToRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2615
    return-void
.end method

.method private getFocusableViewsOnPane(II)Ljava/util/ArrayList;
    .locals 9
    .parameter "direction"
    .parameter "pane"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2646
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2647
    .local v4, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v5}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v3

    .line 2649
    .local v3, scroll:I
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 2651
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 2652
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonyericsson/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2653
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2654
    int-to-float v5, p2

    iget-object v6, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v6, v6, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v6, v6

    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v5

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    neg-int v6, v3

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2656
    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-lez v5, :cond_0

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 2657
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 2658
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2659
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2664
    :goto_1
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 2665
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v5, v4, p1, v8}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0

    .line 2661
    :cond_1
    invoke-direct {p0, v1, v2, v8}, Lcom/sonyericsson/paneview/PaneView;->ensureItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;Z)V

    goto :goto_1

    .line 2671
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_2
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2673
    return-object v4
.end method

.method private getLeftPane(I)I
    .locals 1
    .parameter "pane"

    .prologue
    .line 2744
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_0

    .line 2745
    add-int/lit8 v0, p1, 0x1

    .line 2747
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method private getPaneXOffset(FF)I
    .locals 1
    .parameter "position"
    .parameter "pane"

    .prologue
    .line 2446
    sub-float v0, p2, p1

    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v0

    return v0
.end method

.method private getRightPane(I)I
    .locals 1
    .parameter "pane"

    .prologue
    .line 2758
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_0

    .line 2759
    const/4 v0, 0x1

    sub-int v0, p1, v0

    .line 2761
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private handleDeletedItems(Ljava/util/HashMap;Z)V
    .locals 11
    .parameter
    .parameter "enableAnimations"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/paneview/PaneView$AdapterItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, deletedItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 1931
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1934
    .local v1, itemDrawRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1936
    .local v7, deletedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    if-ne v7, v0, :cond_1

    .line 1937
    iput-object v10, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1941
    :cond_1
    if-eqz v7, :cond_0

    iget-object v0, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1942
    const/4 v6, 0x0

    .line 1946
    .local v6, deleteRenderer:Lcom/sonyericsson/animation/Renderer;
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 1947
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    invoke-interface {v0}, Lcom/sonyericsson/paneview/RendererFactory;->getDeleteRenderer()Lcom/sonyericsson/animation/Renderer;

    move-result-object v6

    .line 1949
    :cond_2
    if-eqz v6, :cond_3

    .line 1952
    new-instance v9, Lcom/sonyericsson/paneview/PaneView$Item;

    invoke-direct {v9, v10}, Lcom/sonyericsson/paneview/PaneView$Item;-><init>(Lcom/sonyericsson/paneview/PaneView$1;)V

    .line 1953
    .local v9, item:Lcom/sonyericsson/paneview/PaneView$Item;
    invoke-static {}, Lcom/sonyericsson/paneview/PaneLocation;->obtain()Lcom/sonyericsson/paneview/PaneLocation;

    move-result-object v0

    iput-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    .line 1954
    iget-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v3, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/paneview/PaneLocation;->set(Lcom/sonyericsson/paneview/PaneLocation;)V

    .line 1955
    iget-object v0, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iput-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->view:Landroid/view/View;

    .line 1956
    iput-object v6, v9, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1957
    iget-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1958
    const/4 v0, 0x0

    iget-object v3, v9, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v3, v3, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v3, v3

    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1960
    iget-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 1961
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDeletedItems:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1964
    .end local v9           #item:Lcom/sonyericsson/paneview/PaneView$Item;
    :cond_3
    iget-object v0, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->removeViewInLayout(Landroid/view/View;)V

    .line 1968
    iput-object v10, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    goto :goto_0

    .line 1974
    .end local v6           #deleteRenderer:Lcom/sonyericsson/animation/Renderer;
    .end local v7           #deletedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->clearItems(Ljava/util/HashMap;)V

    .line 1976
    invoke-static {v1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1977
    return-void
.end method

.method private interactionEnd()V
    .locals 1

    .prologue
    .line 1592
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    if-eqz v0, :cond_0

    .line 1593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    .line 1594
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    invoke-interface {v0}, Lcom/sonyericsson/paneview/PaneView$InteractionListener;->onInteractionEnd()V

    .line 1596
    :cond_0
    return-void
.end method

.method private interactionStart()V
    .locals 1

    .prologue
    .line 1585
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    if-eqz v0, :cond_0

    .line 1586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    .line 1587
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    invoke-interface {v0}, Lcom/sonyericsson/paneview/PaneView$InteractionListener;->onInteractionStart()V

    .line 1589
    :cond_0
    return-void
.end method

.method private isLocationVisible(Lcom/sonyericsson/paneview/PaneLocation;FLandroid/graphics/Rect;)Z
    .locals 4
    .parameter "location"
    .parameter "position"
    .parameter "viewRect"

    .prologue
    const/high16 v3, 0x3f80

    .line 1989
    iget v2, p1, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v2, p1, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 1992
    :cond_0
    const/4 v2, 0x0

    .line 2003
    :goto_0
    return v2

    .line 1994
    :cond_1
    const/4 v1, 0x0

    .line 1995
    .local v1, visible:Z
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1996
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v2, p1, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1997
    iget v2, p1, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v2, v2

    invoke-direct {p0, p2, v2}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1999
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2000
    const/4 v1, 0x1

    .line 2002
    :cond_2
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    move v2, v1

    .line 2003
    goto :goto_0
.end method

.method private layoutItem(Lcom/sonyericsson/paneview/PaneView$AdapterItem;F)V
    .locals 4
    .parameter "item"
    .parameter "placement"

    .prologue
    .line 2259
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2260
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v1, v1, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2261
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v1, v1, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v1, v1

    invoke-direct {p0, p2, v1}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2263
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/paneview/PaneView;->ensureItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;Z)V

    .line 2264
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->unionInvalidRectWithView(Landroid/view/View;)V

    .line 2265
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2266
    return-void
.end method

.method private offsetRectToRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "view"
    .parameter "rect"

    .prologue
    .line 2599
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2601
    .local v0, root:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 2602
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2604
    :cond_0
    return-void
.end method

.method private onDataChanged(Z)V
    .locals 6
    .parameter "enableAnimations"

    .prologue
    const/4 v5, 0x1

    .line 1719
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1720
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItems2:Ljava/util/HashMap;

    .line 1721
    .local v0, newItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    .line 1728
    .local v1, oldItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->clearItems(Ljava/util/HashMap;)V

    .line 1730
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    if-eqz v2, :cond_4

    .line 1732
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-interface {v2}, Lcom/sonyericsson/paneview/PaneAdapter;->getNumberOfPanes()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    .line 1736
    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/paneview/PaneView;->getAdapterItems(Ljava/util/HashMap;Ljava/util/HashMap;Z)V

    .line 1743
    :goto_1
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1744
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/paneview/PaneView;->handleDeletedItems(Ljava/util/HashMap;Z)V

    .line 1748
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    .line 1751
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 1752
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1753
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    new-instance v3, Lcom/sonyericsson/paneview/PaneView$7;

    invoke-direct {v3, p0}, Lcom/sonyericsson/paneview/PaneView$7;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1761
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    if-eqz v2, :cond_1

    .line 1762
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v3

    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    invoke-interface {v2, v3, v4}, Lcom/sonyericsson/paneview/PaneView$ScrollListener;->onScroll(FI)V

    .line 1766
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 1767
    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    sub-int/2addr v2, v5

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    .line 1771
    :cond_2
    iget-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusDesired:Z

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->setFocusable(Z)V

    .line 1772
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    .line 1775
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->requestLayout()V

    .line 1776
    return-void

    .line 1723
    .end local v0           #newItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    .end local v1           #oldItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    .line 1724
    .restart local v0       #newItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems2:Ljava/util/HashMap;

    .restart local v1       #oldItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    goto :goto_0

    .line 1738
    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    goto :goto_1
.end method

.method private panesToTheLeft(I)Z
    .locals 4
    .parameter "pane"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2772
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_1

    .line 2773
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getNumberOfPanes()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v0, v3

    .line 2775
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2773
    goto :goto_0

    .line 2775
    :cond_1
    if-lez p1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private panesToTheRight(I)Z
    .locals 4
    .parameter "pane"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2786
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_1

    .line 2787
    if-lez p1, :cond_0

    move v0, v3

    .line 2789
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2787
    goto :goto_0

    .line 2789
    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getNumberOfPanes()I

    move-result v1

    if-ge v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private pixelsToPosition(F)F
    .locals 2
    .parameter "pixels"

    .prologue
    .line 2471
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-nez v0, :cond_0

    .line 2472
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mWidthWithMargin:I

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 2475
    :goto_0
    return v0

    :cond_0
    neg-float v0, p1

    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mWidthWithMargin:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private positionToPixels(F)I
    .locals 2
    .parameter "position"

    .prologue
    .line 2456
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-nez v0, :cond_0

    .line 2457
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mWidthWithMargin:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2460
    :goto_0
    return v0

    :cond_0
    neg-float v0, p1

    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mWidthWithMargin:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 2394
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    if-eqz v1, :cond_0

    .line 2395
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v2

    iget-object v3, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/paneview/PaneView$ItemViewListener;->onViewRemoved(ILandroid/view/View;)V

    .line 2398
    :cond_0
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeViewInLayout(Landroid/view/View;)V

    .line 2399
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/paneview/PaneAdapter;->getItemViewType(I)I

    move-result v0

    .line 2400
    .local v0, viewType:I
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/paneview/PaneView;->addViewToCache(Landroid/view/View;I)V

    .line 2401
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 2402
    return-void
.end method

.method private removeViewFromCache(I)Landroid/view/View;
    .locals 4
    .parameter "viewType"

    .prologue
    const/4 v3, 0x0

    .line 2428
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 2429
    .local v0, viewTypeCache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    move-object v1, v3

    .line 2435
    .end local p0
    :goto_0
    return-object v1

    .line 2432
    .restart local p0
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    .line 2433
    goto :goto_0

    .line 2435
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v1, p0

    goto :goto_0
.end method

.method private scrollToView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 2896
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 2897
    .local v0, delta:I
    if-lez v0, :cond_1

    .line 2898
    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->pixelsToPosition(F)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->scroll(F)V

    .line 2905
    :cond_0
    :goto_0
    return-void

    .line 2900
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 2901
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2902
    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->pixelsToPosition(F)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->scroll(F)V

    goto :goto_0
.end method

.method private setStandardRenderer(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 1339
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sonyericsson/paneview/RendererFactory;->getStandardRenderer(I)Lcom/sonyericsson/animation/Renderer;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1340
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v0, :cond_0

    .line 1341
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1342
    .local v1, itemDrawRect:Landroid/graphics/Rect;
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->rendererIsStandard:Z

    .line 1343
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1344
    const/4 v0, 0x0

    iget-object v3, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v3, v3, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v3, v3

    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1346
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 1347
    invoke-static {v1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1349
    .end local v1           #itemDrawRect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private setupTransformer()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 994
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/sonyericsson/paneview/Transformer;->beginSetup(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 995
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 996
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 997
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v3, v3, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 998
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v3

    iget-object v4, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v4, v4, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v4, v4

    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v4}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1000
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1001
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sonyericsson/paneview/PaneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/sonyericsson/paneview/Transformer;->setupItem(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1003
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_0
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1005
    iput-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1007
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v3}, Lcom/sonyericsson/paneview/Transformer;->finishSetup()V

    .line 1012
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #rect:Landroid/graphics/Rect;
    :goto_1
    return-void

    .line 1009
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v3}, Lcom/sonyericsson/paneview/Transformer;->cleanup()V

    .line 1010
    iput-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    goto :goto_1
.end method

.method private srcBlitChild(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 11
    .parameter "canvas"
    .parameter "child"
    .parameter "cache"

    .prologue
    .line 2186
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 2187
    .local v7, cl:I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v9

    .line 2188
    .local v9, ct:I
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v8

    .line 2189
    .local v8, cr:I
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 2191
    .local v6, cb:I
    int-to-float v1, v7

    int-to-float v2, v9

    int-to-float v3, v8

    int-to-float v4, v6

    sget-object v5, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2203
    :goto_0
    return-void

    .line 2195
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 2197
    .local v10, restoreTo:I
    int-to-float v0, v7

    int-to-float v1, v9

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2198
    const/4 v0, 0x0

    const/4 v1, 0x0

    sub-int v2, v8, v7

    sub-int v3, v6, v9

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2200
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2202
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method private startDynamicsRunnable()V
    .locals 1

    .prologue
    .line 1574
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable(Z)V

    .line 1575
    return-void
.end method

.method private startDynamicsRunnable(Z)V
    .locals 1
    .parameter "startInteraction"

    .prologue
    .line 1578
    if-eqz p1, :cond_0

    .line 1579
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->interactionStart()V

    .line 1581
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->post(Ljava/lang/Runnable;)Z

    .line 1582
    return-void
.end method

.method private unionInvalidRectWithView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 2480
    if-eqz p1, :cond_0

    .line 2482
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 2484
    :cond_0
    return-void
.end method

.method private updateMaxScroll(Ljava/util/Collection;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/paneview/PaneView$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1907
    .local p1, adapterItems:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    iget-boolean v4, p0, Lcom/sonyericsson/paneview/PaneView;->mKeepMaxScroll:Z

    if-eqz v4, :cond_1

    .line 1920
    :cond_0
    return-void

    .line 1910
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v1

    .line 1911
    .local v1, height:I
    const/4 v4, 0x0

    iput v4, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    .line 1912
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1913
    .local v0, adapterItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v4, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v4, v4, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v4, v1, :cond_2

    .line 1914
    iget-object v4, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v4, v4, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/paneview/PaneView;->pixelsToPosition(F)F

    move-result v3

    .line 1915
    .local v3, maxScroll:F
    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    .line 1916
    iput v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    goto :goto_0
.end method

.method private updatePanePosition()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1603
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v7}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v4

    .line 1604
    .local v4, position:F
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v7}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v7

    invoke-direct {p0, v7}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v6

    .line 1605
    .local v6, scroll:I
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 1607
    .local v5, rect:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1608
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v7, v7, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1609
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v7, v7, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v7, v7

    invoke-direct {p0, v4, v7}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v7

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    neg-int v8, v6

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1611
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v8

    invoke-virtual {v5, v10, v10, v7, v8}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1613
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v7, :cond_2

    .line 1614
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1616
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/sonyericsson/paneview/PaneView;->addViewAndLayoutParams(Landroid/view/View;)V

    .line 1621
    :cond_1
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget-object v9, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1622
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget v8, v5, Landroid/graphics/Rect;->top:I

    iget-object v9, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1629
    :goto_1
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/sonyericsson/paneview/PaneView;->unionInvalidRectWithView(Landroid/view/View;)V

    goto :goto_0

    .line 1627
    :cond_2
    invoke-direct {p0, v1, v5, v11}, Lcom/sonyericsson/paneview/PaneView;->ensureItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;Z)V

    goto :goto_1

    .line 1630
    :cond_3
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v7, :cond_0

    iget-boolean v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->rendererIsStandard:Z

    if-eqz v7, :cond_0

    :cond_4
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1636
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 1637
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    if-eqz v7, :cond_0

    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v7, :cond_0

    .line 1638
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v8, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v7, v8}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 1639
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1640
    iput-boolean v10, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->rendererIsStandard:Z

    goto/16 :goto_0

    .line 1645
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_5
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_7

    .line 1648
    float-to-int v3, v4

    .line 1649
    .local v3, pane1:I
    if-ltz v3, :cond_6

    iget v7, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    if-ge v3, v7, :cond_6

    .line 1650
    iget v7, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateOffsetX:I

    invoke-virtual {p0, v3}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v8

    add-int v2, v7, v8

    .line 1651
    .local v2, left:I
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v7, v2, v10, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 1655
    .end local v2           #left:I
    :cond_6
    iget v7, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    sub-int/2addr v7, v11

    if-ge v3, v7, :cond_7

    .line 1656
    iget v7, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateOffsetX:I

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v8}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v8

    add-int v2, v7, v8

    .line 1657
    .restart local v2       #left:I
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v7, v2, v10, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 1662
    .end local v2           #left:I
    .end local v3           #pane1:I
    :cond_7
    invoke-static {v5}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1666
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    if-eqz v7, :cond_8

    .line 1667
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    iget v8, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    invoke-interface {v7, v4, v8}, Lcom/sonyericsson/paneview/PaneView$ScrollListener;->onScroll(FI)V

    .line 1671
    :cond_8
    invoke-virtual {p0, v10, v10}, Lcom/sonyericsson/paneview/PaneView;->awakenScrollBars(IZ)Z

    .line 1674
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/sonyericsson/paneview/PaneView;->invalidate(Landroid/graphics/Rect;)V

    .line 1675
    return-void
.end method

.method private updateSnapPosition(FFF)F
    .locals 5
    .parameter "velocityX"
    .parameter "position"
    .parameter "snapPosition"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 1497
    move v0, p3

    .line 1498
    .local v0, tmpSnapPosition:F
    iget-boolean v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-nez v1, :cond_2

    .line 1499
    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mVelocityThreshold:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    cmpl-float v1, p2, p3

    if-lez v1, :cond_1

    add-float v1, p3, v3

    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 1501
    add-float/2addr v0, v3

    .line 1516
    :cond_0
    :goto_0
    return v0

    .line 1502
    :cond_1
    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mVelocityThreshold:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    cmpg-float v1, p2, p3

    if-gez v1, :cond_0

    cmpl-float v1, p3, v4

    if-lez v1, :cond_0

    .line 1504
    sub-float/2addr v0, v3

    goto :goto_0

    .line 1509
    :cond_2
    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mVelocityThreshold:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    cmpg-float v1, p2, p3

    if-gez v1, :cond_3

    cmpl-float v1, p3, v4

    if-lez v1, :cond_3

    .line 1510
    sub-float/2addr v0, v3

    goto :goto_0

    .line 1511
    :cond_3
    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mVelocityThreshold:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    cmpl-float v1, p2, p3

    if-lez v1, :cond_0

    add-float v1, p3, v3

    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1513
    add-float/2addr v0, v3

    goto :goto_0
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 1029
    invoke-super {p0}, Landroid/widget/AdapterView;->cancelLongPress()V

    .line 1030
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/GestureDetector;->cancelLongPress()V

    .line 1031
    return-void
.end method

.method public clearAllRenderers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 689
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 690
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$Item;
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    if-eqz v2, :cond_0

    .line 691
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v2, v3}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 692
    iput-object v4, v1, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    goto :goto_0

    .line 696
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$Item;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mDeletedItems:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$Item;

    .line 697
    .restart local v1       #item:Lcom/sonyericsson/paneview/PaneView$Item;
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    if-eqz v2, :cond_2

    .line 698
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v2, v3}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 699
    iput-object v4, v1, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    goto :goto_1

    .line 702
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$Item;
    :cond_3
    return-void
.end method

.method public clearViews()V
    .locals 3

    .prologue
    .line 708
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 709
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 710
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    goto :goto_0

    .line 713
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_1
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1216
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 1217
    const/4 v3, 0x0

    .line 1223
    :goto_0
    return v3

    .line 1220
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    .line 1221
    .local v2, scrollPosition:F
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    invoke-static {v2, v4, v3}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v0

    .line 1222
    .local v0, clampedScrollPosition:F
    sub-float v3, v0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1223
    .local v1, outside:F
    const/high16 v3, 0x447a

    const/high16 v4, 0x3f80

    sub-float/2addr v4, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 6

    .prologue
    const/high16 v5, 0x447a

    const/4 v4, 0x0

    .line 1229
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 1230
    const/4 v3, 0x0

    .line 1240
    :goto_0
    return v3

    .line 1233
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    .line 1234
    .local v2, scrollPosition:F
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    invoke-static {v2, v4, v3}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v0

    .line 1236
    .local v0, clampedScrollPosition:F
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 1237
    sub-float v3, v0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1238
    .local v1, outside:F
    add-float v3, v0, v1

    mul-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_0

    .line 1240
    .end local v1           #outside:F
    :cond_1
    mul-float v3, v5, v0

    float-to-int v3, v3

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 1247
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1248
    const/4 v0, 0x0

    .line 1251
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x447a

    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 1282
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1284
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->drawBackplate(Landroid/graphics/Canvas;)V

    .line 1286
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v2}, Lcom/sonyericsson/paneview/Transformer;->isSetupFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1287
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->drawUsingTransformer(Landroid/graphics/Canvas;)V

    .line 1321
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->drawFocusRect(Landroid/graphics/Canvas;)V

    .line 1336
    return-void

    .line 1289
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v2, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    invoke-static {v3}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/paneview/PaneAdapter;->isInteractive(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    invoke-static {v3}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1295
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1296
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v2, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v2, v2, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1297
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v3, v3, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v3, v3, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v3, v3

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v2

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1302
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v2, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1303
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusedItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v2, v1}, Lcom/sonyericsson/paneview/PaneView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 1308
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItemBackgroundDrawn:Z

    .line 1310
    invoke-static {v1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1315
    .end local v1           #rect:Landroid/graphics/Rect;
    :goto_2
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 1317
    .local v0, position:F
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/paneview/PaneView;->drawDeletedItems(Landroid/graphics/Canvas;F)V

    .line 1318
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/paneview/PaneView;->drawItems(Landroid/graphics/Canvas;F)V

    goto/16 :goto_0

    .line 1305
    .end local v0           #position:F
    .restart local v1       #rect:Landroid/graphics/Rect;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v2, v1}, Lcom/sonyericsson/paneview/PaneView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1312
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_2
    iput-boolean v5, p0, Lcom/sonyericsson/paneview/PaneView;->mItemBackgroundDrawn:Z

    goto :goto_2
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 2
    .parameter "direction"

    .prologue
    .line 2915
    invoke-virtual {p0, p0, p1}, Lcom/sonyericsson/paneview/PaneView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2917
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .parameter "currentFocus"
    .parameter "direction"

    .prologue
    .line 2922
    const/4 v0, 0x0

    .line 2925
    .local v0, focusCandidate:Landroid/view/View;
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    .line 2927
    iget-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPreventExternalFocus:Z

    if-eqz v2, :cond_2

    .line 2931
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2938
    :goto_0
    iget-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPreferExternalFocus:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2941
    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/paneview/PaneView;->detectUserPaneSwitch(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2942
    const/4 v0, 0x0

    .line 2946
    :cond_0
    if-nez v0, :cond_3

    .line 2947
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/paneview/PaneView;->focusSearchOffScreen(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2957
    :cond_1
    :goto_1
    return-object v0

    .line 2935
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2948
    :cond_3
    const/16 v2, 0x21

    if-eq p2, v2, :cond_4

    const/16 v2, 0x82

    if-ne p2, v2, :cond_1

    :cond_4
    iget-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPreferExternalFocus:Z

    if-nez v2, :cond_1

    .line 2950
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/paneview/PaneView;->focusSearchOffScreen(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2952
    .local v1, offScreenFocus:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 2953
    move-object v0, v1

    goto :goto_1
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getAdapter()Lcom/sonyericsson/paneview/PaneAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/sonyericsson/paneview/PaneAdapter;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1263
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getCurrentPane()I
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v0}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "outRect"

    .prologue
    .line 1268
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1272
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1273
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingTop:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1274
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingRight:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1275
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingBottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1276
    return-void
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2511
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2512
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/paneview/PaneView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2517
    :goto_0
    return-void

    .line 2515
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getNumberOfPanes()I
    .locals 1

    .prologue
    .line 868
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    return v0
.end method

.method public getPaneAbsoluteOffset(I)I
    .locals 2
    .parameter "pane"

    .prologue
    .line 897
    const/4 v0, 0x0

    int-to-float v1, p1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v0

    return v0
.end method

.method public getPaneRelativeOffset(I)I
    .locals 2
    .parameter "pane"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v0}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    int-to-float v1, p1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v0

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v0}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 536
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1257
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getVelocityThreshold()I
    .locals 1

    .prologue
    .line 1080
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mVelocityThreshold:I

    return v0
.end method

.method public getView(J)Landroid/view/View;
    .locals 3
    .parameter "uniqueId"

    .prologue
    .line 523
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/paneview/PaneView$Item;

    .line 524
    .local v0, item:Lcom/sonyericsson/paneview/PaneView$Item;
    if-eqz v0, :cond_0

    .line 525
    iget-object v1, v0, Lcom/sonyericsson/paneview/PaneView$Item;->view:Landroid/view/View;

    .line 527
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1684
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1685
    .local v5, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v6}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    .line 1686
    .local v2, position:F
    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v6}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v6

    invoke-direct {p0, v6}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v4

    .line 1687
    .local v4, scroll:I
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1689
    .local v3, rect:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1690
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v6, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 1691
    iget-object v6, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v6, v6, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1692
    iget-object v6, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v6, v6, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v6, v6

    invoke-direct {p0, v2, v6}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v6

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    neg-int v7, v4

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 1694
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v7

    invoke-virtual {v3, v9, v9, v6, v7}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1696
    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1701
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_1
    invoke-static {v3}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1703
    return-object v5
.end method

.method public hasEnabledItems(I)Z
    .locals 4
    .parameter "pane"

    .prologue
    .line 1097
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1098
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v2, v2, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    if-ne v2, p1, :cond_0

    .line 1099
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1100
    const/4 v2, 0x1

    .line 1104
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDoMirror()Z
    .locals 1

    .prologue
    .line 1073
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    return v0
.end method

.method public isInteracting()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    return v0
.end method

.method public keepMaxScroll(Z)V
    .locals 1
    .parameter "keepMaxScroll"

    .prologue
    .line 845
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mKeepMaxScroll:Z

    .line 846
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mKeepMaxScroll:Z

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->updateMaxScroll(Ljava/util/Collection;)V

    .line 848
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 849
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable()V

    .line 851
    :cond_0
    return-void
.end method

.method public moveToLeftPane()Z
    .locals 2

    .prologue
    .line 926
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    .line 929
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    goto :goto_0
.end method

.method public moveToNextPane()Z
    .locals 1

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    return v0
.end method

.method public moveToPane(I)Z
    .locals 5
    .parameter "pane"

    .prologue
    .line 907
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    if-ge p1, v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getVelocity()F

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 910
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Dynamics;->setMaxPosition(F)V

    .line 911
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Dynamics;->setMinPosition(F)V

    .line 914
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable()V

    .line 915
    const/4 v0, 0x1

    .line 917
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToPreviousPane()Z
    .locals 2

    .prologue
    .line 961
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    return v0
.end method

.method public moveToRightPane()Z
    .locals 2

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    .line 942
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2545
    if-eqz p1, :cond_0

    .line 2546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 2548
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2549
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1053
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mTouchIsLocked:Z

    if-nez v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/paneview/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/GestureDetector;->isDragging()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mTouchIsLocked:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v6, 0x0

    .line 1180
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 1182
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v4}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    .line 1184
    .local v2, position:F
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1185
    .local v3, viewRect:Landroid/graphics/Rect;
    sub-int v4, p4, p2

    sub-int v5, p5, p3

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1187
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1188
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v4, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    invoke-direct {p0, v4, v2, v3}, Lcom/sonyericsson/paneview/PaneView;->isLocationVisible(Lcom/sonyericsson/paneview/PaneLocation;FLandroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1191
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/paneview/PaneView;->layoutItem(Lcom/sonyericsson/paneview/PaneView$AdapterItem;F)V

    goto :goto_0

    .line 1192
    :cond_2
    iget-object v4, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1195
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    goto :goto_0

    .line 1199
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/paneview/PaneView;->updateMaxScroll(Ljava/util/Collection;)V

    .line 1201
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v4}, Lcom/sonyericsson/paneview/Transformer;->isSetupFinished()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1202
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->setupTransformer()V

    .line 1205
    :cond_4
    invoke-static {v3}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1206
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/paneview/PaneView;->invalidate(Landroid/graphics/Rect;)V

    .line 1208
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mOnLayoutListener:Lcom/sonyericsson/paneview/PaneView$OnLayoutListener;

    if-eqz v4, :cond_5

    .line 1209
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mOnLayoutListener:Lcom/sonyericsson/paneview/PaneView$OnLayoutListener;

    invoke-interface {v4}, Lcom/sonyericsson/paneview/PaneView$OnLayoutListener;->onLayout()V

    .line 1211
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 1167
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    .line 1168
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1169
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1172
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v3, v3, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    or-int/2addr v3, v5

    iget-object v4, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v4, v4, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    or-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 1176
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2558
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    .line 2559
    const/16 p1, 0x42

    .line 2564
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 2565
    new-instance p2, Landroid/graphics/Rect;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 2566
    .restart local p2
    sparse-switch p1, :sswitch_data_0

    .line 2582
    :cond_1
    :goto_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    invoke-virtual {v5, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    .line 2584
    .local v1, focusCandidate:Landroid/view/View;
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v7

    .line 2588
    :goto_2
    return v5

    .line 2560
    .end local v1           #focusCandidate:Landroid/view/View;
    :cond_2
    if-ne p1, v7, :cond_0

    .line 2561
    const/16 p1, 0x11

    goto :goto_0

    .line 2569
    :sswitch_0
    const/4 v4, 0x0

    .line 2570
    .local v4, top:I
    const/4 v2, 0x0

    .line 2571
    .local v2, left:I
    invoke-virtual {p2, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 2575
    .end local v2           #left:I
    .end local v4           #top:I
    :sswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v0

    .line 2576
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v3

    .line 2577
    .local v3, right:I
    invoke-virtual {p2, v3, v0, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .end local v0           #bottom:I
    .end local v3           #right:I
    .restart local v1       #focusCandidate:Landroid/view/View;
    :cond_3
    move v5, v6

    .line 2588
    goto :goto_2

    .line 2566
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x21 -> :sswitch_1
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->onSizeChanged(IIII)V

    .line 1157
    int-to-float v0, p1

    int-to-float v1, p1

    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mMarginF:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/paneview/PaneView;->mWidthWithMargin:I

    .line 1159
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    .line 1163
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1036
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mRejectPaddingTouch:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/GestureDetector;->cancelTouch()V

    .line 1039
    const/4 v0, 0x0

    .line 1048
    :goto_0
    return v0

    .line 1042
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mTouchIsLocked:Z

    if-nez v0, :cond_2

    .line 1044
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/paneview/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1048
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 2525
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->findItem(Landroid/view/View;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v0

    .line 2526
    .local v0, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    if-eqz v0, :cond_1

    .line 2527
    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 2528
    iget-boolean v1, p0, Lcom/sonyericsson/paneview/PaneView;->mVerticalScrollEnabled:Z

    if-eqz v1, :cond_0

    .line 2531
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->scrollToView(Landroid/view/View;)V

    .line 2537
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2538
    return-void

    .line 2534
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    goto :goto_0
.end method

.method public restoreViews()V
    .locals 0

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 720
    return-void
.end method

.method public scroll(F)V
    .locals 6
    .parameter "deltaPosition"

    .prologue
    const/4 v5, 0x0

    .line 824
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 825
    .local v0, currentPosition:F
    add-float v1, v0, p1

    .line 827
    .local v1, newPosition:F
    cmpg-float v2, v1, v5

    if-gez v2, :cond_1

    .line 828
    const/4 v1, 0x0

    .line 833
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v1, v5, v3, v4}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 834
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 835
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 836
    return-void

    .line 829
    :cond_1
    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 830
    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    check-cast p1, Lcom/sonyericsson/paneview/PaneAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->setAdapter(Lcom/sonyericsson/paneview/PaneAdapter;)V

    return-void
.end method

.method public setAdapter(Lcom/sonyericsson/paneview/PaneAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDataSetObserver:Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;

    invoke-interface {v0, v1}, Lcom/sonyericsson/paneview/PaneAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 545
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    .line 547
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDataSetObserver:Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;

    invoke-interface {v0, v1}, Lcom/sonyericsson/paneview/PaneAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 551
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->onDataChanged(Z)V

    .line 552
    return-void
.end method

.method public setBackplate(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "backplateDrawable"

    .prologue
    .line 780
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    .line 782
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 784
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 788
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->createSrcBlitPaint()V

    .line 790
    :cond_1
    return-void
.end method

.method public setBackplateModifiers(II)V
    .locals 0
    .parameter "backPlateOffsetX"
    .parameter "backPlateWidth"

    .prologue
    .line 800
    iput p1, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateOffsetX:I

    .line 801
    iput p2, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateWidth:I

    .line 802
    return-void
.end method

.method public setDoMirror(Z)V
    .locals 0
    .parameter "doMirror"

    .prologue
    .line 1066
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    .line 1067
    return-void
.end method

.method public setEnableStandardRenderers(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 671
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    .line 672
    iget-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    if-eqz v2, :cond_1

    .line 673
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 674
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 675
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->setStandardRenderer(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    goto :goto_0

    .line 679
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 680
    .restart local v1       #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->rendererIsStandard:Z

    goto :goto_1

    .line 683
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_2
    return-void
.end method

.method public setFocusPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 768
    iput p1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingLeft:I

    .line 769
    iput p2, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingTop:I

    .line 770
    iput p3, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingRight:I

    .line 771
    iput p4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingBottom:I

    .line 772
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .parameter "focusable"

    .prologue
    .line 2909
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusDesired:Z

    .line 2910
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 2911
    return-void
.end method

.method public setFocusedItemDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "focusedItemDrawable"

    .prologue
    .line 755
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusedItemDrawable:Landroid/graphics/drawable/Drawable;

    .line 756
    return-void
.end method

.method public setInteractionListener(Lcom/sonyericsson/paneview/PaneView$InteractionListener;)V
    .locals 0
    .parameter "interactionListener"

    .prologue
    .line 624
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    .line 625
    return-void
.end method

.method public setItemViewListener(Lcom/sonyericsson/paneview/PaneView$ItemViewListener;)V
    .locals 0
    .parameter "itemViewListener"

    .prologue
    .line 644
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    .line 645
    return-void
.end method

.method public setOnLayoutListener(Lcom/sonyericsson/paneview/PaneView$OnLayoutListener;)V
    .locals 0
    .parameter "onLayoutListener"

    .prologue
    .line 2961
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mOnLayoutListener:Lcom/sonyericsson/paneview/PaneView$OnLayoutListener;

    .line 2962
    return-void
.end method

.method public setPaneDynamics(Lcom/sonyericsson/util/Dynamics;)V
    .locals 4
    .parameter "dynamics"

    .prologue
    .line 567
    if-nez p1, :cond_0

    .line 568
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "dynamics cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 571
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 572
    .local v0, currentPosition:F
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getVelocity()F

    move-result v1

    .line 574
    .local v1, currentVelocity:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 575
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    .line 577
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/GestureDetector;->setEnableHorizontalDrag(Z)V

    .line 578
    return-void
.end method

.method public setPaneMargin(F)V
    .locals 0
    .parameter "paneMargin"

    .prologue
    .line 728
    iput p1, p0, Lcom/sonyericsson/paneview/PaneView;->mMarginF:F

    .line 729
    return-void
.end method

.method public setPaneViewTouchListener(Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;)V
    .locals 0
    .parameter "paneViewTouchListener"

    .prologue
    .line 737
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    .line 738
    return-void
.end method

.method public setPosition(F)V
    .locals 4
    .parameter "position"

    .prologue
    .line 810
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 811
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/Dynamics;->setMaxPosition(F)V

    .line 812
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/Dynamics;->setMinPosition(F)V

    .line 813
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 814
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 815
    return-void
.end method

.method public setPreferExternalFocus(Z)V
    .locals 0
    .parameter "preferExternal"

    .prologue
    .line 1128
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mPreferExternalFocus:Z

    .line 1129
    return-void
.end method

.method public setPreventExternalFocus(Z)V
    .locals 0
    .parameter "preventExternal"

    .prologue
    .line 1115
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mPreventExternalFocus:Z

    .line 1116
    return-void
.end method

.method public setRejectPaddingTouch(Z)V
    .locals 0
    .parameter "rejectPaddingTouch"

    .prologue
    .line 614
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mRejectPaddingTouch:Z

    .line 615
    return-void
.end method

.method public setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V
    .locals 0
    .parameter "rendererFactory"

    .prologue
    .line 655
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    .line 656
    return-void
.end method

.method public setScrollDynamics(Lcom/sonyericsson/util/Dynamics;)V
    .locals 4
    .parameter "dynamics"

    .prologue
    .line 581
    if-nez p1, :cond_0

    .line 582
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "dynamics cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 585
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 586
    .local v0, currentPosition:F
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getVelocity()F

    move-result v1

    .line 588
    .local v1, currentVelocity:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 589
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    .line 591
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/GestureDetector;->setEnableVerticalDrag(Z)V

    .line 592
    return-void
.end method

.method public setScrollListener(Lcom/sonyericsson/paneview/PaneView$ScrollListener;)V
    .locals 3
    .parameter "scrollListener"

    .prologue
    .line 601
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    .line 603
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v1

    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/paneview/PaneView$ScrollListener;->onScroll(FI)V

    .line 606
    :cond_0
    return-void
.end method

.method public setScrollPosition(F)V
    .locals 4
    .parameter "position"

    .prologue
    .line 818
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 819
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 820
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 821
    return-void
.end method

.method public setSelectedItemDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "selectedItemDrawable"

    .prologue
    .line 746
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItemDrawable:Landroid/graphics/drawable/Drawable;

    .line 747
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 515
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 516
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 517
    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    goto :goto_0

    .line 520
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_1
    return-void
.end method

.method public setSrcBlit(Z)V
    .locals 1
    .parameter "srcBlit"

    .prologue
    .line 1148
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlit:Z

    .line 1149
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1150
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->createSrcBlitPaint()V

    .line 1152
    :cond_0
    return-void
.end method

.method public setTouchLocked(Z)V
    .locals 1
    .parameter "locked"

    .prologue
    .line 1021
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mTouchIsLocked:Z

    .line 1022
    if-eqz p1, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/GestureDetector;->cancelLongPress()V

    .line 1025
    :cond_0
    return-void
.end method

.method public setVelocityThreshold(I)V
    .locals 0
    .parameter "velocityThreshold"

    .prologue
    .line 1087
    iput p1, p0, Lcom/sonyericsson/paneview/PaneView;->mVelocityThreshold:I

    .line 1088
    return-void
.end method

.method public setVerticalScrollEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1137
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mVerticalScrollEnabled:Z

    .line 1138
    return-void
.end method

.method public transform(Lcom/sonyericsson/paneview/Transformer;)V
    .locals 1
    .parameter "transformer"

    .prologue
    .line 973
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v0}, Lcom/sonyericsson/paneview/Transformer;->cleanup()V

    .line 976
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    .line 977
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    if-eqz v0, :cond_1

    .line 979
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 980
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    .line 981
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->requestLayout()V

    .line 988
    :goto_0
    return-void

    .line 983
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 984
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable()V

    .line 985
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusDesired:Z

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->setFocusable(Z)V

    .line 986
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    goto :goto_0
.end method
