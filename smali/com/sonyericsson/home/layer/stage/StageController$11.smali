.class Lcom/sonyericsson/home/layer/stage/StageController$11;
.super Ljava/lang/Object;
.source "StageController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener$OnCreateFolderCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/stage/StageController;->onResume(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/stage/StageController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/stage/StageController;)V
    .locals 0
    .parameter

    .prologue
    .line 937
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController$11;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$11;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2800(Lcom/sonyericsson/home/layer/stage/StageController;)V

    .line 955
    return-void
.end method

.method public onConfirmed(Ljava/lang/String;)V
    .locals 3
    .parameter "folderName"

    .prologue
    .line 939
    new-instance v0, Lcom/sonyericsson/home/data/InfoGroup;

    invoke-direct {v0, p1}, Lcom/sonyericsson/home/data/InfoGroup;-><init>(Ljava/lang/String;)V

    .line 940
    .local v0, infoGroup:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$11;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$11;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2700(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/data/Info;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->remove(Lcom/sonyericsson/home/data/Info;)Z

    .line 941
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$11;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 942
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$11;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 943
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$11;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$11;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2300(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/data/Info;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->remove(Lcom/sonyericsson/home/data/Info;)Z

    .line 944
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$11;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$11;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2300(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/data/Info;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/home/layer/InfoGroupManager;->addLast(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)V

    .line 945
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$11;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$11;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2700(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/data/Info;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/home/layer/InfoGroupManager;->addLast(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)V

    .line 946
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$11;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$11;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2100(Lcom/sonyericsson/home/layer/stage/StageController;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->addItem(Lcom/sonyericsson/home/data/Info;I)Z

    .line 947
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$11;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$300(Lcom/sonyericsson/home/layer/stage/StageController;)V

    .line 948
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$11;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 950
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$11;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2800(Lcom/sonyericsson/home/layer/stage/StageController;)V

    .line 951
    return-void
.end method
