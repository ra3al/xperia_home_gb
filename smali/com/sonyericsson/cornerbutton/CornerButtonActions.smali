.class public Lcom/sonyericsson/cornerbutton/CornerButtonActions;
.super Ljava/lang/Object;
.source "CornerButtonActions.java"


# static fields
.field private static final DAMPING_COLLAPSE:F = 0.7f

.field private static final DAMPING_EXPAND:F = 0.5f

.field public static final STANDARD_NUMBER_OF_ACTIONS:I = 0x4

.field private static final STIFFNESS:I = 0x12c


# instance fields
.field private final mActionAngleDynamics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/util/SpringDynamics;",
            ">;"
        }
    .end annotation
.end field

.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/cornerbutton/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mActions1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/cornerbutton/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mActions2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/cornerbutton/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mCollapsedIcon:Landroid/graphics/drawable/Drawable;

.field private final mCollapsedIconOffset:I

.field private final mCollapsedRadius:I

.field private mDirection:F

.field private mExpandedRadius:I

.field private mMaxIconSize:I

.field private final mRadius:Lcom/sonyericsson/util/SpringDynamics;

.field private final mReverse:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 4
    .parameter "collapsedRadius"
    .parameter "collapsedIconOffset"
    .parameter "reverse"

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions1:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions2:Ljava/util/ArrayList;

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions1:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActionAngleDynamics:Ljava/util/HashMap;

    .line 93
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 96
    iput p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mCollapsedRadius:I

    .line 97
    iput p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mExpandedRadius:I

    .line 98
    iput p2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mCollapsedIconOffset:I

    .line 99
    iput-boolean p3, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mReverse:Z

    .line 100
    return-void
.end method

.method private static convertToXY(FF)Landroid/graphics/Point;
    .locals 8
    .parameter "radius"
    .parameter "angle"

    .prologue
    const/high16 v7, 0x4334

    const-wide v5, 0x400921fb54442d18L

    .line 460
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 461
    .local v0, point:Landroid/graphics/Point;
    float-to-double v1, p0

    neg-float v3, p1

    div-float/2addr v3, v7

    float-to-double v3, v3

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 462
    float-to-double v1, p0

    neg-float v3, p1

    div-float/2addr v3, v7

    float-to-double v3, v3

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 463
    return-object v0
.end method

