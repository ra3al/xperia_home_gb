.class public Lcom/sonyericsson/home/networkname/NetworkNameView;
.super Landroid/view/View;
.source "NetworkNameView.java"


# instance fields
.field private final mOrientationVertical:Z

.field private mText:Ljava/lang/String;

.field private final mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x1

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, resources:Landroid/content/res/Resources;
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v5

    if-ne v5, v6, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/sonyericsson/home/networkname/NetworkNameView;->mOrientationVertical:Z

    .line 58
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, p0, Lcom/sonyericsson/home/networkname/NetworkNameView;->mTextPaint:Landroid/text/TextPaint;

    .line 59
    iget-object v5, p0, Lcom/sonyericsson/home/networkname/NetworkNameView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 60
    iget-object v5, p0, Lcom/sonyericsson/home/networkname/NetworkNameView;->mTextPaint:Landroid/text/TextPaint;

    const v6, 0x7f0a0037

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 61
    iget-object v5, p0, Lcom/sonyericsson/home/networkname/NetworkNameView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 63
    iget-boolean v5, p0, Lcom/sonyericsson/home/networkname/NetworkNameView;->mOrientationVertical:Z

    if-eqz v5, :cond_1

    .line 64
    iget-object v5, p0, Lcom/sonyericsson/home/networkname/NetworkNameView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 69
    :goto_1
    const v5, 0x7f09000e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 70
    .local v4, shadowRadius:I
    const v5, 0x7f09000f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 71
    .local v2, shadowDx:I
    const v5, 0x7f090010

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 72
    .local v3, shadowDy:I
    const v5, 0x7f0d0001

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 73
    .local v1, shadowColor:I
    iget-object v5, p0, Lcom/sonyericsson/home/networkname/NetworkNameView;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v6, v4

    int-to-float v7, v2

    int-to-float v8, v3

    invoke-virtual {v5, v6, v7, v8, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 74
    return-void

    .line 56
    .end local v1           #shadowColor:I
    .end local v2           #shadowDx:I
    .end local v3           #shadowDy:I
    .end local v4           #shadowRadius:I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 66
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/home/networkname/NetworkNameView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/home/networkname/NetworkNameView;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 90
    iget-boolean v0, p0, Lcom/sonyericsson/home/networkname/NetworkNameView;->mOrientationVertical:Z

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/home/networkname/NetworkNameView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonyericsson/home/networkname/NetworkNameView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sonyericsson/home/networkname/NetworkNameView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/home/networkname/NetworkNameView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 93
    const/high16 v0, -0x3d4c

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/home/networkname/NetworkNameView;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/home/networkname/NetworkNameView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/networkname/NetworkNameView;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sonyericsson/home/networkname/NetworkNameView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/home/networkname/NetworkNameView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sonyericsson/home/networkname/NetworkNameView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonyericsson/home/networkname/NetworkNameView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/home/networkname/NetworkNameView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sonyericsson/home/networkname/NetworkNameView;->mText:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/home/networkname/NetworkNameView;->requestLayout()V

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/home/networkname/NetworkNameView;->invalidate()V

    .line 85
    return-void
.end method
