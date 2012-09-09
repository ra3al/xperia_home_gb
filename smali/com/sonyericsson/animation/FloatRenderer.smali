.class public Lcom/sonyericsson/animation/FloatRenderer;
.super Ljava/lang/Object;
.source "FloatRenderer.java"

# interfaces
.implements Lcom/sonyericsson/animation/Renderer;
.implements Lcom/sonyericsson/util/Recyclable;


# static fields
.field private static final SHADOW_ALPHA:I = 0xd0

.field private static final SHADOW_HEIGHT:I = 0x6

.field private static final mRecycleStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/animation/FloatRenderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBadgeIcon:Landroid/graphics/Bitmap;

.field private mBadgeOffsetX:I

.field private mBadgeOffsetY:I

.field private mCurrentRect:Landroid/graphics/RectF;

.field private final mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

.field private mDynamicsShakeLeft:Lcom/sonyericsson/util/SpringDynamics;

.field private mDynamicsShakeTop:Lcom/sonyericsson/util/SpringDynamics;

.field private final mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

.field private mDynamicsZ:Lcom/sonyericsson/util/SpringDynamics;

.field private mPaint:Landroid/graphics/Paint;

.field private mShadowBitmap:Landroid/graphics/Bitmap;

.field private mSnapshotWithShadow:Landroid/graphics/Bitmap;

.field private nextRandomizationTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sonyericsson/animation/FloatRenderer;->mRecycleStack:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mPaint:Landroid/graphics/Paint;

    .line 74
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mCurrentRect:Landroid/graphics/RectF;

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 97
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsZ:Lcom/sonyericsson/util/SpringDynamics;

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsZ:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v1, 0x4248

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 101
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    .line 102
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    .line 105
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeLeft:Lcom/sonyericsson/util/SpringDynamics;

    .line 106
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeTop:Lcom/sonyericsson/util/SpringDynamics;

    .line 107
    return-void
.end method

.method private createShadow(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "snapshot"

    .prologue
    .line 331
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 332
    .local v0, offset:[I
    iget-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    const/high16 v3, 0x4080

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 333
    iget-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 334
    iget-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 335
    return-void
.end method

.method private createSnapshotWithShadow(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    .line 338
    invoke-static {p1}, Lcom/sonyericsson/util/ViewSnapshot;->getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 339
    .local v2, snapshot:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 340
    const/16 v0, 0xc

    .line 341
    .local v0, maxShadowOffset:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mSnapshotWithShadow:Landroid/graphics/Bitmap;

    .line 343
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mPaint:Landroid/graphics/Paint;

    const/16 v4, 0xd0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 344
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mSnapshotWithShadow:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 345
    .local v1, offscreenCanvas:Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mShadowBitmap:Landroid/graphics/Bitmap;

    int-to-float v4, v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/sonyericsson/animation/FloatRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 346
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v7, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 348
    .end local v0           #maxShadowOffset:I
    .end local v1           #offscreenCanvas:Landroid/graphics/Canvas;
    :cond_0
    return-void
.end method

.method private drawView(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 8
    .parameter "view"
    .parameter "canvas"
    .parameter "rect"
    .parameter "zFactor"

    .prologue
    const/high16 v5, 0x4000

    const/16 v7, 0xff

    const/4 v6, 0x0

    .line 291
    invoke-static {p1}, Lcom/sonyericsson/util/ViewSnapshot;->getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 293
    .local v2, snapshot:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 294
    const/high16 v3, 0x40c0

    mul-float v1, p4, v3

    .line 295
    .local v1, shadowOffset:F
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mPaint:Landroid/graphics/Paint;

    .line 297
    .local v0, paint:Landroid/graphics/Paint;
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mShadowBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 298
    invoke-direct {p0, v2}, Lcom/sonyericsson/animation/FloatRenderer;->createShadow(Landroid/graphics/Bitmap;)V

    .line 301
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 302
    iget v3, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v1

    iget v4, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v1

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 304
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mSnapshotWithShadow:Landroid/graphics/Bitmap;

    if-nez v3, :cond_4

    .line 306
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 307
    const/high16 v3, 0x4350

    mul-float/2addr v3, p4

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 308
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mShadowBitmap:Landroid/graphics/Bitmap;

    mul-float v4, v5, v1

    mul-float/2addr v5, v1

    invoke-virtual {p2, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 311
    :cond_1
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 312
    invoke-virtual {p2, v2, v6, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 319
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 321
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 322
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/animation/FloatRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/sonyericsson/animation/FloatRenderer;->mBadgeOffsetX:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sonyericsson/animation/FloatRenderer;->mBadgeOffsetY:I

    int-to-float v5, v5

    invoke-virtual {p2, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 326
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 328
    .end local v0           #paint:Landroid/graphics/Paint;
    .end local v1           #shadowOffset:F
    :cond_3
    return-void

    .line 315
    .restart local v0       #paint:Landroid/graphics/Paint;
    .restart local v1       #shadowOffset:F
    :cond_4
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 316
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mSnapshotWithShadow:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v3, v6, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static obtain()Lcom/sonyericsson/animation/FloatRenderer;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/sonyericsson/animation/FloatRenderer;->mRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lcom/sonyericsson/animation/FloatRenderer;->mRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/animation/FloatRenderer;

    .line 118
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sonyericsson/animation/FloatRenderer;

    invoke-direct {v0}, Lcom/sonyericsson/animation/FloatRenderer;-><init>()V

    goto :goto_0
.end method

.method private update(Landroid/graphics/Rect;J)F
    .locals 11
    .parameter "targetRect"
    .parameter "now"

    .prologue
    const/high16 v10, 0x4100

    const-wide/high16 v8, 0x4000

    const-wide/high16 v6, 0x3ff0

    .line 254
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsZ:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v3, p2, p3}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 255
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsZ:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v2

    .line 256
    .local v2, zFactor:F
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 257
    neg-float v2, v2

    .line 261
    :cond_0
    iget-wide v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->nextRandomizationTime:J

    cmp-long v3, v3, p2

    if-gez v3, :cond_1

    .line 262
    mul-float v3, v2, v10

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    sub-double/2addr v4, v6

    double-to-float v4, v4

    mul-float v0, v3, v4

    .line 263
    .local v0, dx:F
    mul-float v3, v2, v10

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    sub-double/2addr v4, v6

    double-to-float v4, v4

    mul-float v1, v3, v4

    .line 264
    .local v1, dy:F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x4062c00000000000L

    mul-double/2addr v3, v5

    double-to-long v3, v3

    add-long/2addr v3, p2

    const-wide/16 v5, 0x96

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->nextRandomizationTime:J

    .line 265
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 266
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 267
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 268
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 272
    .end local v0           #dx:F
    .end local v1           #dy:F
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v3, p2, p3}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 273
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v3, p2, p3}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 277
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v5}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 278
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v5}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 279
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v5}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 280
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v5}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 283
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v3, p2, p3}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 284
    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v3, p2, p3}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 287
    return v2
