.class Lcom/sonyericsson/home/HomeActivity$8;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->createAppTray(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;

.field final synthetic val$modelSupplied:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1377
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iput-boolean p2, p0, Lcom/sonyericsson/home/HomeActivity$8;->val$modelSupplied:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTrayClosed(Z)V
    .locals 1
    .parameter "animating"

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2500(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2500(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->show(Z)V

    .line 1405
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1406
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->show(Z)V

    .line 1408
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1409
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/home/HomeActivity;->access$1300(Lcom/sonyericsson/home/HomeActivity;Z)V

    .line 1411
    :cond_2
    return-void
.end method

.method public onAppTrayOpened()V
    .locals 0

    .prologue
    .line 1414
    return-void
.end method

.method public onEditModeEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1447
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    if-nez p1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1448
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    if-nez p1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1449
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/view/BackgroundFadeSrcXferView;

    move-result-object v0

    if-eqz p1, :cond_2

    const/high16 v1, 0x3f80

    :goto_2
    invoke-virtual {v0, v1}, Lcom/sonyericsson/view/BackgroundFadeSrcXferView;->setOpacity(F)V

    .line 1450
    return-void

    :cond_0
    move v1, v2

    .line 1447
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1448
    goto :goto_1

    .line 1449
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "info"
    .parameter "location"

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3100(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, p2}, Lcom/sonyericsson/home/HomeActivityFlow;->onInfoClicked(Lcom/sonyericsson/home/data/Info;ILjava/lang/Object;)V

    .line 1381
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/statistics/Statistics;

    move-result-object v0

    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/statistics/Statistics;->registerAcitvityStart(Lcom/sonyericsson/home/data/ActivityInfo;I)V

    .line 1385
    :cond_0
    return-void
.end method

.method public onInfoClickedInEditMode(Lcom/sonyericsson/home/data/ActivityInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->isUninstallable(Lcom/sonyericsson/home/data/ActivityInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3100(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/HomeActivityFlow;->uninstall(Lcom/sonyericsson/home/data/ActivityInfo;)V

    .line 1456
    :cond_0
    return-void
.end method

.method public onInfoRemoved(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/home/HomeActivity;->access$500(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/data/Info;)V

    .line 1389
    return-void
.end method

.method public onItemPickedUp()V
    .locals 2

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;Z)V

    .line 1418
    return-void
.end method

.method public onItemTransferCanceled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1421
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->hide(Z)V

    .line 1422
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1423
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3300(Lcom/sonyericsson/home/HomeActivity;)V

    .line 1424
    return-void
.end method

.method public onNoUninstallableItems()V
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3100(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeActivityFlow;->onNoUninstallableItems()V

    .line 1460
    return-void
.end method

.method public onSyncCompleted()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1427
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity$8;->val$modelSupplied:Z

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$1300(Lcom/sonyericsson/home/HomeActivity;Z)V

    .line 1430
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->getCurrentSorting()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1441
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0, v2}, Lcom/sonyericsson/home/HomeActivity;->access$3402(Lcom/sonyericsson/home/HomeActivity;I)I

    .line 1444
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 1427
    goto :goto_0

    .line 1432
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0, v3}, Lcom/sonyericsson/home/HomeActivity;->access$3402(Lcom/sonyericsson/home/HomeActivity;I)I

    goto :goto_1

    .line 1435
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$3402(Lcom/sonyericsson/home/HomeActivity;I)I

    goto :goto_1

    .line 1438
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$3402(Lcom/sonyericsson/home/HomeActivity;I)I

    goto :goto_1

    .line 1430
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sortButtonPressed()V
    .locals 2

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->showDialog(I)V

    .line 1393
    return-void
.end method
