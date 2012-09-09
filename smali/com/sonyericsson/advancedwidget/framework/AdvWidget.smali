.class public abstract Lcom/sonyericsson/advancedwidget/framework/AdvWidget;
.super Lcom/sonyericsson/advancedwidget/framework/Stub;
.source "AdvWidget.java"


# static fields
.field public static final CONFIG_FAILED:I = -0x1

.field public static final CONFIG_PENDING:I = 0x0

.field public static final CONFIG_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AdvWidget"

.field public static final TYPE_GL:I = 0x1

.field public static final TYPE_UI:I = 0x0

.field public static final TYPE_WEB:I = 0x2

.field private static sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mId:Ljava/util/UUID;

.field private mType:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/sonyericsson/advancedwidget/framework/Stub;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mType:I

    .line 120
    return-void
.end method

.method private static findConfig(Ljava/util/UUID;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    .locals 4
    .parameter "id"

    .prologue
    .line 446
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, sid:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-virtual {v3}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 448
    sget-object v3, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->getChild(I)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v0

    .line 449
    .local v0, child:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    const-string v3, "uuid"

    invoke-virtual {v0, v3}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 453
    .end local v0           #child:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    :goto_1
    return-object v3

    .line 447
    .restart local v0       #child:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    .end local v0           #child:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected static getConfig(Ljava/util/UUID;Z)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    .locals 3
    .parameter "id"
    .parameter "create"

    .prologue
    .line 362
    invoke-static {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->findConfig(Ljava/util/UUID;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v0

    .line 363
    .local v0, ret:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 364
    new-instance v0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    .end local v0           #ret:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    const-string v1, "widget"

    sget-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;-><init>(Ljava/lang/String;Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V

    .line 366
    .restart local v0       #ret:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    const-string v1, "uuid"

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_0
    return-object v0
.end method

.method public static reset_test(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "diskAsWell"

    .prologue
    .line 556
    const/4 v2, 0x0

    sput-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    .line 557
    if-eqz p1, :cond_0

    .line 558
    const-string v2, "files"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 559
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 560
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 564
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private static restoreConfig(Landroid/content/Context;Ljava/util/UUID;)V
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 421
    sget-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    if-nez v2, :cond_0

    .line 423
    const-string v2, "files"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 424
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 425
    .local v1, f:Ljava/io/File;
    invoke-static {v1}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->readDocument(Ljava/io/File;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v2

    sput-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    .line 426
    sget-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    if-nez v2, :cond_0

    .line 428
    new-instance v2, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    const-string v3, "widgetconfig"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;-><init>(Ljava/lang/String;Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V

    sput-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    .line 434
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->findConfig(Ljava/util/UUID;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v2

    if-nez v2, :cond_1

    .line 435
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getConfig(Ljava/util/UUID;Z)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    .line 436
    invoke-static {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->saveConfig(Landroid/content/Context;)V

    .line 438
    :cond_1
    return-void
.end method

.method private static saveConfig(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 460
    const-string v2, "files"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 461
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 462
    .local v1, f:Ljava/io/File;
    sget-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->writeDocumentTo(Ljava/io/File;)Z

    .line 463
    return-void
.end method


# virtual methods
.method protected call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "funcName"
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    .line 472
    const-string v3, "init"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 473
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 474
    .local v1, comm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;

    invoke-direct {v2, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;-><init>(Ljava/util/Map;)V

    .line 475
    .local v2, hostProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;
    iget-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;->setId(Ljava/util/UUID;)V

    .line 476
    invoke-virtual {p0, v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->init(Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;)V

    move-object v3, v6

    .line 543
    .end local v1           #comm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #hostProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;
    .end local p2
    :goto_0
    return-object v3

    .line 478
    .restart local p2
    :cond_0
    const-string v3, "remove"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 479
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->remove()V

    .line 480
    sget-object v3, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    iget-object v4, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-static {v4}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->findConfig(Ljava/util/UUID;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->removeChild(Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V

    .line 481
    iget-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->saveConfig(Landroid/content/Context;)V

    move-object v3, v6

    .line 482
    goto :goto_0

    .line 483
    :cond_1
    const-string v3, "onCreate"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 485
    check-cast p2, Landroid/content/Context;

    .end local p2
    iput-object p2, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mContext:Landroid/content/Context;

    .line 487
    iget-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-static {v3, v4}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->restoreConfig(Landroid/content/Context;Ljava/util/UUID;)V

    .line 489
    iget-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onCreate(Landroid/content/Context;)V

    move-object v3, v6

    .line 490
    goto :goto_0

    .line 491
    .restart local p2
    :cond_2
    const-string v3, "onDestroy"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 492
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onDestroy()V

    move-object v3, v6

    .line 493
    goto :goto_0

    .line 494
    :cond_3
    const-string v3, "onFocus"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 495
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onFocus()V

    move-object v3, v6

    .line 496
    goto :goto_0

    .line 497
    :cond_4
    const-string v3, "onDefocus"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 498
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onDefocus()V

    move-object v3, v6

    .line 499
    goto :goto_0

    .line 500
    :cond_5
    const-string v3, "onResume"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 501
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onResume()V

    move-object v3, v6

    .line 502
    goto :goto_0

    .line 503
    :cond_6
    const-string v3, "onPause"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 504
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onPause()V

    move-object v3, v6

    .line 505
    goto :goto_0

    .line 506
    :cond_7
    const-string v3, "onStart"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 507
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onStart()V

    move-object v3, v6

    .line 508
    goto/16 :goto_0

    .line 509
    :cond_8
    const-string v3, "onStop"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 510
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onStop()V

    move-object v3, v6

    .line 511
    goto/16 :goto_0

    .line 512
    :cond_9
    const-string v3, "onMoved"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 513
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onMoved()V

    move-object v3, v6

    .line 514
    goto/16 :goto_0

    .line 515
    :cond_a
    const-string v3, "getContentView"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 516
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getContentView()Landroid/view/View;

    move-result-object v3

    goto/16 :goto_0

    .line 517
    :cond_b
    const-string v3, "getSpanXY"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 518
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getSpanXY()[I

    move-result-object v3

    goto/16 :goto_0

    .line 519
    :cond_c
    const-string v3, "configure"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 520
    check-cast p2, Landroid/content/Context;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->configure(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 521
    .restart local p2
    :cond_d
    const-string v3, "customize"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 522
    check-cast p2, Landroid/os/Bundle;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->customize(Landroid/os/Bundle;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0

    .line 523
    .restart local p2
    :cond_e
    const-string v3, "onConfigured"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 524
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onConfigured(I)V

    move-object v3, v6

    .line 525
    goto/16 :goto_0

    .line 526
    .restart local p2
    :cond_f
    const-string v3, "onWidgetPicked"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 527
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onWidgetPicked(I)V

    move-object v3, v6

    .line 528
    goto/16 :goto_0

    .line 529
    .restart local p2
    :cond_10
    const-string v3, "setId"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 530
    check-cast p2, Ljava/util/UUID;

    .end local p2
    iput-object p2, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    move-object v3, v6

    .line 531
    goto/16 :goto_0

    .line 532
    .restart local p2
    :cond_11
    const-string v3, "getSnapshot"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 533
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getSnapshot()Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_0

    .line 534
    :cond_12
    const-string v3, "getType"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 535
    iget v3, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 536
    :cond_13
    const-string v3, "setActivity"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 537
    new-instance v3, Ljava/lang/ref/WeakReference;

    check-cast p2, Landroid/app/Activity;

    .end local p2
    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mActivity:Ljava/lang/ref/WeakReference;

    move-object v3, v6

    .line 538
    goto/16 :goto_0

    .line 539
    .restart local p2
    :cond_14
    const-string v3, "getFrameworkVersion"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 540
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getFrameworkVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 542
    :cond_15
    const-string v3, "AdvWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown function: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 543
    goto/16 :goto_0
.end method

.method public configure(Landroid/content/Context;)I
    .locals 1
    .parameter "hostContext"

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public customize(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "settings"

    .prologue
    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method protected getConfig(Z)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    .locals 1
    .parameter "create"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-static {v0, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getConfig(Ljava/util/UUID;Z)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v0

    return-object v0
.end method

.method public abstract getContentView()Landroid/view/View;
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getFrameworkVersion()I
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0x122

    return v0
.end method

.method public final getId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    return-object v0
.end method

.method protected getInstanceCount()I
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    if-nez v0, :cond_0

    .line 409
    const/4 v0, 0x1

    .line 411
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-virtual {v0}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->getChildCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSnapshot()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 340
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 341
    const/4 v2, 0x0

    .line 345
    :goto_0
    return-object v2

    .line 343
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 344
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    move-object v2, v0

    .line 345
    goto :goto_0
.end method

.method public abstract getSpanXY()[I
.end method

.method public init(Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;)V
    .locals 0
    .parameter "hostProxy"

    .prologue
    .line 151
    return-void
.end method

.method public onConfigured(I)V
    .locals 0
    .parameter "response"

    .prologue
    .line 292
    return-void
.end method

.method public abstract onCreate(Landroid/content/Context;)V
.end method

.method public abstract onDefocus()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onFocus()V
.end method

.method public onMoved()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public onWidgetPicked(I)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 301
    return-void
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method protected saveConfig(Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 391
    const-string v1, "uuid"

    iget-object v2, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-static {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->findConfig(Ljava/util/UUID;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v0

    .line 393
    .local v0, oldData:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    if-eqz v0, :cond_0

    .line 394
    sget-object v1, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->removeChild(Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V

    .line 396
    :cond_0
    sget-object v1, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->addChild(Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V

    .line 397
    iget-object v1, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->saveConfig(Landroid/content/Context;)V

    .line 398
    return-void
.end method

.method protected setType(I)V
    .locals 0
    .parameter "newType"

    .prologue
    .line 141
    iput p1, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mType:I

    .line 142
    return-void
.end method
