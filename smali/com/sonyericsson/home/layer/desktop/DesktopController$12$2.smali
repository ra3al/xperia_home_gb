.class Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->drop(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

.field final synthetic val$dropListener:Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController$12;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1871
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;->val$dropListener:Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 2

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;->val$dropListener:Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->access$6300(Lcom/sonyericsson/home/layer/desktop/DesktopController$12;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    .line 1889
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$6102(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z

    .line 1890
    return-void
.end method

.method public onConfirmed(Ljava/lang/String;)V
    .locals 5
    .parameter "folderName"

    .prologue
    .line 1873
    new-instance v0, Lcom/sonyericsson/home/data/InfoGroup;

    invoke-direct {v0, p1}, Lcom/sonyericsson/home/data/InfoGroup;-><init>(Ljava/lang/String;)V

    .line 1875
    .local v0, infoGroup:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    iget-object v3, v3, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$6000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->remove(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z

    .line 1876
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    iget-object v3, v3, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$6000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sonyericsson/home/layer/InfoGroupManager;->addLast(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)V

    .line 1877
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    iget-object v3, v3, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v3, v3, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sonyericsson/home/layer/InfoGroupManager;->addLast(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)V

    .line 1879
    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    .line 1881
    .local v1, infoGroupItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->addItemAtHint(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)I

    .line 1883
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;->val$view:Landroid/view/View;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;->val$dropListener:Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->access$6200(Lcom/sonyericsson/home/layer/desktop/DesktopController$12;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    .line 1884
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$6102(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z

    .line 1885
    return-void
.end method
