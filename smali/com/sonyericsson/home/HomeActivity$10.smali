.class Lcom/sonyericsson/home/HomeActivity$10;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->createDesktop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private appTrayButtonAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

.field private exitOverviewButtonAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

.field private stageAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1489
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1491
    new-instance v0, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    invoke-direct {v0}, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->stageAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    .line 1494
    new-instance v0, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    invoke-direct {v0}, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->appTrayButtonAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    .line 1497
    new-instance v0, Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    invoke-direct {v0}, Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->exitOverviewButtonAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    return-void
.end method


# virtual methods
.method public isHintAllowed(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;Lcom/sonyericsson/grid/GridSize;)Z
    .locals 5
    .parameter "info"
    .parameter "hintRect"
    .parameter "gridSize"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1633
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v3

    .line 1655
    :goto_0
    return v1

    .line 1636
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v1, :cond_2

    :cond_1
    move v1, v3

    .line 1638
    goto :goto_0

    .line 1640
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->getCornerVisibility()[Z

    move-result-object v0

    .line 1642
    .local v0, visibleCorners:[Z
    iget v1, p2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    if-nez v1, :cond_3

    iget v1, p2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    if-nez v1, :cond_3

    aget-boolean v1, v0, v4

    if-eqz v1, :cond_3

    move v1, v4

    .line 1643
    goto :goto_0

    .line 1644
    :cond_3
    iget v1, p2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    iget v2, p3, Lcom/sonyericsson/grid/GridSize;->cols:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_4

    iget v1, p2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    if-nez v1, :cond_4

    aget-boolean v1, v0, v3

    if-eqz v1, :cond_4

    move v1, v4

    .line 1646
    goto :goto_0

    .line 1647
    :cond_4
    iget v1, p2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    if-nez v1, :cond_5

    iget v1, p2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    iget v2, p3, Lcom/sonyericsson/grid/GridSize;->rows:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_5

    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_5

    move v1, v4

    .line 1649
    goto :goto_0

    .line 1650
    :cond_5
    iget v1, p2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    iget v2, p3, Lcom/sonyericsson/grid/GridSize;->cols:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_6

    iget v1, p2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    iget v2, p3, Lcom/sonyericsson/grid/GridSize;->rows:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_6

    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_6

    move v1, v4

    .line 1652
    goto :goto_0

    :cond_6
    move v1, v3

    .line 1655
    goto :goto_0
.end method

.method public isOverviewAllowed()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1659
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1661
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1663
    :goto_0
    return v0

    .line 1661
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1663
    goto :goto_0
.end method

.method public onCreateFolder(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "restore"

    .prologue
    .line 1577
    const/4 v0, 0x0

    .line 1579
    .local v0, text:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1580
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    .line 1582
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$3100(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/home/HomeActivity$10$1;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/home/HomeActivity$10$1;-><init>(Lcom/sonyericsson/home/HomeActivity$10;Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;)V

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/home/HomeActivityFlow;->confirmFolderCreate(Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;Ljava/lang/String;)V

    .line 1591
    return-void
.end method

.method public onDesktopHidden(Z)V
    .locals 3
    .parameter "animating"

    .prologue
    const/4 v2, 0x0

    .line 1604
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$3900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->pause()V

    .line 1605
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$3900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->stop()V

    .line 1607
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1608
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1609
    const/16 v1, -0x3c

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1610
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setOriginRect(Landroid/graphics/Rect;)V

    .line 1611
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1613
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$7400(Lcom/sonyericsson/home/HomeActivity;)V

    .line 1614
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->open(Z)V

    .line 1616
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$4600(Lcom/sonyericsson/home/HomeActivity;)V

    .line 1617
    return-void
.end method

.method public onDesktopShown()V
    .locals 2

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->focus()V

    .line 1621
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1622
    return-void
.end method

.method public onFreeCornersChanged([Z)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1626
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4700(Lcom/sonyericsson/home/HomeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1627
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setCornerVisibility([Z)V

    .line 1630
    :cond_0
    return-void
.end method

.method public onInfoClicked(Lcom/sonyericsson/home/data/Info;I)V
    .locals 3
    .parameter "info"
    .parameter "position"

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3100(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sonyericsson/home/HomeActivityFlow;->onInfoClicked(Lcom/sonyericsson/home/data/Info;ILjava/lang/Object;)V

    .line 1505
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/statistics/Statistics;

    move-result-object v0

    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/statistics/Statistics;->registerAcitvityStart(Lcom/sonyericsson/home/data/ActivityInfo;I)V

    .line 1509
    :cond_0
    return-void
.end method

.method public onInfoRemoved(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/home/HomeActivity;->access$500(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/data/Info;)V

    .line 1513
    return-void
.end method

.method public onItemPickedUp()V
    .locals 0

    .prologue
    .line 1501
    return-void
.end method

.method public onLayoutDone()V
    .locals 4

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4300(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$4300(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$4400(Lcom/sonyericsson/home/HomeActivity;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/home/HomeActivity;->access$2200(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/data/InfoGroup;IZ)V

    .line 1596
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4500(Lcom/sonyericsson/home/HomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/folder/FolderController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->setRenamingFolder(Z)V

    .line 1598
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/folder/FolderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->clickTitleToRename()V

    .line 1601
    :cond_0
    return-void
.end method

.method public onLongPress(Lcom/sonyericsson/grid/GridLocation;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 1516
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1, p1}, Lcom/sonyericsson/home/HomeActivity;->access$1902(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/grid/GridLocation;)Lcom/sonyericsson/grid/GridLocation;

    .line 1517
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v2, 0x0

    iput v2, v1, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    .line 1518
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/HomeActivity;->showDialog(I)V

    .line 1519
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1520
    .local v0, vibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1521
    return-void
.end method

.method public onOverviewActivated()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1524
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/networkname/NetworkNameManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/networkname/NetworkNameManager;->hide()V

    .line 1525
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->defocus()V

    .line 1527
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4000(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4000(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1530
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1531
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4100(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1532
    return-void
.end method

.method public onOverviewAnimationsStarted()V
    .locals 2

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4000(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4000(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->stageAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    if-eq v0, v1, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4000(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->stageAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1538
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)V

    .line 1539
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->appTrayButtonAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    if-eq v0, v1, :cond_1

    .line 1540
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1541
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->appTrayButtonAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1543
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4100(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->exitOverviewButtonAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    if-eq v0, v1, :cond_2

    .line 1544
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4100(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->exitOverviewButtonAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1546
    :cond_2
    return-void
.end method

.method public onOverviewAnimationsStopped()V
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4000(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1550
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4000(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1552
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1553
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4100(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1554
    return-void
.end method

.method public onOverviewDeactivated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1557
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/networkname/NetworkNameManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/networkname/NetworkNameManager;->show()V

    .line 1558
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4000(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4000(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1561
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1562
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1563
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4100(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1564
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1400(Lcom/sonyericsson/home/HomeActivity;)V

    .line 1565
    return-void
.end method

.method public onOverviewProgress(F)V
    .locals 4
    .parameter "progress"

    .prologue
    const/4 v3, 0x0

    .line 1568
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-boolean v2, v2, Lcom/sonyericsson/home/HomeActivity;->mOrientationLandscape:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$4200(Lcom/sonyericsson/home/HomeActivity;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    move v0, v2

    .line 1569
    .local v0, dx:F
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-boolean v2, v2, Lcom/sonyericsson/home/HomeActivity;->mOrientationLandscape:Z

    if-eqz v2, :cond_1

    move v1, v3

    .line 1570
    .local v1, dy:F
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$10;->stageAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;->setTranslation(FF)V

    .line 1571
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$10;->appTrayButtonAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;->setTranslation(FF)V

    .line 1572
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$10;->exitOverviewButtonAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;->setAlpha(F)V

    .line 1573
    return-void

    .end local v0           #dx:F
    .end local v1           #dy:F
    :cond_0
    move v0, v3

    .line 1568
    goto :goto_0

    .line 1569
    .restart local v0       #dx:F
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$4200(Lcom/sonyericsson/home/HomeActivity;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    move v1, v2

    goto :goto_1
.end method
