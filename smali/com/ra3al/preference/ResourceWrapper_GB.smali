.class public Lcom/ra3al/preference/ResourceWrapper_GB;
.super Landroid/app/Activity;
.source "ResourceWrapper_GB.java"


# static fields
.field static app:Landroid/app/Application;

.field static mCellHeight_land:I

.field static mCellHeight_port:I

.field static mCellWidth_land:I

.field static mCellWidth_port:I

.field static mContext:Landroid/content/Context;


# instance fields
.field mOrientationLandscape:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #p0=(Reference,Lcom/ra3al/preference/ResourceWrapper_GB;);
    return-void
.end method

.method public static SetupVariables(Landroid/app/Application;Landroid/content/Context;)V
    .locals 26
    .parameter "_app"
    .parameter "ctx"

    .prologue
    .line 39
    sput-object p0, Lcom/ra3al/preference/ResourceWrapper_GB;->app:Landroid/app/Application;

    .line 40
    sput-object p1, Lcom/ra3al/preference/ResourceWrapper_GB;->mContext:Landroid/content/Context;

    .line 41
    const-string v23, "com.sonyericsson.home_preferences"

    #v23=(Reference,Ljava/lang/String;);
    const/16 v24, 0x0

    #v24=(Null);
    move-object/from16 v0, p1

    #v0=(Reference,Landroid/content/Context;);
    move-object/from16 v1, v23

    #v1=(Reference,Ljava/lang/String;);
    move/from16 v2, v24

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "desktopConfig"

    #v24=(Reference,Ljava/lang/String;);
    const-string v25, "4"

    #v25=(Reference,Ljava/lang/String;);
    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 43
    .local v10, desktopConfig:I
    #v10=(Integer);
    const-string v23, "com.sonyericsson.home_preferences"

    const/16 v24, 0x0

    #v24=(Null);
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "numDesktopCols"

    #v24=(Reference,Ljava/lang/String;);
    const-string v25, "4"

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 44
    .local v12, desktopNumCols:I
    #v12=(Integer);
    const-string v23, "com.sonyericsson.home_preferences"

    const/16 v24, 0x0

    #v24=(Null);
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "numDesktopRows"

    #v24=(Reference,Ljava/lang/String;);
    const-string v25, "4"

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 46
    .local v13, desktopNumRows:I
    #v13=(Integer);
    const-string v23, "com.sonyericsson.home_preferences"

    const/16 v24, 0x0

    #v24=(Null);
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "autohideDeskPaginatorPort"

    #v24=(Reference,Ljava/lang/String;);
    const/16 v25, 0x0

    #v25=(Null);
    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 47
    .local v4, bAutoHidePaginatorPort:Z
    #v4=(Boolean);
    const-string v23, "com.sonyericsson.home_preferences"

    const/16 v24, 0x0

    #v24=(Null);
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "autohideDeskPaginatorLand"

    #v24=(Reference,Ljava/lang/String;);
    const/16 v25, 0x1

    #v25=(One);
    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 48
    .local v3, bAutoHidePaginatorLand:Z
    #v3=(Boolean);
    const-string v23, "com.sonyericsson.home_preferences"

    const/16 v24, 0x0

    #v24=(Null);
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "textInStage"

    #v24=(Reference,Ljava/lang/String;);
    const/16 v25, 0x1

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 50
    .local v5, bShowTitles:Z
    #v5=(Boolean);
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a001f

    #v24=(Integer);
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 51
    .local v15, desktop_right_nudge_padding_right:I
    #v15=(Integer);
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a0015

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 53
    .local v19, stage_breadth:I
    #v19=(Integer);
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a001d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 55
    .local v18, padLeft:I
    #v18=(Integer);
    const-string v23, "window"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    #v22=(Reference,Ljava/lang/Object;);
    check-cast v22, Landroid/view/WindowManager;

    .line 56
    .local v22, wm:Landroid/view/WindowManager;
    new-instance v17, Landroid/util/DisplayMetrics;

    #v17=(UninitRef,Landroid/util/DisplayMetrics;);
    invoke-direct/range {v17 .. v17}, Landroid/util/DisplayMetrics;-><init>()V

    .line 57
    .local v17, metrics:Landroid/util/DisplayMetrics;
    #v17=(Reference,Landroid/util/DisplayMetrics;);
    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 58
    move-object/from16 v0, v17

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    .line 60
    .local v6, density:F
    #v6=(Integer);
    move-object/from16 v0, v17

    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 61
    .local v11, desktopHeightPx:I
    #v11=(Integer);
    move-object/from16 v0, v17

    iget v14, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 63
    .local v14, desktopWidthPx:I
    #v14=(Integer);
    const/high16 v23, 0x41c8

    #v23=(Integer);
    move/from16 v0, v23

    #v0=(Integer);
    invoke-static {v6, v0}, Lcom/ra3al/preference/ResourceWrapper_GB;->toPixelsRound(FF)I

    move-result v20

    .line 64
    .local v20, statusBarHeight:I
    #v20=(Integer);
    if-eqz v4, :cond_0

    const/4 v8, 0x0

    .line 65
    .local v8, deskPaginatorHeightPort:I
    :goto_0
    #v8=(Integer);
    if-eqz v3, :cond_1

    const/4 v7, 0x0

    .line 66
    .local v7, deskPaginatorHeightLand:I
    :goto_1
    #v7=(Integer);
    if-eqz v5, :cond_2

    const/high16 v23, 0x41a0

    move/from16 v0, v23

    invoke-static {v6, v0}, Lcom/ra3al/preference/ResourceWrapper_GB;->toPixelsRound(FF)I

    move-result v9

    .line 73
    .local v9, deskStageCompesation:I
    :goto_2
    #v9=(Integer);
    const/16 v23, 0x4

    #v23=(PosByte);
    move/from16 v0, v23

    #v0=(PosByte);
    if-eq v10, v0, :cond_3

    .line 75
    sub-int v23, v11, v19

    #v23=(Integer);
    add-int v23, v23, v9

    sub-int v23, v23, v8

    sub-int v16, v23, v20

    .line 81
    .local v16, height:I
    :goto_3
    #v16=(Integer);
    move/from16 v21, v14

    .line 83
    .local v21, width:I
    #v21=(Integer);
    div-int v23, v16, v13

    sput v23, Lcom/ra3al/preference/ResourceWrapper_GB;->mCellHeight_port:I

    .line 84
    div-int v23, v21, v12

    sput v23, Lcom/ra3al/preference/ResourceWrapper_GB;->mCellWidth_port:I

    .line 88
    sub-int v23, v11, v7

    sub-int v16, v23, v20

    .line 89
    const/16 v23, 0x4

    #v23=(PosByte);
    move/from16 v0, v23

    if-eq v10, v0, :cond_4

    .line 91
    sub-int v23, v14, v18

    #v23=(Integer);
    sub-int v21, v23, v15

    .line 98
    :goto_4
    div-int v23, v16, v13

    sput v23, Lcom/ra3al/preference/ResourceWrapper_GB;->mCellHeight_land:I

    .line 99
    div-int v23, v21, v12

    sput v23, Lcom/ra3al/preference/ResourceWrapper_GB;->mCellWidth_land:I

    .line 101
    return-void

    .line 64
    .end local v7           #deskPaginatorHeightLand:I
    .end local v8           #deskPaginatorHeightPort:I
    .end local v9           #deskStageCompesation:I
    .end local v16           #height:I
    .end local v21           #width:I
    :cond_0
    #v0=(Integer);v7=(Uninit);v8=(Uninit);v9=(Uninit);v16=(Uninit);v21=(Uninit);
    const/high16 v23, 0x41f0

    move/from16 v0, v23

    invoke-static {v6, v0}, Lcom/ra3al/preference/ResourceWrapper_GB;->toPixelsRound(FF)I

    move-result v8

    #v8=(Integer);
    goto :goto_0

    .line 65
    .restart local v8       #deskPaginatorHeightPort:I
    :cond_1
    const/high16 v23, 0x41f0

    move/from16 v0, v23

    invoke-static {v6, v0}, Lcom/ra3al/preference/ResourceWrapper_GB;->toPixelsRound(FF)I

    move-result v7

    #v7=(Integer);
    goto :goto_1

    .line 66
    .restart local v7       #deskPaginatorHeightLand:I
    :cond_2
    const/high16 v23, 0x4220

    move/from16 v0, v23

    invoke-static {v6, v0}, Lcom/ra3al/preference/ResourceWrapper_GB;->toPixelsRound(FF)I

    move-result v9

    #v9=(Integer);
    goto :goto_2

    .line 79
    .restart local v9       #deskStageCompesation:I
    :cond_3
    #v0=(PosByte);v23=(PosByte);
    sub-int v23, v11, v8

    #v23=(Integer);
    sub-int v16, v23, v20

    .restart local v16       #height:I
    #v16=(Integer);
    goto :goto_3

    .line 95
    .restart local v21       #width:I
    :cond_4
    #v21=(Integer);v23=(PosByte);
    move/from16 v21, v14

    goto :goto_4
