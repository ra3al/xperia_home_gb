.class public Lcom/sonyericsson/home/widget/WidgetManager;
.super Ljava/lang/Object;
.source "WidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/widget/WidgetManager$AllocateWidgetIdTask;,
        Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;,
        Lcom/sonyericsson/home/widget/WidgetManager$DeleteAppWidgetIdTask;,
        Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;,
        Lcom/sonyericsson/home/widget/WidgetManager$WidgetIdAllocatedCallback;,
        Lcom/sonyericsson/home/widget/WidgetManager$AppWidgetRegisteredCallback;
    }
.end annotation


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;",
            ">;"
        }
    .end annotation
.end field

.field private mCellHeight:I

.field private mCellWidth:I

.field private final mContext:Landroid/content/Context;

.field private final mScrollableAppWidgetManager:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/appwidget/AppWidgetHost;)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetHost"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCache:Ljava/util/HashMap;

    .line 64
    iput-object p1, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 66
    iput-object p3, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCellWidth:I

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCellHeight:I

    invoke-direct {p0}, Lcom/sonyericsson/home/widget/WidgetManager;->setCellDimensions()V

    .line 69
    new-instance v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;

    new-instance v1, Lcom/sonyericsson/home/widget/WidgetManager$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/widget/WidgetManager$1;-><init>(Lcom/sonyericsson/home/widget/WidgetManager;)V

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager$WidgetDataGetter;)V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mScrollableAppWidgetManager:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/widget/WidgetManager;)Landroid/appwidget/AppWidgetHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/widget/WidgetManager;)Landroid/appwidget/AppWidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method private getCachedWidget(I)Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    .locals 5
    .parameter "appWidgetId"

    .prologue
    const/4 v4, 0x0

    .line 212
    if-nez p1, :cond_0

    move-object v2, v4

    .line 228
    :goto_0
    return-object v2

    .line 216
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;

    .line 218
    .local v0, cachedWidget:Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    if-nez v0, :cond_1

    .line 219
    iget-object v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 221
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_1

    .line 222
    new-instance v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;

    .end local v0           #cachedWidget:Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    invoke-direct {v0, v4}, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;-><init>(Lcom/sonyericsson/home/widget/WidgetManager$1;)V

    .line 223
    .restart local v0       #cachedWidget:Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    iput-object v1, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 224
    iget-object v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    move-object v2, v0

    .line 228
    goto :goto_0
.end method

