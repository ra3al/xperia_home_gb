.class public Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;
.super Ljava/lang/Object;
.source "DesktopModelManager.java"


# instance fields
.field private mGridSize:Lcom/sonyericsson/grid/GridSize;

.field private mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

.field private mIntersectedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberOfPanes:I

.field private mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

.field private mWidgetSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/grid/GridSize;I)V
    .locals 1
    .parameter "gridSize"
    .parameter "numberOfPanes"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager$1;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mWidgetSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    .line 62
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager$2;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    .line 76
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    .line 77
    iput p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mNumberOfPanes:I

    .line 78
    return-void
.end method


# virtual methods
.method public addHint(Lcom/sonyericsson/home/data/Info;)I
    .locals 2
    .parameter "hintInfo"

    .prologue
    .line 109
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public addItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z
    .locals 6
    .parameter "newItem"

    .prologue
    const/4 v5, 0x0

    .line 257
    invoke-virtual {p1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v2

    .line 260
    .local v2, newLocation:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    iget v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    if-ltz v3, :cond_0

    iget v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    iget v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v4, v4, Lcom/sonyericsson/grid/GridSize;->cols:I

    if-gt v3, v4, :cond_0

    iget v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    if-ltz v3, :cond_0

    iget v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    iget v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v4, v4, Lcom/sonyericsson/grid/GridSize;->rows:I

    if-le v3, v4, :cond_1

    :cond_0
    move v3, v5

    .line 272
    :goto_0
    return v3

    .line 266
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 267
    .local v1, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->overlaps(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    .line 268
    goto :goto_0

    .line 272
    .end local v1           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public addItemAtHint(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)I
    .locals 2
    .parameter "item"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 198
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->set(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public contains(Lcom/sonyericsson/home/data/Info;)Z
    .locals 5
    .parameter "info"

    .prologue
    .line 418
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    .line 419
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 421
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 422
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 423
    .local v1, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 424
    const/4 v4, 0x1

    .line 428
    .end local v1           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :goto_1
    return v4

    .line 421
    .restart local v1       #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    .end local v1           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public get(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    return-object p0
.end method

.method public get(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 5
    .parameter "info"

    .prologue
    .line 284
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    .line 285
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 287
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 288
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 289
    .local v1, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 294
    .end local v1           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :goto_1
    return-object v4

    .line 287
    .restart local v1       #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    .end local v1           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getAllInfos()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    .local v2, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 393
    .local v0, desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 396
    .end local v0           #desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_0
    return-object v2
.end method

.method public getClosestEmptyLocation(Lcom/sonyericsson/grid/GridRect;ILcom/sonyericsson/home/layer/desktop/DesktopRect;)Z
    .locals 22
    .parameter "gridRect"
    .parameter "pane"
    .parameter "outDesktopRect"

    .prologue
    .line 325
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sonyericsson/grid/GridSize;->cols:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sonyericsson/grid/GridSize;->rows:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 326
    :cond_0
    const/16 v20, 0x0

    .line 382
    :goto_0
    return v20

    .line 329
    :cond_1
    const/4 v5, 0x0

    .line 330
    .local v5, MIN_CELL_X:I
    const/4 v6, 0x0

    .line 331
    .local v6, MIN_CELL_Y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sonyericsson/grid/GridSize;->cols:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    move/from16 v21, v0

    sub-int v3, v20, v21

    .line 332
    .local v3, MAX_CELL_X:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sonyericsson/grid/GridSize;->rows:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    move/from16 v21, v0

    sub-int v4, v20, v21

    .line 334
    .local v4, MAX_CELL_Y:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sonyericsson/grid/GridRect;->col:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 335
    .local v15, startCellX:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sonyericsson/grid/GridRect;->row:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 336
    .local v16, startCellY:I
    move/from16 v17, v15

    .line 337
    .local v17, stopCellX:I
    move/from16 v18, v16

    .line 339
    .local v18, stopCellY:I
    const/16 v19, 0x0

    .line 340
    .local v19, testDistance:I
    const/4 v10, 0x1

    .line 341
    .local v10, looping:Z
    :goto_1
    if-eqz v10, :cond_a

    .line 342
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p3

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 343
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p3

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 344
    move/from16 v0, p2

    move-object/from16 v1, p3

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 345
    move/from16 v0, v16

    move-object/from16 v1, p3

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    :goto_2
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v18

    if-gt v0, v1, :cond_8

    .line 347
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v16

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    :cond_2
    const/16 v20, 0x1

    move/from16 v2, v20

    .line 349
    .local v2, DELTA_X:I
    :goto_3
    move v0, v15

    move-object/from16 v1, p3

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    :goto_4
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v17

    if-gt v0, v1, :cond_7

    .line 350
    const/4 v7, 0x1

    .line 351
    .local v7, empty:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 352
    .local v9, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v9}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->overlaps(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 353
    const/4 v7, 0x0

    .line 357
    .end local v9           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_4
    if-eqz v7, :cond_6

    .line 358
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 347
    .end local v2           #DELTA_X:I
    .end local v7           #empty:Z
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_5
    mul-int/lit8 v20, v19, 0x2

    move/from16 v2, v20

    goto :goto_3

    .line 349
    .restart local v2       #DELTA_X:I
    .restart local v7       #empty:Z
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    move/from16 v20, v0

    add-int v20, v20, v2

    move/from16 v0, v20

    move-object/from16 v1, p3

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    goto :goto_4

    .line 345
    .end local v7           #empty:Z
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p3

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    goto/16 :goto_2

    .line 364
    .end local v2           #DELTA_X:I
    :cond_8
    move v11, v15

    .line 365
    .local v11, oldStartCellX:I
    move/from16 v12, v16

    .line 366
    .local v12, oldStartCellY:I
    move/from16 v13, v17

    .line 367
    .local v13, oldStopCellX:I
    move/from16 v14, v18

    .line 368
    .local v14, oldStopCellY:I
    const/16 v20, 0x1

    sub-int v20, v15, v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 369
    const/16 v20, 0x1

    sub-int v20, v16, v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 370
    add-int/lit8 v20, v17, 0x1

    move/from16 v0, v20

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 371
    add-int/lit8 v20, v18, 0x1

    move/from16 v0, v20

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 374
    if-ne v15, v11, :cond_9

    move/from16 v0, v16

    move v1, v12

    if-ne v0, v1, :cond_9

    move/from16 v0, v17

    move v1, v13

    if-ne v0, v1, :cond_9

    move/from16 v0, v18

    move v1, v14

    if-ne v0, v1, :cond_9

    .line 376
    const/4 v10, 0x0

    .line 379
    :cond_9
    add-int/lit8 v19, v19, 0x1

    .line 380
    goto/16 :goto_1

    .line 382
    .end local v11           #oldStartCellX:I
    .end local v12           #oldStartCellY:I
    .end local v13           #oldStopCellX:I
    .end local v14           #oldStopCellY:I
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_0
.end method

.method public getFirstEmptyLocation(IIILcom/sonyericsson/home/layer/desktop/DesktopRect;)Z
    .locals 8
    .parameter "spanX"
    .parameter "spanY"
    .parameter "wantedPane"
    .parameter "outDesktopRect"

    .prologue
    .line 299
    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v7, v7, Lcom/sonyericsson/grid/GridSize;->cols:I

    sub-int v0, v7, p1

    .line 300
    .local v0, MAX_CELL_X:I
    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v7, v7, Lcom/sonyericsson/grid/GridSize;->rows:I

    sub-int v1, v7, p2

    .line 302
    .local v1, MAX_CELL_Y:I
    const/4 v3, 0x0

    .local v3, cellY:I
    :goto_0
    if-gt v3, v1, :cond_4

    .line 303
    const/4 v2, 0x0

    .local v2, cellX:I
    :goto_1
    if-gt v2, v0, :cond_3

    .line 304
    const/4 v4, 0x1

    .line 305
    .local v4, empty:Z
    iput v2, p4, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 306
    iput v3, p4, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 307
    iput p1, p4, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 308
    iput p2, p4, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 309
    iput p3, p4, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 310
    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 311
    .local v6, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v6}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v7

    invoke-virtual {v7, p4}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->overlaps(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 312
    const/4 v4, 0x0

    .line 316
    .end local v6           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_1
    if-eqz v4, :cond_2

    .line 317
    const/4 v7, 0x1

    .line 321
    .end local v2           #cellX:I
    .end local v4           #empty:Z
    .end local v5           #i$:Ljava/util/Iterator;
    :goto_2
    return v7

    .line 303
    .restart local v2       #cellX:I
    .restart local v4       #empty:Z
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 302
    .end local v4           #empty:Z
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    .end local v2           #cellX:I
    :cond_4
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public getHintType()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/layer/HintInfo;

    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/HintInfo;->getHintType()I

    move-result v0

    return v0
.end method

.method public getItemAtHint()Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getHintType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mIntersectedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    return-object v0
.end method

.method public getNbrOfPanes()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mNumberOfPanes:I

    return v0
.end method

.method public getStorableModel()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    .local v0, storableModel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 101
    return-object v0
.end method

.method public getSyncable()Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    return-object v0
.end method

.method public getWidgetSyncable()Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mWidgetSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    return-object v0
.end method

.method public hasWidgets()Z
    .locals 3

    .prologue
    .line 400
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 401
    .local v1, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v2

    instance-of v2, v2, Lcom/sonyericsson/home/data/WidgetInfo;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v2

    instance-of v2, v2, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v2, :cond_0

    .line 402
    :cond_1
    const/4 v2, 0x1

    .line 405
    .end local v1           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public indexOf(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isHinting()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocationEmpty(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z
    .locals 3
    .parameter "rect"

    .prologue
    .line 409
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 410
    .local v1, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->overlaps(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    const/4 v2, 0x0

    .line 414
    .end local v1           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public remove(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    return-object p0
.end method

.method public remove(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 3
    .parameter "info"

    .prologue
    .line 226
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 227
    .local v1, layerItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 233
    .end local v1           #layerItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public remove(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Lcom/sonyericsson/home/data/Info;)I
    .locals 6
    .parameter "info"

    .prologue
    .line 237
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    .line 238
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 239
    .local v4, size:I
    const/4 v3, 0x0

    .line 240
    .local v3, nItemsRemoved:I
    const/4 v0, 0x0

    .line 242
    .end local p0
    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 243
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    .line 244
    .local v1, itemInfo:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 245
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 246
    add-int/lit8 v4, v4, -0x1

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    .end local v1           #itemInfo:Lcom/sonyericsson/home/data/Info;
    :cond_1
    return v3
.end method

.method public removeHint()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-nez v0, :cond_0

    .line 159
    const-string v0, "DesktopModelManager"

    const-string v1, "Remove hint called when no hint was taking place"

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 165
    return-void
.end method

.method public setHint(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z
    .locals 6
    .parameter "info"
    .parameter "hintLocation"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 115
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-nez v3, :cond_0

    .line 116
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 120
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 123
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->set(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    .line 126
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mIntersectedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 127
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 128
    .local v2, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-eq v2, v3, :cond_1

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->overlaps(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mIntersectedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 135
    .end local v2           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mIntersectedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-nez v3, :cond_3

    .line 136
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/layer/HintInfo;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/home/layer/HintInfo;->setHintType(I)V

    :goto_0
    move v3, v5

    .line 154
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_1
    return v3

    .line 138
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local p0
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mIntersectedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    .line 139
    .local v1, intersectedInfo:Lcom/sonyericsson/home/data/Info;
    if-eqz p1, :cond_6

    instance-of v3, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-nez v3, :cond_4

    instance-of v3, p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v3, :cond_6

    :cond_4
    instance-of v3, v1, Lcom/sonyericsson/home/data/InfoGroup;

    if-nez v3, :cond_5

    instance-of v3, v1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-nez v3, :cond_5

    instance-of v3, v1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v3, :cond_6

    .line 143
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/layer/HintInfo;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/sonyericsson/home/layer/HintInfo;->setHintType(I)V

    goto :goto_0

    .line 145
    .restart local p0
    :cond_6
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/layer/HintInfo;

    invoke-virtual {p0, v5}, Lcom/sonyericsson/home/layer/HintInfo;->setHintType(I)V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #intersectedInfo:Lcom/sonyericsson/home/data/Info;
    .restart local p0
    :cond_7
    move v3, v4

    .line 154
    goto :goto_1
.end method

.method public setModel(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    .line 90
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
