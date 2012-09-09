.class public Lcom/sonyericsson/drawable/MirrorBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MirrorBitmapDrawable.java"


# static fields
.field public static final MIRROR_BELOW:I = 0x0

.field public static final MIRROR_RIGHT:I = 0x1


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mEmptyColumns:I

.field private mEmptyRows:I

.field private mHeight:I

.field private mMirror:Z

.field private mMirrorPosition:I

.field mPaint:Landroid/graphics/Paint;

.field private mReflectionBitmap:Landroid/graphics/Bitmap;

.field private mSourceHeight:I

.field private mSourceWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "b"
    .parameter "mirrorPosition"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mMirror:Z

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mMirrorPosition:I

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 53
    iput p2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mMirrorPosition:I

    .line 54
    invoke-virtual {p0, p1}, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    return-void
.end method

.method private static getEmptyColumns(Landroid/graphics/Bitmap;)I
    .locals 7
    .parameter "bitmap"

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 188
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 189
    .local v1, height:I
    const/4 v0, 0x0

    .line 191
    .local v0, emptyCols:I
    const/4 v6, 0x1

    sub-int v4, v3, v6

    .local v4, x:I
    :goto_0
    if-ltz v4, :cond_0

    .line 192
    const/4 v5, 0x0

    .local v5, y:I
    :goto_1
    if-ge v5, v1, :cond_2

    .line 193
    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    .line 194
    .local v2, pixel:I
    const/high16 v6, -0x100

    and-int/2addr v6, v2

    ushr-int/lit8 v6, v6, 0x18

    if-eqz v6, :cond_1

    .line 201
    .end local v2           #pixel:I
    .end local v5           #y:I
    :cond_0
    return v0

    .line 192
    .restart local v2       #pixel:I
    .restart local v5       #y:I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 198
    .end local v2           #pixel:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 191
    add-int/lit8 v4, v4, -0x1

    goto :goto_0
.end method

.method private static getEmptyRows(Landroid/graphics/Bitmap;)I
    .locals 14
    .parameter "bitmap"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 205
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 206
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 207
    .local v10, height:I
    new-array v1, v3, [I

    .line 208
    .local v1, pixels:[I
    const/4 v9, 0x0

    .line 210
    .local v9, emptyRows:I
    sub-int v5, v10, v7

    .local v5, y:I
    :goto_0
    if-ltz v5, :cond_0

    move-object v0, p0

    move v4, v2

    move v6, v3

    .line 211
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 212
    move-object v8, v1

    .local v8, arr$:[I
    array-length v12, v8

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v12, :cond_2

    aget v13, v8, v11

    .line 213
    .local v13, pixel:I
    const/high16 v0, -0x100

    and-int/2addr v0, v13

    ushr-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_1

    .line 220
    .end local v8           #arr$:[I
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #pixel:I
    :cond_0
    return v9

    .line 212
    .restart local v8       #arr$:[I
    .restart local v11       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #pixel:I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 217
    .end local v13           #pixel:I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 210
    add-int/lit8 v5, v5, -0x1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 130
    iget-boolean v0, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mMirror:Z

    if-eqz v0, :cond_1

    .line 131
    iget v0, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mMirrorPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mReflectionBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 145
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mReflectionBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceHeight:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mMirror:Z

    if-eqz v0, :cond_0

    .line 172
    iget v0, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mHeight:I

    .line 174
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceHeight:I

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mMirror:Z

    if-eqz v0, :cond_0

    .line 163
    iget v0, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mWidth:I

    .line 165
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceWidth:I

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 154
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "bitmap"

    .prologue
    const/high16 v4, 0x3f00

    const/high16 v3, -0x4100

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 60
    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceWidth:I

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceHeight:I

    .line 64
    iget v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mMirrorPosition:I

    if-ne v2, v5, :cond_0

    .line 65
    iget v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceWidth:I

    div-int/lit8 v11, v2, 0x4

    .line 66
    .local v11, reflectionSize:I
    invoke-static {p1}, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->getEmptyColumns(Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mEmptyColumns:I

    .line 67
    iget v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceWidth:I

    add-int/2addr v2, v11

    iput v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mWidth:I

    .line 68
    iget v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceHeight:I

    iput v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mHeight:I

    .line 73
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 74
    .local v10, reflectionMatrix:Landroid/graphics/Matrix;
    invoke-virtual {v10, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 76
    iget v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceWidth:I

    iget v3, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mEmptyColumns:I

    sub-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v10, v2, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 77
    div-int/lit8 v2, v11, 0x2

    iget v3, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceHeight:I

    div-int/lit8 v3, v3, 0x2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 79
    .local v9, downScaledReflection:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    .local v8, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    invoke-virtual {v8, p1, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 81
    iget v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceWidth:I

    invoke-static {v9, v11, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mReflectionBitmap:Landroid/graphics/Bitmap;

    .line 83
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 86
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v3, v11

    const/high16 v5, 0x4000

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 88
    .local v0, alphaGradient:Landroid/graphics/LinearGradient;
    iget-object v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 89
    iget-object v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mReflectionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    int-to-float v5, v11

    iget v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceHeight:I

    int-to-float v6, v2

    iget-object v7, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, v8

    move v3, v1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 126
    .end local v0           #alphaGradient:Landroid/graphics/LinearGradient;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v9           #downScaledReflection:Landroid/graphics/Bitmap;
    .end local v10           #reflectionMatrix:Landroid/graphics/Matrix;
    :goto_0
    return-void

    .line 92
    .end local v11           #reflectionSize:I
    :cond_0
    iget v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceHeight:I

    div-int/lit8 v11, v2, 0x4

    .line 93
    .restart local v11       #reflectionSize:I
    invoke-static {p1}, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->getEmptyRows(Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mEmptyRows:I

    .line 94
    iget v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceWidth:I

    iput v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mWidth:I

    .line 95
    iget v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceHeight:I

    add-int/2addr v2, v11

    iput v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mHeight:I

    .line 100
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 101
    .restart local v10       #reflectionMatrix:Landroid/graphics/Matrix;
    invoke-virtual {v10, v4, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 103
    iget v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceHeight:I

    iget v3, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mEmptyRows:I

    sub-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 104
    iget v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceWidth:I

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v11, 0x2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 106
    .restart local v9       #downScaledReflection:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 107
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    invoke-virtual {v8, p1, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 108
    iget v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceWidth:I

    invoke-static {v9, v2, v11, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mReflectionBitmap:Landroid/graphics/Bitmap;

    .line 110
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 113
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v4, v11

    const/high16 v5, 0x4000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 115
    .restart local v0       #alphaGradient:Landroid/graphics/LinearGradient;
    iget-object v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 116
    iget-object v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mReflectionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    iget v2, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceWidth:I

    int-to-float v5, v2

    int-to-float v6, v11

    iget-object v7, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, v8

    move v3, v1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 120
    .end local v0           #alphaGradient:Landroid/graphics/LinearGradient;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v9           #downScaledReflection:Landroid/graphics/Bitmap;
    .end local v10           #reflectionMatrix:Landroid/graphics/Matrix;
    .end local v11           #reflectionSize:I
    :cond_1
    iput v6, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceWidth:I

    .line 121
    iput v6, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mSourceHeight:I

    .line 122
    iput v6, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mWidth:I

    .line 123
    iput v6, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mHeight:I

    .line 124
    const/4 v11, 0x0

    .restart local v11       #reflectionSize:I
    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 158
    return-void
.end method

.method public setMirrorEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->mMirror:Z

    .line 184
    return-void
.end method
