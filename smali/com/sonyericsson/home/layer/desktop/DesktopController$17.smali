.class Lcom/sonyericsson/home/layer/desktop/DesktopController$17;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter

    .prologue
    .line 2109
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$17;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$17;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const-string v1, "android.wallpaper.tap"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$6400(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/lang/String;III)V

    .line 2125
    return-void
.end method

.method public onLongPress(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    .line 2111
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$17;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2112
    new-instance v0, Lcom/sonyericsson/grid/GridLocation;

    invoke-direct {v0}, Lcom/sonyericsson/grid/GridLocation;-><init>()V

    .line 2113
    .local v0, location:Lcom/sonyericsson/grid/GridLocation;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$17;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/grid/Grid;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$17;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$17;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/sonyericsson/grid/Grid;->calculateGridLocation(IILcom/sonyericsson/grid/GridLocation;)V

    .line 2115
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$17;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onLongPress(Lcom/sonyericsson/grid/GridLocation;)V

    .line 2117
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$17;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sonyericsson/paneview/PaneView;->requestDisallowInterceptTouchEvent(Z)V

    move v1, v4

    .line 2120
    .end local v0           #location:Lcom/sonyericsson/grid/GridLocation;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
