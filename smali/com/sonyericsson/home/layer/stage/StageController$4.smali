.class Lcom/sonyericsson/home/layer/stage/StageController$4;
.super Ljava/lang/Object;
.source "StageController.java"

# interfaces
.implements Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/stage/StageController;->syncAndSetup(Ljava/util/ArrayList;Z)V
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
    .line 357
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController$4;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 373
    return-void
.end method

.method public onLongPress(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 360
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$4;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$4;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getIndexFromCoordinate(II)I

    move-result v0

    .line 362
    .local v0, location:I
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$4;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;->onLongPress(I)V

    .line 365
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$4;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->requestDisallowInterceptTouchEvent(Z)V

    move v1, v2

    .line 368
    .end local v0           #location:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
