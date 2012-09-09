.class public Lcom/sonyericsson/home/layer/PaneIndicator;
.super Landroid/view/View;
.source "PaneIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;
    }
.end annotation


# static fields
.field private static final FRAME_DELAY:I = 0x10

.field private static final HIDE_TIMEOUT:J = 0x3e8L

.field private static final LARGE_POSITION_DELTA:F = 0.5f

.field private static final MARGIN:F = 0.1f

.field private static final NO_PREVIOUS_VALUE:I = -0x1

.field private static final POSITON_TOLERANCE:F = 0.0010f

.field private static final VELOCITY_TOLERANCE:F = 0.01f


# instance fields
.field private mDoMirror:Z

.field private mFadeInAnimation:Landroid/view/animation/Animation;

.field private mFadeOutAnimation:Landroid/view/animation/Animation;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private mInactiveTimeoutListener:Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;

.field private mIndicationBitmap:Landroid/graphics/Bitmap;

.field private final mIndicationDeltaSpace:F

.field private mLeftArrow:Landroid/graphics/Bitmap;

.field private mMax:I

.field private mMaxDynamics:Lcom/sonyericsson/util/SpringDynamics;

.field private mMaxIndications:I

.field private mMaxRunnable:Ljava/lang/Runnable;

.field private mMult:F

.field private mOffset:F

.field private mOffsetDynamics:Lcom/sonyericsson/util/SpringDynamics;

.field private mOffsetRunnable:Ljava/lang/Runnable;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPosition:F

.field private mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

.field private mPositionRunnable:Ljava/lang/Runnable;

.field private mRightArrow:Landroid/graphics/Bitmap;