.method private drawAction(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFI)V
    .locals 7
    .parameter "canvas"
    .parameter "icon"
    .parameter "angle"
    .parameter "radius"
    .parameter "scale"
    .parameter "alpha"

    .prologue
    const/high16 v6, 0x4334

    const/4 v5, 0x0

    .line 510
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mMaxIconSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 511
    .local v2, iconWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mMaxIconSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 513
    .local v1, iconHeight:I
    move v0, p6

    .line 515
    .local v0, drawAlpha:I
    iget v3, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mDirection:F

    sub-float/2addr v3, v6

    cmpg-float v3, p3, v3

    if-gez v3, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget v3, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mDirection:F

    add-float/2addr v3, v6

    cmpl-float v3, p3, v3

    if-gtz v3, :cond_0

    .line 521
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 522
    neg-float v3, p3

    invoke-virtual {p1, v3, v5, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 523
    invoke-virtual {p1, p4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 524
    invoke-virtual {p1, p3, v5, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 525
    invoke-virtual {p1, p5, p5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 527
    const/16 v3, 0x14

    if-ge v0, v3, :cond_2

    .line 528
    const/4 v0, 0x0

    .line 531
    :cond_2
    neg-int v3, v2

    div-int/lit8 v3, v3, 0x2

    neg-int v4, v1

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v2, 0x2

    div-int/lit8 v6, v1, 0x2

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 532
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 533
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 535
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private getAngle(II)F
    .locals 5
    .parameter "numberOfActions"
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    .line 444
    const/4 v1, 0x4

    if-le p1, v1, :cond_0

    .line 445
    const/4 p1, 0x4

    .line 447
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mReverse:Z

    if-eqz v1, :cond_1

    sub-int v1, p1, v3

    sub-int/2addr v1, p2

    move v0, v1

    .line 449
    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mDirection:F

    int-to-float v2, v0

    sub-int v3, p1, v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x42b4

    int-to-float v4, p1

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    return v1

    .end local v0           #i:I
    :cond_1
    move v0, p2

    .line 447
    goto :goto_0
.end method

.method private getNewActions(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/cornerbutton/Action;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/cornerbutton/Action;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/cornerbutton/Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, newActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    .local p2, oldActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    .local p3, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 404
    .local v4, numberOfActions:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 405
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cornerbutton/Action;

    .line 407
    .local v3, newAction:Lcom/sonyericsson/cornerbutton/Action;
    invoke-direct {p0, v4, v2}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getAngle(II)F

    move-result v0

    .line 408
    .local v0, angle:F
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 410
    invoke-virtual {v3, v0}, Lcom/sonyericsson/cornerbutton/Action;->setAngle(F)V

    .line 411
    invoke-static {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getNewDynamics(F)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v1

    .line 412
    .local v1, dynamics:Lcom/sonyericsson/util/SpringDynamics;
    iget-object v5, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActionAngleDynamics:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/sonyericsson/cornerbutton/Action;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :goto_1
    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    .end local v1           #dynamics:Lcom/sonyericsson/util/SpringDynamics;
    :cond_0
    invoke-virtual {v3, v0}, Lcom/sonyericsson/cornerbutton/Action;->setAngle(F)V

    .line 416
    iget-object v5, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActionAngleDynamics:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/sonyericsson/cornerbutton/Action;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/util/SpringDynamics;

    .line 417
    .restart local v1       #dynamics:Lcom/sonyericsson/util/SpringDynamics;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 418
    invoke-virtual {v1, v0}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    goto :goto_1

    .line 422
    .end local v0           #angle:F
    .end local v1           #dynamics:Lcom/sonyericsson/util/SpringDynamics;
    .end local v3           #newAction:Lcom/sonyericsson/cornerbutton/Action;
    :cond_1
    return-void
.end method

.method private static getNewDynamics(F)Lcom/sonyericsson/util/SpringDynamics;
    .locals 4
    .parameter "angle"

    .prologue
    .line 489
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    .line 490
    .local v0, dynamics:Lcom/sonyericsson/util/SpringDynamics;
    const/high16 v1, 0x43c8

    const v2, 0x3f4ccccd

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 491
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 492
    invoke-virtual {v0, p0}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 493
    invoke-virtual {v0, p0}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 494
    return-object v0
.end method

.method private static offsetToIconTopLeft(Lcom/sonyericsson/cornerbutton/Action;Landroid/graphics/Point;)V
    .locals 3
    .parameter "action"
    .parameter "point"

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/Action;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 476
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 477
    iget v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 478
    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 480
    :cond_0
    return-void
.end method

.method private removeActions(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 430
    .local p1, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cornerbutton/Action;

    .line 431
    .local v0, action:Lcom/sonyericsson/cornerbutton/Action;
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActionAngleDynamics:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/Action;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 433
    .end local v0           #action:Lcom/sonyericsson/cornerbutton/Action;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 434
    return-void
.end method


# virtual methods
.method public collapse()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v1, 0x4396

    const v2, 0x3f333333

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 314
    return-void
.end method

.method public contains(Lcom/sonyericsson/cornerbutton/Action;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getRadius()F

    move-result v6

    .line 344
    .local v6, radius:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v2

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/util/MathUtil;->clamp(III)I

    move-result v8

    .line 345
    .local v8, alpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 346
    .local v19, numberOfActions:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions:Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sonyericsson/cornerbutton/Action;

    .line 348
    .local v16, action:Lcom/sonyericsson/cornerbutton/Action;
    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/cornerbutton/Action;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 349
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActionAngleDynamics:Ljava/util/HashMap;

    move-object v2, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/cornerbutton/Action;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sonyericsson/util/SpringDynamics;

    .line 350
    .local v17, angleDynamics:Lcom/sonyericsson/util/SpringDynamics;
    if-eqz v4, :cond_0

    if-eqz v17, :cond_0

    .line 351
    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v5

    const/high16 v7, 0x3f80

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->drawAction(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFI)V

    .line 346
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 355
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v16           #action:Lcom/sonyericsson/cornerbutton/Action;
    .end local v17           #angleDynamics:Lcom/sonyericsson/util/SpringDynamics;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mCollapsedIcon:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    if-eqz v2, :cond_2

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mCollapsedIcon:Landroid/graphics/drawable/Drawable;

    move-object v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mDirection:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mCollapsedIconOffset:I

    move v2, v0

    int-to-float v13, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v2

    const/high16 v3, 0x3f80

    add-float v14, v2, v3

    const/16 v2, 0xff

    sub-int v15, v2, v8

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->drawAction(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFI)V

    .line 359
    :cond_2
    return-void
.end method

.method public expand(Z)V
    .locals 5
    .parameter "animate"

    .prologue
    const/high16 v4, 0x3f80

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v1, 0x4396

    const/high16 v2, 0x3f00

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 297
    if-eqz p1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    goto :goto_0
.end method

.method public getActionAbove(Lcom/sonyericsson/cornerbutton/Action;)Lcom/sonyericsson/cornerbutton/Action;
    .locals 3
    .parameter "refAction"

    .prologue
    .line 377
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 378
    .local v0, index:I
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/cornerbutton/Action;

    return-object p0
.end method

.method public getActionBelow(Lcom/sonyericsson/cornerbutton/Action;)Lcom/sonyericsson/cornerbutton/Action;
    .locals 4
    .parameter "refAction"

    .prologue
    .line 388
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 389
    .local v0, index:I
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/cornerbutton/Action;

    return-object p0
.end method

.method public getActionPosition(Lcom/sonyericsson/cornerbutton/Action;)Landroid/graphics/Point;
    .locals 3
    .parameter "action"

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getRadius()F

    move-result v2

    .line 268
    .local v2, radius:F
    invoke-virtual {p1}, Lcom/sonyericsson/cornerbutton/Action;->getAngle()F

    move-result v0

    .line 269
    .local v0, angle:F
    invoke-static {v2, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->convertToXY(FF)Landroid/graphics/Point;

    move-result-object v1

    .line 270
    .local v1, point:Landroid/graphics/Point;
    invoke-static {p1, v1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->offsetToIconTopLeft(Lcom/sonyericsson/cornerbutton/Action;Landroid/graphics/Point;)V

    .line 271
    return-object v1
.end method

.method public getClosestAction(F)Lcom/sonyericsson/cornerbutton/Action;
    .locals 8
    .parameter "angle"

    .prologue
    const/high16 v7, 0x4334

    .line 226
    const/high16 v5, 0x4f00

    .line 227
    .local v5, smallestDistance:F
    const/4 v2, 0x0

    .line 229
    .local v2, closestAction:Lcom/sonyericsson/cornerbutton/Action;
    iget-object v6, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cornerbutton/Action;

    .line 230
    .local v0, action:Lcom/sonyericsson/cornerbutton/Action;
    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/Action;->getAngle()F

    move-result v1

    .line 233
    .local v1, actionAngle:F
    iget v6, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mDirection:F

    sub-float/2addr v6, v7

    cmpl-float v6, v1, v6

    if-lez v6, :cond_0

    iget v6, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mDirection:F

    add-float/2addr v6, v7

    cmpg-float v6, v1, v6

    if-gez v6, :cond_0

    .line 234
    sub-float v6, v1, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 235
    .local v3, distance:F
    cmpl-float v6, v3, v7

    if-lez v6, :cond_1

    .line 240
    const/high16 v6, 0x43b4

    sub-float v3, v6, v3

    .line 242
    :cond_1
    cmpg-float v6, v3, v5

    if-gez v6, :cond_0

    .line 243
    move v5, v3

    .line 244
    move-object v2, v0

    goto :goto_0

    .line 248
    .end local v0           #action:Lcom/sonyericsson/cornerbutton/Action;
    .end local v1           #actionAngle:F
    .end local v3           #distance:F
    :cond_2
    return-object v2
.end method

.method public getCollapsedIconBound()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 280
    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mCollapsedIconOffset:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mDirection:F

    invoke-static {v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->convertToXY(FF)Landroid/graphics/Point;

    move-result-object v0

    .line 281
    .local v0, point:Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mCollapsedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mCollapsedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mCollapsedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mCollapsedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getMaxIconSize()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mMaxIconSize:I

    return v0
.end method

.method public getNumberOfActions()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 3

    .prologue
    .line 334
    iget v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mCollapsedRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mExpandedRadius:I

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mCollapsedRadius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getTopmostAction()Lcom/sonyericsson/cornerbutton/Action;
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/cornerbutton/Action;

    return-object p0
.end method

.method public setActions(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 163
    .local p1, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions1:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions2:Ljava/util/ArrayList;

    .line 165
    .local v0, newActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions1:Ljava/util/ArrayList;

    .line 172
    .local v1, oldActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 174
    if-eqz p1, :cond_0

    .line 177
    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getNewActions(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 182
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    invoke-direct {p0, v1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->removeActions(Ljava/util/ArrayList;)V

    .line 187
    :cond_1
    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions:Ljava/util/ArrayList;

    .line 188
    return-void

    .line 167
    .end local v0           #newActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    .end local v1           #oldActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions1:Ljava/util/ArrayList;

    .line 168
    .restart local v0       #newActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActions2:Ljava/util/ArrayList;

    .restart local v1       #oldActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    goto :goto_0
.end method

.method public setCollapsedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mCollapsedIcon:Landroid/graphics/drawable/Drawable;

    .line 146
    return-void
.end method

.method public setDirection(F)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 118
    iput p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mDirection:F

    .line 119
    return-void
.end method

.method public setExpandedRadius(I)V
    .locals 0
    .parameter "expandedRadius"

    .prologue
    .line 108
    iput p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mExpandedRadius:I

    .line 109
    return-void
.end method

.method public setMaxIconSize(I)V
    .locals 0
    .parameter "iconMaxSize"

    .prologue
    .line 127
    iput p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mMaxIconSize:I

    .line 128
    return-void
.end method

.method public updateActionAngles(J)Z
    .locals 5
    .parameter "now"

    .prologue
    const v4, 0x3dcccccd

    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, needFrame:Z
    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mActionAngleDynamics:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/util/SpringDynamics;

    .line 200
    .local v0, dynamics:Lcom/sonyericsson/util/SpringDynamics;
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 201
    invoke-virtual {v0, v4, v4}, Lcom/sonyericsson/util/SpringDynamics;->isAtRest(FF)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    or-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 203
    .end local v0           #dynamics:Lcom/sonyericsson/util/SpringDynamics;
    :cond_1
    return v2
.end method

.method public updateRadius(J)Z
    .locals 2
    .parameter "now"

    .prologue
    const v1, 0x3c23d70a

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v1, v1}, Lcom/sonyericsson/util/SpringDynamics;->isAtRest(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
