.class Lcom/sonyericsson/home/HomeActivity$15;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->createCornerButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1937
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 2

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$400(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/transfer/TransferView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->isInTransferMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->show()V

    .line 1950
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$1002(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 1951
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$1100(Lcom/sonyericsson/home/HomeActivity;Z)V

    .line 1952
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->show()V

    .line 1954
    :cond_0
    return-void
.end method

.method public onHintCancelled(I)V
    .locals 1
    .parameter "corner"

    .prologue
    .line 1972
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1974
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->show()V

    .line 1976
    :cond_1
    return-void
.end method

.method public onHinted(I)V
    .locals 1
    .parameter "corner"

    .prologue
    .line 1965
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1967
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->hide()V

    .line 1969
    :cond_1
    return-void
.end method

.method public onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "info"
    .parameter "sourceBounds"

    .prologue
    const/4 v1, 0x4

    .line 1940
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3100(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v0

    invoke-virtual {v0, p1, v1, p2}, Lcom/sonyericsson/home/HomeActivityFlow;->onInfoClicked(Lcom/sonyericsson/home/data/Info;ILjava/lang/Object;)V

    .line 1941
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    .line 1942
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/statistics/Statistics;

    move-result-object v0

    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/statistics/Statistics;->registerAcitvityStart(Lcom/sonyericsson/home/data/ActivityInfo;I)V

    .line 1945
    :cond_0
    return-void
.end method

.method public onOpened()V
    .locals 2

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$400(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/transfer/TransferView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->isInTransferMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1958
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->hide()V

    .line 1959
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$1300(Lcom/sonyericsson/home/HomeActivity;Z)V

    .line 1960
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->hide()V

    .line 1962
    :cond_0
    return-void
.end method