.end method

.method public static getDesktopCellHeight()I
    .locals 2

    .prologue
    .line 22
    sget-object v1, Lcom/ra3al/preference/ResourceWrapper_GB;->app:Landroid/app/Application;

    #v1=(Reference,Landroid/app/Application;);
    check-cast v1, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/home/HomeApplication;->getOrientation()Z

    move-result v0

    .line 23
    .local v0, bOrientationLandscape:Z
    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 24
    sget v1, Lcom/ra3al/preference/ResourceWrapper_GB;->mCellHeight_port:I

    .line 26
    :goto_0
    #v1=(Integer);
    return v1

    :cond_0
    #v1=(Reference,Lcom/sonyericsson/home/HomeApplication;);
    sget v1, Lcom/ra3al/preference/ResourceWrapper_GB;->mCellHeight_land:I

    #v1=(Integer);
    goto :goto_0
.end method

.method public static getDesktopCellWidth()I
    .locals 2

    .prologue
    .line 30
    sget-object v1, Lcom/ra3al/preference/ResourceWrapper_GB;->app:Landroid/app/Application;

    #v1=(Reference,Landroid/app/Application;);
    check-cast v1, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/home/HomeApplication;->getOrientation()Z

    move-result v0

    .line 31
    .local v0, bOrientationLandscape:Z
    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 32
    sget v1, Lcom/ra3al/preference/ResourceWrapper_GB;->mCellWidth_port:I

    .line 34
    :goto_0
    #v1=(Integer);
    return v1

    :cond_0
    #v1=(Reference,Lcom/sonyericsson/home/HomeApplication;);
    sget v1, Lcom/ra3al/preference/ResourceWrapper_GB;->mCellWidth_land:I

    #v1=(Integer);
    goto :goto_0