.method public static getWidgetId(Landroid/content/Intent;)I
    .locals 2
    .parameter "data"

    .prologue
    .line 103
    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setCellDimensions()V
    .locals 24

    .prologue
    .line 17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "com.sonyericsson.home_preferences"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "autohideDeskPaginatorPort"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 18
    .local v3, bAutoHidePaginatorPort:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "com.sonyericsson.home_preferences"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "autohideDeskPaginatorLand"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 19
    .local v2, bAutoHidePaginatorLand:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "com.sonyericsson.home_preferences"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "textInStage"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 21
    .local v4, bShowTitles:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "com.sonyericsson.home_preferences"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "numDesktopCols"

    const-string v23, "4"

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 22
    .local v5, cols:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "com.sonyericsson.home_preferences"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "numDesktopRows"

    const-string v23, "4"

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 24
    .local v16, rows:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a001f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 25
    .local v12, desktop_right_nudge_padding_right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a0015

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 26
    .local v17, stage_breadth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a001d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 28
    .local v15, padLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "window"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowManager;

    .line 29
    .local v20, wm:Landroid/view/WindowManager;
    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    .line 30
    .local v14, metrics:Landroid/util/DisplayMetrics;
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 31
    iget v6, v14, Landroid/util/DisplayMetrics;->density:F

    .line 33
    .local v6, density:F
    iget v10, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 34
    .local v10, desktopHeightPx:I
    iget v11, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 36
    .local v11, desktopWidthPx:I
    const/high16 v21, 0x41c8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->toPixelsRound(FF)I

    move-result v18

    .line 37
    .local v18, statusBarHeight:I
    if-eqz v3, :cond_0

    const/4 v8, 0x0

    .line 38
    .local v8, deskPaginatorHeightPort:I
    :goto_0
    if-eqz v2, :cond_1

    const/4 v7, 0x0

    .line 39
    .local v7, deskPaginatorHeightLand:I
    :goto_1
    if-eqz v4, :cond_2

    const/high16 v21, 0x41a0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->toPixelsRound(FF)I

    move-result v9

    .line 44
    .local v9, deskStageCompesation:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 46
    sub-int v21, v10, v17

    add-int v21, v21, v9

    sub-int v21, v21, v8

    sub-int v13, v21, v18

    .line 47
    .local v13, height:I
    move/from16 v19, v11

    .line 49
    .local v19, width:I
    div-int v21, v13, v16

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/home/widget/WidgetManager;->mCellHeight:I

    .line 50
    div-int v21, v19, v5

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/home/widget/WidgetManager;->mCellWidth:I

    .line 60
    :goto_3
    return-void

    .line 37
    .end local v7           #deskPaginatorHeightLand:I
    .end local v8           #deskPaginatorHeightPort:I
    .end local v9           #deskStageCompesation:I
    .end local v13           #height:I
    .end local v19           #width:I
    :cond_0
    const/high16 v21, 0x41f0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->toPixelsRound(FF)I

    move-result v8

    goto :goto_0

    .line 38
    .restart local v8       #deskPaginatorHeightPort:I
    :cond_1
    const/high16 v21, 0x41f0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->toPixelsRound(FF)I

    move-result v7

    goto :goto_1

    .line 39
    .restart local v7       #deskPaginatorHeightLand:I
    :cond_2
    const/high16 v21, 0x4234

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->toPixelsRound(FF)I

    move-result v9

    goto :goto_2

    .line 54
    .restart local v9       #deskStageCompesation:I
    :cond_3
    sub-int v21, v10, v7

    sub-int v13, v21, v18

    .line 55
    .restart local v13       #height:I
    sub-int v21, v11, v15

    sub-int v19, v21, v12

    .line 57
    .restart local v19       #width:I
    div-int v21, v13, v16

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/home/widget/WidgetManager;->mCellHeight:I

    .line 58
    div-int v21, v19, v5

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/home/widget/WidgetManager;->mCellWidth:I

    goto :goto_3
.end method

