.class public Lcom/sonyericsson/animation/ScaleAlphaRenderer;
.super Ljava/lang/Object;
.source "ScaleAlphaRenderer.java"

# interfaces
.implements Lcom/sonyericsson/animation/Renderer;
.implements Lcom/sonyericsson/util/Recyclable;


# static fields
.field private static final sRecycleStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/animation/ScaleAlphaRenderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentRect:Landroid/graphics/Rect;

.field private mDuration:I

.field private mEndAlpha:I

.field private mEndScale:F

.field private mIterpolator:Landroid/view/animation/Interpolator;

.field private final mPaint:Landroid/graphics/Paint;

.field private mStartAlpha:I

.field private mStartScale:F

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->sRecycleStack:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mCurrentRect:Landroid/graphics/Rect;

    .line 58
    return-void
.end method

.method private drawView(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 8
    .parameter "view"
    .parameter "canvas"
    .parameter "rect"
    .parameter "progress"

    .prologue
    .line 95
    iget v5, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mStartAlpha:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mEndAlpha:I

    iget v7, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mStartAlpha:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, p4

    add-float/2addr v5, v6

    float-to-int v0, v5

    .line 96
    .local v0, alpha:I
    iget v5, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mStartScale:F

    iget v6, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mEndScale:F

    iget v7, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mStartScale:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, p4

    add-float v3, v5, v6

    .line 98
    .local v3, scale:F
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 99
    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    .line 100
    .local v1, centerX:F
    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    .line 101
    .local v2, centerY:F
    invoke-virtual {p2, v3, v3, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 102
    iget-object v5, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 103
    invoke-static {p1}, Lcom/sonyericsson/util/ViewSnapshot;->getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 104
    .local v4, snapshot:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 105
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v4, v5, p3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 107
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 108
    return-void
.end method

.method public static obtain()Lcom/sonyericsson/animation/ScaleAlphaRenderer;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->sRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->sRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;

    .line 65
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;

    invoke-direct {v0}, Lcom/sonyericsson/animation/ScaleAlphaRenderer;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z
    .locals 5
    .parameter "view"
    .parameter "canvas"
    .parameter "targetRect"
    .parameter "now"

    .prologue
    .line 84
    iget-wide v1, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mStartTime:J

    sub-long v1, p4, v1

    long-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mDuration:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 85
    .local v0, progress:F
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mIterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 87
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->drawView(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    .line 89
    iget-object v1, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 91
    iget-wide v1, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mStartTime:J

    iget v3, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mDuration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    cmp-long v1, p4, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "outRect"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 118
    return-void
.end method

.method public offset(IIJ)V
    .locals 0
    .parameter "dx"
    .parameter "dy"
    .parameter "now"

    .prologue
    .line 122
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->sRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0
    .parameter "command"
    .parameter "x"
    .parameter "y"
    .parameter "extras"

    .prologue
    .line 126
    return-void
.end method

.method public setProperties(ILandroid/view/animation/Interpolator;IIFF)V
    .locals 0
    .parameter "duration"
    .parameter "interpolator"
    .parameter "startAlpha"
    .parameter "endAlpha"
    .parameter "startScale"
    .parameter "endScale"

    .prologue
    .line 74
    iput p1, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mDuration:I

    .line 75
    iput-object p2, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mIterpolator:Landroid/view/animation/Interpolator;

    .line 76
    iput p3, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mStartAlpha:I

    .line 77
    iput p4, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mEndAlpha:I

    .line 78
    iput p5, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mStartScale:F

    .line 79
    iput p6, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mEndScale:F

    .line 80
    return-void
.end method

.method public start(Landroid/graphics/Rect;IIJ)V
    .locals 1
    .parameter "startRect"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "now"

    .prologue
    .line 112
    iput-wide p4, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mStartTime:J

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 114
    return-void
.end method