.end method

.method public static getMainLayout(Landroid/content/Context;)I
    .locals 5
    .parameter "ctx"

    .prologue
    .line 109
    const v0, 0x7f030018

    .line 110
    .local v0, iRes:I
    #v0=(Integer);
    if-eqz p0, :cond_0

    .line 112
    const-string v2, "com.sonyericsson.home_preferences"

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "desktopConfig"

    #v3=(Reference,Ljava/lang/String;);
    const-string v4, "0"

    #v4=(Reference,Ljava/lang/String;);
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 113
    .local v1, var:I
    #v1=(Integer);
    packed-switch v1, :pswitch_data_0

    .line 127
    .end local v1           #var:I
    :cond_0
    :goto_0
    :pswitch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v0

    .line 118
    .restart local v1       #var:I
    :pswitch_1
    #v1=(Integer);v2=(Reference,Ljava/lang/String;);v3=(Reference,Ljava/lang/String;);v4=(Reference,Ljava/lang/String;);
    const v0, 0x7f030026

    .line 119
    goto :goto_0

    .line 121
    :pswitch_2
    const v0, 0x7f030027

    .line 122
    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getMainLayout_att(Landroid/content/Context;)I
    .locals 5
    .parameter "ctx"

    .prologue
    .line 131
    const v0, 0x7f030019

    .line 132
    .local v0, iRes:I
    #v0=(Integer);
    if-eqz p0, :cond_0

    .line 134
    const-string v2, "com.sonyericsson.home_preferences"

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "desktopConfig"

    #v3=(Reference,Ljava/lang/String;);
    const-string v4, "0"

    #v4=(Reference,Ljava/lang/String;);
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 135
    .local v1, var:I
    #v1=(Integer);
    packed-switch v1, :pswitch_data_0

    .line 149
    .end local v1           #var:I
    :cond_0
    :goto_0
    :pswitch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v0

    .line 140
    .restart local v1       #var:I
    :pswitch_1
    #v1=(Integer);v2=(Reference,Ljava/lang/String;);v3=(Reference,Ljava/lang/String;);v4=(Reference,Ljava/lang/String;);
    const v0, 0x7f030028

    .line 141
    goto :goto_0

    .line 143
    :pswitch_2
    const v0, 0x7f030029

    .line 144
    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static toPixelsRound(FF)I
    .locals 2
    .parameter "density"
    .parameter "DipsVal"

    .prologue
    .line 104
    mul-float v0, p1, p0

    #v0=(Float);
    const/high16 v1, 0x3f00

    #v1=(Integer);
    add-float/2addr v0, v1

    float-to-int v0, v0

    #v0=(Integer);
    return v0
.end method