.field private mSelectedIndicationBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x42c8

    const/high16 v1, -0x4080

    const v2, 0x3f666666

    .line 136
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v4, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    .line 77
    iput v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    .line 80
    iput v4, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    .line 83
    iput v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    .line 86
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMult:F

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mIndicationDeltaSpace:F

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxDynamics:Lcom/sonyericsson/util/SpringDynamics;

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3, v2}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 142
    new-instance v0, Lcom/sonyericsson/home/layer/PaneIndicator$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/PaneIndicator$1;-><init>(Lcom/sonyericsson/home/layer/PaneIndicator;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxRunnable:Ljava/lang/Runnable;

    .line 152
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v1, 0x4296

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 154
    new-instance v0, Lcom/sonyericsson/home/layer/PaneIndicator$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/PaneIndicator$2;-><init>(Lcom/sonyericsson/home/layer/PaneIndicator;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionRunnable:Ljava/lang/Runnable;

    .line 164
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetDynamics:Lcom/sonyericsson/util/SpringDynamics;

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3, v2}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 166
    new-instance v0, Lcom/sonyericsson/home/layer/PaneIndicator$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/PaneIndicator$3;-><init>(Lcom/sonyericsson/home/layer/PaneIndicator;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetRunnable:Ljava/lang/Runnable;

    .line 176
    const v0, 0x7f04000a

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 177
    const v0, 0x7f04000b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mFadeOutAnimation:Landroid/view/animation/Animation;

    .line 179
    new-instance v0, Lcom/sonyericsson/home/layer/PaneIndicator$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/PaneIndicator$4;-><init>(Lcom/sonyericsson/home/layer/PaneIndicator;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mHideRunnable:Ljava/lang/Runnable;

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/util/SpringDynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxDynamics:Lcom/sonyericsson/util/SpringDynamics;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/util/SpringDynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/util/SpringDynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetDynamics:Lcom/sonyericsson/util/SpringDynamics;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mInactiveTimeoutListener:Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;

    return-object v0
.end method


# virtual methods
.method public hide(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    const/4 v1, 0x4

    .line 221
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 222
    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->clearAnimation()V

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    .line 226
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/layer/PaneIndicator;->setVisibility(I)V

    .line 228
    :cond_1
    return-void
.end method

.method public isDoMirror()Z
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mDoMirror:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .parameter "canvas"

    .prologue
    .line 349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mIndicationDeltaSpace:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMult:F

    move/from16 v21, v0

    mul-float v8, v20, v21

    .line 350
    .local v8, delta:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxDynamics:Lcom/sonyericsson/util/SpringDynamics;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v13

    .line 351
    .local v13, max:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move v0, v13

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v19

    .line 352
    .local v19, totalWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mIndicationDeltaSpace:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    const/high16 v21, 0x3f80

    sub-float v21, v19, v21

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    mul-float v10, v20, v21

    .line 353
    .local v10, halfPixelWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetDynamics:Lcom/sonyericsson/util/SpringDynamics;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v14

    .line 354
    .local v14, offset:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v17

    .line 355
    .local v17, postition:F
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 356
    .local v18, start:I
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    move/from16 v21, v0

    add-int v21, v21, v18

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 358
    .local v9, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mIndicationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f02002f

    invoke-static/range {v20 .. v21}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/PaneIndicator;->mIndicationBitmap:Landroid/graphics/Bitmap;

    .line 363
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mSelectedIndicationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f020030

    invoke-static/range {v20 .. v21}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/PaneIndicator;->mSelectedIndicationBitmap:Landroid/graphics/Bitmap;

    .line 368
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    sub-float v20, v20, v10

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mIndicationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    div-int/lit8 v15, v20, 0x2

    .line 372
    .local v15, offsetX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mIndicationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    div-int/lit8 v16, v20, 0x2

    .line 375
    .local v16, offsetY:I
    move/from16 v0, v18

    int-to-float v0, v0

    move v11, v0

    .local v11, i:F
    :goto_0
    move v0, v9

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v20, v11, v20

    if-gez v20, :cond_5

    .line 376
    const/4 v6, 0x0

    .line 380
    .local v6, alphaModifier:F
    sub-float v20, v11, v17

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 381
    .local v12, indicatorDistance:F
    const/high16 v20, 0x3f80

    cmpg-float v20, v12, v20

    if-gez v20, :cond_2

    .line 382
    const/high16 v20, 0x3f80

    sub-float v6, v20, v12

    .line 386
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mDoMirror:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    .line 387
    sub-float v20, v11, v14

    mul-float v7, v8, v20

    .line 393
    .local v7, center:F
    :goto_1
    const/16 v20, 0x0

    cmpl-float v20, v6, v20

    if-nez v20, :cond_4

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0xff

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mIndicationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move v0, v15

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v7, v21

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 375
    :goto_2
    const/high16 v20, 0x3f80

    add-float v11, v11, v20

    goto :goto_0

    .line 390
    .end local v7           #center:F
    :cond_3
    sub-int v20, v9, v18

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v20, v11

    add-float v20, v20, v14

    const/high16 v21, 0x3f80

    sub-float v20, v20, v21

    mul-float v7, v8, v20

    .restart local v7       #center:F
    goto :goto_1

    .line 397
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/high16 v21, 0x437f

    const/high16 v22, 0x3f80

    sub-float v22, v22, v6

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mIndicationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move v0, v15

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v7, v21

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/high16 v21, 0x437f

    mul-float v21, v21, v6

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mSelectedIndicationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mSelectedIndicationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    sub-float v21, v7, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mSelectedIndicationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 406
    .end local v6           #alphaModifier:F
    .end local v7           #center:F
    .end local v12           #indicatorDistance:F
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mDoMirror:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    .line 408
    const v20, 0x3dcccccd

    cmpl-float v20, v14, v20

    if-lez v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mLeftArrow:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 409
    neg-float v7, v8

    .line 410
    .restart local v7       #center:F
    const/high16 v20, 0x437f

    mul-float v20, v20, v14

    const/16 v21, 0x0

    const/high16 v22, 0x437f

    invoke-static/range {v20 .. v22}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move v5, v0

    .line 411
    .local v5, alpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mLeftArrow:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mLeftArrow:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    sub-float v21, v7, v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mLeftArrow:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 417
    .end local v5           #alpha:I
    .end local v7           #center:F
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v20, v20, v14

    const v21, 0x3dcccccd

    add-float v20, v20, v21

    cmpg-float v20, v20, v13

    if-gez v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mRightArrow:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 418
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v7, v20, v8

    .line 419
    .restart local v7       #center:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v20, v20, v14

    sub-float v20, v13, v20

    const/high16 v21, 0x437f

    mul-float v20, v20, v21

    const/16 v21, 0x0

    const/high16 v22, 0x437f

    invoke-static/range {v20 .. v22}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move v5, v0

    .line 421
    .restart local v5       #alpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mRightArrow:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mRightArrow:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    sub-float v21, v7, v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mRightArrow:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 448
    .end local v5           #alpha:I
    .end local v7           #center:F
    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 449
    return-void

    .line 429
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v20, v20, v14

    const v21, 0x3dcccccd

    add-float v20, v20, v21

    cmpg-float v20, v20, v13

    if-gez v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mLeftArrow:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 430
    neg-float v7, v8

    .line 431
    .restart local v7       #center:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v20, v20, v14

    sub-float v20, v13, v20

    const/high16 v21, 0x437f

    mul-float v20, v20, v21

    const/16 v21, 0x0

    const/high16 v22, 0x437f

    invoke-static/range {v20 .. v22}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move v5, v0

    .line 433
    .restart local v5       #alpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mLeftArrow:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mLeftArrow:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    sub-float v21, v7, v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mLeftArrow:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 439
    .end local v5           #alpha:I
    .end local v7           #center:F
    :cond_9
    const v20, 0x3dcccccd

    cmpl-float v20, v14, v20

    if-lez v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mRightArrow:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 440
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v7, v20, v8

    .line 441
    .restart local v7       #center:F
    const/high16 v20, 0x437f

    mul-float v20, v20, v14

    const/16 v21, 0x0

    const/high16 v22, 0x437f

    invoke-static/range {v20 .. v22}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move v5, v0

    .line 442
    .restart local v5       #alpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mRightArrow:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mRightArrow:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    sub-float v21, v7, v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mRightArrow:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 474
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 478
    int-to-float v0, p1

    const v1, 0x3dcccccd

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mIndicationDeltaSpace:F

    iget v2, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMult:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x4000

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    .line 479
    iget v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/home/layer/PaneIndicator;->setPosition(FIZ)V

    .line 480
    return-void
.end method

.method public removeCallbacks()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 467
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 468
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 469
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 470
    return-void
.end method

.method public setAppearance(FLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "mult"
    .parameter "leftArrow"
    .parameter "rightArrow"

    .prologue
    .line 193
    iput p1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMult:F

    .line 194
    iput-object p2, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mLeftArrow:Landroid/graphics/Bitmap;

    .line 195
    iput-object p3, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mRightArrow:Landroid/graphics/Bitmap;

    .line 196
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->requestLayout()V

    .line 197
    return-void
.end method

.method public setDoMirror(Z)V
    .locals 0
    .parameter "doMirror"

    .prologue
    .line 455
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mDoMirror:Z

    .line 456
    return-void
.end method

.method public setOnInactiveTimeoutListener(Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;)V
    .locals 0
    .parameter "inactiveTimeoutListener"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mInactiveTimeoutListener:Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;

    .line 190
    return-void
.end method

.method public setPosition(FI)V
    .locals 1
    .parameter "position"
    .parameter "max"

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->setPosition(FIZ)V

    .line 232
    return-void
.end method

.method public setPosition(FIZ)V
    .locals 8
    .parameter "position"
    .parameter "max"
    .parameter "forceUpdate"

    .prologue
    const/high16 v7, -0x4080

    const/4 v4, -0x1

    const v6, 0x3dcccccd

    const/4 v5, 0x0

    .line 245
    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_b

    .line 248
    if-nez p3, :cond_1

    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3a83126f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    if-ne p2, v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f00

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    .line 255
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 256
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 257
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 259
    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    if-ne v1, v4, :cond_9

    .line 261
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v5, v2, v3}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 281
    :cond_2
    :goto_1
    iput p1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    .line 283
    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    if-eq v1, p2, :cond_4

    .line 284
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxDynamics:Lcom/sonyericsson/util/SpringDynamics;

    int-to-float v2, p2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 285
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxDynamics:Lcom/sonyericsson/util/SpringDynamics;

    int-to-float v2, p2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 286
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 288
    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    if-eq v1, v4, :cond_3

    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    if-ne v1, v4, :cond_c

    .line 290
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxDynamics:Lcom/sonyericsson/util/SpringDynamics;

    int-to-float v2, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 296
    :goto_2
    iput p2, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    .line 299
    :cond_4
    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    if-lez v1, :cond_0

    .line 300
    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    iget v2, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    if-le v1, v2, :cond_7

    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    iget v2, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    iget v3, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    add-float/2addr v2, v6

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_5

    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    add-float/2addr v1, v6

    iget v2, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_5

    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    iget v2, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 306
    :cond_5
    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_d

    const/4 v1, 0x1

    move v0, v1

    .line 307
    .local v0, noPrevOffset:Z
    :goto_3
    if-eqz v0, :cond_6

    .line 308
    iput v5, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    .line 311
    :cond_6
    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    add-float/2addr v1, v6

    iget v2, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    .line 314
    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    iget v3, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v1, v5, v2}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v1

    iput v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    .line 322
    :goto_4
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetDynamics:Lcom/sonyericsson/util/SpringDynamics;

    iget v2, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    invoke-virtual {v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 323
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetDynamics:Lcom/sonyericsson/util/SpringDynamics;

    iget v2, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    invoke-virtual {v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 324
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 326
    if-eqz v0, :cond_f

    .line 327
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetDynamics:Lcom/sonyericsson/util/SpringDynamics;

    iget v2, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 335
    .end local v0           #noPrevOffset:Z
    :cond_7
    :goto_5
    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    iget v2, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    if-gt v1, v2, :cond_8

    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_8

    .line 336
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v5}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 337
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v5}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 338
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 339
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/layer/PaneIndicator;->post(Ljava/lang/Runnable;)Z

    .line 340
    iput v5, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    .line 343
    :cond_8
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    goto/16 :goto_0

    .line 264
    :cond_9
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/layer/PaneIndicator;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 267
    :cond_a
    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 272
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v5, v2, v3}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    goto/16 :goto_1

    .line 275
    :cond_b
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 276
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 278
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v5, v2, v3}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    goto/16 :goto_1

    .line 293
    :cond_c
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/layer/PaneIndicator;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 306
    :cond_d
    const/4 v1, 0x0

    move v0, v1

    goto/16 :goto_3

    .line 319
    .restart local v0       #noPrevOffset:Z
    :cond_e
    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    iget v3, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    int-to-double v3, v3

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0

    add-double/2addr v1, v3

    double-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    iget v3, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxIndications:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v1, v5, v2}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v1

    iput v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    goto/16 :goto_4

    .line 329
    :cond_f
    iget-object v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/layer/PaneIndicator;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5
.end method

.method public show()V
    .locals 3

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->clearAnimation()V

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->setVisibility(I)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/home/layer/PaneIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->invalidate()V

    .line 213
    return-void
.end method