.method private toPixelsRound(FF)I
    .locals 2
    .parameter "density"
    .parameter "DipsVal"

    .prologue
    .line 63
    mul-float v0, p2, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public allocateWidgetIdAsync(Lcom/sonyericsson/home/widget/WidgetManager$WidgetIdAllocatedCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 233
    new-instance v0, Lcom/sonyericsson/home/widget/WidgetManager$AllocateWidgetIdTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/home/widget/WidgetManager$AllocateWidgetIdTask;-><init>(Lcom/sonyericsson/home/widget/WidgetManager;Lcom/sonyericsson/home/widget/WidgetManager$WidgetIdAllocatedCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/widget/WidgetManager$AllocateWidgetIdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 234
    return-void
.end method

.method public clearCache(I)V
    .locals 2
    .parameter "appWidgetId"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void
.end method

.method public deleteAppWidgetId(I)V
    .locals 2
    .parameter "appWidgetId"

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mScrollableAppWidgetManager:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->deleteWidgetId(I)V

    .line 117
    new-instance v0, Lcom/sonyericsson/home/widget/WidgetManager$DeleteAppWidgetIdTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/home/widget/WidgetManager$DeleteAppWidgetIdTask;-><init>(Lcom/sonyericsson/home/widget/WidgetManager;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/widget/WidgetManager$DeleteAppWidgetIdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 119
    :cond_0
    return-void
.end method

.method public getPackageName(I)Ljava/lang/String;
    .locals 2
    .parameter "appWidgetId"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getCachedWidget(I)Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;

    move-result-object v0

    .line 195
    .local v0, cachedWidget:Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    if-eqz v0, :cond_0

    .line 196
    iget-object v1, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 199
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPickWidgetIntent(ILjava/util/ArrayList;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .parameter "id"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, customInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .local p3, customExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, pickIntent:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string v1, "customInfo"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 97
    const-string v1, "customExtras"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 99
    return-object v0
.end method

.method public getWidgetConfigureIntent(I)Landroid/content/Intent;
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getCachedWidget(I)Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;

    move-result-object v0

    .line 163
    .local v0, cachedWidget:Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 164
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 166
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object v2, v1

    .line 169
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getWidgetHeight(I)I
    .locals 4
    .parameter "appWidgetId"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getCachedWidget(I)Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;

    move-result-object v0

    .line 184
    .local v0, cachedWidget:Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    if-eqz v0, :cond_0

    .line 186
    iget v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCellWidth:I

    iget v3, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCellHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 187
    .local v1, smallerSize:I
    iget v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCellHeight:I

    iget-object v3, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    add-int/2addr v3, v1

    div-int/2addr v3, v1

    mul-int/2addr v2, v3

    .line 189
    .end local v1           #smallerSize:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 2
    .parameter "appWidgetId"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getCachedWidget(I)Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;

    move-result-object v0

    .line 154
    .local v0, cachedWidget:Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    if-nez v0, :cond_0

    .line 155
    const/4 v1, 0x0

    .line 158
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->info:Landroid/appwidget/AppWidgetProviderInfo;

    goto :goto_0
.end method

.method public getWidgetView(I)Landroid/view/View;
    .locals 8
    .parameter "appWidgetId"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f030020

    const-string v7, "AppWidgetHost"

    .line 122
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getCachedWidget(I)Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;

    move-result-object v0

    .line 124
    .local v0, cachedWidget:Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    if-nez v0, :cond_0

    .line 126
    const-string v2, "AppWidgetHost"

    const-string v2, "could not find cached view"

    invoke-static {v7, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 148
    :goto_0
    return-object v2

    .line 131
    :cond_0
    iget-object v2, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->view:Landroid/view/View;

    if-nez v2, :cond_1

    .line 133
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v3, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v2, v3, p1, v4}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->view:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mScrollableAppWidgetManager:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;

    iget-object v3, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v2, p1, v3}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->sendAppWidgetReadyBroadcast(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 148
    :cond_1
    iget-object v2, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->view:Landroid/view/View;

    goto :goto_0

    .line 135
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 138
    .local v1, throwable:Ljava/lang/Throwable;
    const-string v2, "AppWidgetHost"

    const-string v2, "createView"

    invoke-static {v7, v2, v1}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    iget-object v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->view:Landroid/view/View;

    goto :goto_1
.end method

.method public getWidgetWidth(I)I
    .locals 4
    .parameter "appWidgetId"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getCachedWidget(I)Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;

    move-result-object v0

    .line 174
    .local v0, cachedWidget:Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    if-eqz v0, :cond_0

    .line 176
    iget v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCellWidth:I

    iget v3, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCellHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 177
    .local v1, smallerSize:I
    iget v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCellWidth:I

    iget-object v3, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    add-int/2addr v3, v1

    div-int/2addr v3, v1

    mul-int/2addr v2, v3

    .line 179
    .end local v1           #smallerSize:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/WidgetManager;->stopListening()V

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mScrollableAppWidgetManager:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->onDestroy()V

    .line 205
    return-void
.end method

.method public registerAppWidgetAsync(Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/home/widget/WidgetManager$AppWidgetRegisteredCallback;)V
    .locals 2
    .parameter "name"
    .parameter "packageName"
    .parameter "callback"

    .prologue
    .line 110
    new-instance v0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;-><init>(Lcom/sonyericsson/home/widget/WidgetManager;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/home/widget/WidgetManager$AppWidgetRegisteredCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    return-void
.end method

.method public startListening()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mScrollableAppWidgetManager:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->startListening()V

    .line 84
    return-void
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mScrollableAppWidgetManager:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->stoplistening()V

    .line 89
    return-void
.end method
