.class public Lcom/sonyericsson/cornerbutton/CornerButtonController;
.super Ljava/lang/Object;
.source "CornerButtonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerLongPressListener;,
        Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;,
        Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LARGE_NULL_RADIUS:[I

.field private static final DEFAULT_SMALL_NULL_RADIUS:[I

.field private static final ICON_ORDER:[[I


# instance fields
.field private mCollapsedBitmap:Landroid/graphics/Bitmap;

.field private mCollapsedIcon:Landroid/graphics/drawable/Drawable;

.field protected mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

.field protected mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 78
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->DEFAULT_SMALL_NULL_RADIUS:[I

    .line 83
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->DEFAULT_LARGE_NULL_RADIUS:[I

    .line 91
    new-array v0, v2, [[I

    new-array v1, v4, [I

    aput v3, v1, v3

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->ICON_ORDER:[[I

    return-void

    .line 78
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    .line 83
    :array_1
    .array-data 0x4
        0xc3t 0x0t 0x0t 0x0t
        0x9t 0x1t 0x0t 0x0t
        0x9t 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 91
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/sonyericsson/cornerbutton/CornerButton;I)V
    .locals 2
    .parameter "cornerButton"
    .parameter "maxIconSize"

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cornerbutton/CornerButton;->setMaxIconSize(I)V

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->getCornerButtonListener()Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->setListener(Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;)V

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->getCornerButtonLongPressListener()Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->setLongPressListener(Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;)V

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    new-instance v1, Lcom/sonyericsson/cornerbutton/CornerButtonController$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cornerbutton/CornerButtonController$1;-><init>(Lcom/sonyericsson/cornerbutton/CornerButtonController;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 217
    return-void
.end method

.method private makeCollapsedIcon(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/cornerbutton/Action;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .local p1, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    const/4 v12, 0x1

    const/high16 v11, 0x3f00

    .line 490
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v9}, Lcom/sonyericsson/cornerbutton/CornerButton;->getMaxIconSize()I

    move-result v8

    .line 491
    .local v8, size:I
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCollapsedBitmap:Landroid/graphics/Bitmap;

    if-nez v9, :cond_0

    .line 492
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCollapsedBitmap:Landroid/graphics/Bitmap;

    .line 494
    :cond_0
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCollapsedBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 495
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCollapsedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 496
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 498
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v9}, Lcom/sonyericsson/cornerbutton/CornerButton;->getDirection()F

    move-result v1

    .line 499
    .local v1, direction:F
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v9}, Lcom/sonyericsson/cornerbutton/CornerButton;->shouldReverseActions()Z

    move-result v7

    .line 501
    .local v7, shouldReveseActions:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 502
    .local v4, items:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_5

    .line 504
    sget-object v9, Lcom/sonyericsson/cornerbutton/CornerButtonController;->ICON_ORDER:[[I

    sub-int v10, v4, v12

    aget-object v9, v9, v10

    aget v9, v9, v2

    rem-int/lit8 v9, v9, 0x2

    mul-int v5, v9, v8

    .line 505
    .local v5, offsetX:I
    sget-object v9, Lcom/sonyericsson/cornerbutton/CornerButtonController;->ICON_ORDER:[[I

    sub-int v10, v4, v12

    aget-object v9, v9, v10

    aget v9, v9, v2

    div-int/lit8 v9, v9, 0x2

    mul-int v6, v9, v8

    .line 507
    .local v6, offsetY:I
    const/4 v9, 0x0

    cmpl-float v9, v1, v9

    if-lez v9, :cond_1

    .line 510
    if-ne v5, v6, :cond_4

    .line 511
    sub-int v6, v8, v6

    .line 517
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 519
    sub-int v5, v8, v5

    .line 521
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/cornerbutton/Action;

    invoke-virtual {v9}, Lcom/sonyericsson/cornerbutton/Action;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 522
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    .line 523
    const/16 v9, 0xff

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 524
    add-int v9, v5, v8

    add-int v10, v6, v8

    invoke-virtual {v3, v5, v6, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 525
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 502
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 513
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    :cond_4
    sub-int v5, v8, v5

    goto :goto_1

    .line 529
    .end local v5           #offsetX:I
    .end local v6           #offsetY:I
    :cond_5
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v10}, Lcom/sonyericsson/cornerbutton/CornerButton;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCollapsedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v9, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v9
.end method


# virtual methods
.method public addAction(Lcom/sonyericsson/cornerbutton/Action;I)Z
    .locals 2
    .parameter "action"
    .parameter "location"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 384
    if-nez p1, :cond_0

    .line 385
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->isFull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    const/4 v1, 0x0

    .line 397
    :goto_0
    return v1

    .line 390
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->getActions()Ljava/util/ArrayList;

    move-result-object v0

    .line 391
    .local v0, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    if-ltz p2, :cond_2

    .line 392
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 396
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->setActions(Ljava/util/ArrayList;)V

    .line 397
    const/4 v1, 0x1

    goto :goto_0

    .line 394
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public collapseButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->collapse()V

    .line 314
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;->onCollapsed(Lcom/sonyericsson/cornerbutton/CornerButtonController;)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->setSelectedAction(Lcom/sonyericsson/cornerbutton/Action;)V

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;->onNewActionSelected(Lcom/sonyericsson/cornerbutton/Action;)V

    .line 322
    :cond_1
    return-void
.end method

.method public containsAction(Lcom/sonyericsson/cornerbutton/Action;)Z
    .locals 2
    .parameter "action"

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->getActions()Ljava/util/ArrayList;

    move-result-object v0

    .line 371
    .local v0, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public expandButton(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->expand(Z)V

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->getTopmostAction()Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->setSelectedAction(Lcom/sonyericsson/cornerbutton/Action;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;->onExpanded(Lcom/sonyericsson/cornerbutton/CornerButtonController;Z)V

    .line 305
    :cond_1
    return-void
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
    .line 286
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->getActions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getCornerButtonListener()Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;
    .locals 1

    .prologue
    .line 226
    new-instance v0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;-><init>(Lcom/sonyericsson/cornerbutton/CornerButtonController;)V

    return-object v0
.end method

.method protected getCornerButtonLongPressListener()Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerLongPressListener;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerLongPressListener;-><init>(Lcom/sonyericsson/cornerbutton/CornerButtonController;)V

    return-object v0
.end method

.method public hide(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->hide(Z)V

    .line 256
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isExpandable()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->getNumberOfActions()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->isExpanded()Z

    move-result v0

    return v0
.end method

.method public isFull()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->isFull()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAction(Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->getActions()Ljava/util/ArrayList;

    move-result-object v0

    .line 441
    .local v0, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->setActions(Ljava/util/ArrayList;)V

    .line 444
    :cond_0
    return-void
.end method

.method public replaceAction(Lcom/sonyericsson/cornerbutton/Action;Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 3
    .parameter "oldAction"
    .parameter "newAction"

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->getActions()Ljava/util/ArrayList;

    move-result-object v0

    .line 426
    .local v0, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 427
    .local v1, location:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 428
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 429
    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 430
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->setActions(Ljava/util/ArrayList;)V

    .line 432
    :cond_0
    return-void
.end method

.method public setActions(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 274
    .local p1, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->setActions(Ljava/util/ArrayList;)V

    .line 275
    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->updateNullRadii()V

    .line 276
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->setCollapsedIcon(Ljava/util/ArrayList;)V

    .line 277
    return-void
.end method

.method protected setCollapsedIcon(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 466
    .local p1, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 476
    invoke-direct {p0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->makeCollapsedIcon(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCollapsedIcon:Landroid/graphics/drawable/Drawable;

    .line 477
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCollapsedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->setCollapsedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 480
    .end local p0
    :goto_0
    return-void

    .line 468
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->setCollapsedIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 472
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/cornerbutton/Action;

    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/Action;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->setCollapsedIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    .line 240
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->show()V

    .line 247
    return-void
.end method

.method public switchActions(Lcom/sonyericsson/cornerbutton/Action;Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 4
    .parameter "action1"
    .parameter "action2"

    .prologue
    const/4 v3, -0x1

    .line 408
    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->getActions()Ljava/util/ArrayList;

    move-result-object v0

    .line 409
    .local v0, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 410
    .local v2, hoverActionIndex:I
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 411
    .local v1, emptyActionIndex:I
    if-eq v2, v3, :cond_0

    if-eq v1, v3, :cond_0

    .line 412
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 413
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->setActions(Ljava/util/ArrayList;)V

    .line 415
    :cond_0
    return-void
.end method

.method protected updateNullRadii()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 451
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->getNumberOfActions()I

    move-result v0

    .line 452
    .local v0, numberOfAction:I
    if-lez v0, :cond_0

    .line 453
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    sget-object v2, Lcom/sonyericsson/cornerbutton/CornerButtonController;->DEFAULT_SMALL_NULL_RADIUS:[I

    sub-int v3, v0, v5

    aget v2, v2, v3

    sget-object v3, Lcom/sonyericsson/cornerbutton/CornerButtonController;->DEFAULT_SMALL_NULL_RADIUS:[I

    sub-int v4, v0, v5

    aget v3, v3, v4

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sonyericsson/cornerbutton/CornerButtonController;->DEFAULT_LARGE_NULL_RADIUS:[I

    sub-int v4, v0, v5

    aget v3, v3, v4

    sget-object v4, Lcom/sonyericsson/cornerbutton/CornerButtonController;->DEFAULT_LARGE_NULL_RADIUS:[I

    sub-int v5, v0, v5

    aget v4, v4, v5

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cornerbutton/CornerButton;->setNullRadii(FF)V

    .line 458
    :cond_0
    return-void
.end method
