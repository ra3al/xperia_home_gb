.class public Lcom/sonyericsson/home/layer/stage/StageAdapter;
.super Landroid/widget/BaseAdapter;
.source "StageAdapter.java"

# interfaces
.implements Lcom/sonyericsson/paneview/PaneAdapter;


# instance fields
.field private mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOrientationLandscape:Z

.field private mStageModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/layer/stage/StageModelManager;Lcom/sonyericsson/home/layer/AdapterHelper;Z)V
    .locals 1
    .parameter "context"
    .parameter "stageModelManager"
    .parameter "adapterHelper"
    .parameter "orientationLandscape"

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mStageModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    .line 62
    iput-object p3, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    .line 63
    iput-boolean p4, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mOrientationLandscape:Z

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 65
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mStageModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "position"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mStageModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->get(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->getItem(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->getItem(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/data/Info;->getUniqueId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocation(ILcom/sonyericsson/paneview/PaneLocation;)V
    .locals 2
    .parameter "position"
    .parameter "outLocation"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mStageModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getLocation(ILcom/sonyericsson/paneview/PaneLocation;)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->getItem(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 128
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    instance-of v1, v0, Lcom/sonyericsson/home/layer/HintInfo;

    if-eqz v1, :cond_0

    .line 129
    const/4 v1, 0x1

    iput v1, p2, Lcom/sonyericsson/paneview/PaneLocation;->zOrder:I

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v1, 0x0

    iput v1, p2, Lcom/sonyericsson/paneview/PaneLocation;->zOrder:I

    goto :goto_0
.end method

.method public getNumberOfPanes()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v4, 0x7f03000e

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->getItem(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 82
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    if-nez v0, :cond_0

    move-object v3, v5

    .line 116
    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    :goto_0
    return-object v3

    .line 86
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_0
    const/4 v1, 0x0

    .line 87
    .local v1, itemView:Landroid/view/View;
    instance-of v3, v0, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v3, :cond_3

    .line 88
    if-nez p2, :cond_1

    .line 89
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v3, v0, p2, v6}, Lcom/sonyericsson/home/layer/AdapterHelper;->getActivityInfoView(Lcom/sonyericsson/home/data/ActivityInfo;Landroid/view/View;Z)Landroid/view/View;

    move-result-object v1

    .line 108
    :goto_1
    const v3, 0x7f0e001b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 110
    .local v2, label:Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 111
    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mOrientationLandscape:Z

    if-eqz v3, :cond_2

    .line 112
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    move-object v3, v1

    .line 116
    goto :goto_0

    .line 92
    .end local v2           #label:Landroid/widget/TextView;
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_3
    instance-of v3, v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v3, :cond_5

    .line 93
    if-nez p2, :cond_4

    .line 94
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 96
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    check-cast v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v3, v0, p2, v6}, Lcom/sonyericsson/home/layer/AdapterHelper;->getShortcutInfoView(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/view/View;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 97
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_5
    instance-of v3, v0, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v3, :cond_7

    .line 98
    if-nez p2, :cond_6

    .line 99
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001d

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 101
    :cond_6
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v3, v0, p2, v6}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoGroupView(Lcom/sonyericsson/home/data/InfoGroup;Landroid/view/View;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 102
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_7
    instance-of v3, v0, Lcom/sonyericsson/home/layer/HintInfo;

    if-eqz v3, :cond_8

    .line 103
    check-cast v0, Lcom/sonyericsson/home/layer/HintInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintInfo;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 105
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_8
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public isInteractive(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method
