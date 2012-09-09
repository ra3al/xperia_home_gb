.class public Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;
.super Landroid/widget/BaseAdapter;
.source "DesktopAdapter.java"

# interfaces
.implements Lcom/sonyericsson/paneview/PaneAdapter;


# static fields
.field private static final DESKTOP_HINT_ITEM_VIEW_TYPE:I = 0x2

.field private static final VIEW_TYPE_COUNT:I = 0x3


# instance fields
.field private mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

.field private mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

.field private mDesktopModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

.field private mGrid:Lcom/sonyericsson/grid/Grid;

.field private mLatestAddedPosition:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/widget/WidgetManager;Lcom/sonyericsson/home/widget/AdvWidgetManager;Lcom/sonyericsson/grid/Grid;)V
    .locals 1
    .parameter "context"
    .parameter "desktopModelManager"
    .parameter "resourceLoader"
    .parameter "adapterHelper"
    .parameter "widgetManager"
    .parameter "advancedWidgetManager"
    .parameter "grid"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mDesktopModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    .line 63
    iput-object p5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 64
    iput-object p6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    .line 65
    iput-object p4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    .line 66
    iput-object p7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mGrid:Lcom/sonyericsson/grid/Grid;

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 68
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mDesktopModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mDesktopModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->get(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->getItem(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mDesktopModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->get(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/data/Info;->getUniqueId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->getItem(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 124
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    instance-of v1, v0, Lcom/sonyericsson/home/layer/HintInfo;

    if-eqz v1, :cond_0

    .line 125
    const/4 v1, 0x2

    .line 127
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoViewType(Lcom/sonyericsson/home/data/Info;)I

    move-result v1

    goto :goto_0
.end method

.method public getLocation(ILcom/sonyericsson/paneview/PaneLocation;)V
    .locals 4
    .parameter "position"
    .parameter "outLocation"

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->getItem(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v1

    .line 143
    .local v1, location:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mGrid:Lcom/sonyericsson/grid/Grid;

    iget-object v3, p2, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3}, Lcom/sonyericsson/grid/Grid;->calculateRect(Lcom/sonyericsson/grid/GridRect;Landroid/graphics/Rect;)V

    .line 144
    iget v2, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    iput v2, p2, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    .line 145
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->getItem(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 146
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    instance-of v2, v0, Lcom/sonyericsson/home/layer/HintInfo;

    if-eqz v2, :cond_0

    .line 148
    const/4 v2, 0x2

    iput v2, p2, Lcom/sonyericsson/paneview/PaneLocation;->zOrder:I

    .line 156
    :goto_0
    return-void

    .line 149
    :cond_0
    iget v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mLatestAddedPosition:I

    if-ne p1, v2, :cond_1

    .line 151
    const/4 v2, 0x1

    iput v2, p2, Lcom/sonyericsson/paneview/PaneLocation;->zOrder:I

    goto :goto_0

    .line 154
    :cond_1
    const/4 v2, 0x0

    iput v2, p2, Lcom/sonyericsson/paneview/PaneLocation;->zOrder:I

    goto :goto_0
.end method

.method public getNumberOfPanes()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mDesktopModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getNbrOfPanes()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v3, 0x7f03000e

    const/4 v4, 0x0

    .line 87
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->getItem(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 89
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    if-nez v0, :cond_0

    move-object v2, v4

    .line 118
    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    :goto_0
    return-object v2

    .line 93
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_0
    const/4 v1, 0x0

    .line 94
    .local v1, itemView:Landroid/view/View;
    instance-of v2, v0, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v2, :cond_3

    .line 95
    if-nez p2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v2, v0, p2}, Lcom/sonyericsson/home/layer/AdapterHelper;->getActivityInfoView(Lcom/sonyericsson/home/data/ActivityInfo;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    :cond_2
    :goto_1
    move-object v2, v1

    .line 118
    goto :goto_0

    .line 99
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_3
    instance-of v2, v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v2, :cond_5

    .line 100
    if-nez p2, :cond_4

    .line 101
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 103
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    check-cast v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v2, v0, p2}, Lcom/sonyericsson/home/layer/AdapterHelper;->getShortcutInfoView(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 105
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_5
    instance-of v2, v0, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v2, :cond_7

    .line 106
    if-nez p2, :cond_6

    .line 107
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000d

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 109
    :cond_6
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v2, v0, p2}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoGroupView(Lcom/sonyericsson/home/data/InfoGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 110
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_7
    instance-of v2, v0, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v2, :cond_8

    .line 111
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    check-cast v0, Lcom/sonyericsson/home/data/WidgetInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-static {v2, v0}, Lcom/sonyericsson/home/layer/AdapterHelper;->getWidgetInfoView(Lcom/sonyericsson/home/widget/WidgetManager;Lcom/sonyericsson/home/data/WidgetInfo;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 112
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_8
    instance-of v2, v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v2, :cond_9

    .line 113
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    check-cast v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-static {v2, v0}, Lcom/sonyericsson/home/layer/AdapterHelper;->getAdvWidgetInfoView(Lcom/sonyericsson/home/widget/AdvWidgetManager;Lcom/sonyericsson/home/data/AdvWidgetInfo;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 114
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_9
    instance-of v2, v0, Lcom/sonyericsson/home/layer/HintInfo;

    if-eqz v2, :cond_2

    .line 115
    check-cast v0, Lcom/sonyericsson/home/layer/HintInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintInfo;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->getItem(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/data/Info;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isInteractive(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->getItem(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/data/Info;->isInteractive()Z

    move-result v0

    return v0
.end method

.method public setLatestAddedPosition(I)V
    .locals 0
    .parameter "latestAddedPosition"

    .prologue
    .line 71
    iput p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mLatestAddedPosition:I

    .line 72
    return-void
.end method