.end method


# virtual methods
.method public draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z
    .locals 7
    .parameter "view"
    .parameter "canvas"
    .parameter "targetRect"
    .parameter "now"

    .prologue
    const v6, 0x3c23d70a

    const v5, 0x3dcccccd

    const/high16 v4, 0x4000

    .line 140
    invoke-direct {p0, p3, p4, p5}, Lcom/sonyericsson/animation/FloatRenderer;->update(Landroid/graphics/Rect;J)F

    move-result v0

    .line 142
    .local v0, zFactor:F
    iget-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsZ:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v5, v6}, Lcom/sonyericsson/util/SpringDynamics;->isAtRest(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f00

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mSnapshotWithShadow:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 147
    invoke-direct {p0, p1}, Lcom/sonyericsson/animation/FloatRenderer;->createSnapshotWithShadow(Landroid/view/View;)V

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mCurrentRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 154
    iget-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mCurrentRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/sonyericsson/animation/FloatRenderer;->drawView(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    .line 157
    iget-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v4, v4}, Lcom/sonyericsson/util/SpringDynamics;->isAtRest(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v4, v4}, Lcom/sonyericsson/util/SpringDynamics;->isAtRest(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsZ:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v5, v6}, Lcom/sonyericsson/util/SpringDynamics;->isAtRest(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    cmpg-float v1, v0, v5

    if-gez v1, :cond_1

    .line 159
    const/4 v1, 0x0

    .line 161
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCurrentRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "outRect"

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mCurrentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mCurrentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mCurrentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mCurrentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 200
    :cond_0
    return-void
.end method

.method public offset(IIJ)V
    .locals 3
    .parameter "dx"
    .parameter "dy"
    .parameter "now"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mCurrentRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    int-to-float v2, p1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v2

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    int-to-float v2, p2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v2

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeLeft:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    int-to-float v2, p1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v2

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeTop:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    int-to-float v2, p2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v2

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 212
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    iput-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mSnapshotWithShadow:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mSnapshotWithShadow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 129
    iput-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mSnapshotWithShadow:Landroid/graphics/Bitmap;

    .line 132
    :cond_1
    iput-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    .line 133
    sget-object v0, Lcom/sonyericsson/animation/FloatRenderer;->mRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 8
    .parameter "command"
    .parameter "x"
    .parameter "y"
    .parameter "extras"

    .prologue
    const/4 v1, 0x0

    const/high16 v7, 0x43c8

    const v6, 0x3f666666

    const/4 v5, 0x0

    const-string v2, "badge"

    .line 216
    const-string v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mSnapshotWithShadow:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mSnapshotWithShadow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    iput-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mSnapshotWithShadow:Landroid/graphics/Bitmap;

    .line 223
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsZ:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v5}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsZ:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v5}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsZ:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v1, 0x4416

    const v2, 0x3f59999a

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsZ:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsZ:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    const/high16 v2, 0x4270

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v7, v6}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v7, v6}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v5}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v5}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v5}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v5}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 244
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->nextRandomizationTime:J

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 245
    :cond_2
    const-string v0, "badge"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 246
    const-string v0, "badge"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    .line 247
    iput p2, p0, Lcom/sonyericsson/animation/FloatRenderer;->mBadgeOffsetX:I

    .line 248
    iput p3, p0, Lcom/sonyericsson/animation/FloatRenderer;->mBadgeOffsetY:I

    goto :goto_0
.end method

.method public start(Landroid/graphics/Rect;IIJ)V
    .locals 6
    .parameter "startRect"
    .parameter "xOffset"
    .parameter "yOffst"
    .parameter "now"

    .prologue
    const v5, 0x3f666666

    const/high16 v4, 0x42c8

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2, p4, p5}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2, p4, p5}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v4, v5}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v4, v5}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v4, v3}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v4, v3}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsShakeLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsZ:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsZ:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsZ:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v2, v2, p4, p5}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->mDynamicsZ:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v1, 0x4248

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/animation/FloatRenderer;->nextRandomizationTime:J

    .line 190
    return-void
.end method
