.class Lcom/sonyericsson/home/layer/stage/StageController$8;
.super Ljava/lang/Object;
.source "StageController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/stage/StageController;
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
    .line 493
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 496
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getIndexFromPosition(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1502(Lcom/sonyericsson/home/layer/stage/StageController;I)I

    .line 497
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->remove(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    iput-object v3, v2, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    .line 498
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 499
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 502
    const v2, 0x7f0e001a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 503
    .local v1, iconView:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 504
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 505
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;

    if-eqz v2, :cond_0

    .line 506
    check-cast v0, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;->setMirrorEnabled(Z)V

    .line 510
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1800(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/transfer/TransferHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1700(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/transfer/TransferSource;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v4

    invoke-interface {v2, v3, p2, v4}, Lcom/sonyericsson/home/transfer/TransferHandler;->transferView(Lcom/sonyericsson/home/transfer/TransferSource;Landroid/view/View;Landroid/view/View;)Lcom/sonyericsson/animation/Renderer;

    .line 512
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 513
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;->onItemPickedUp()V

    .line 516
    :cond_1
    return v5
.end method
