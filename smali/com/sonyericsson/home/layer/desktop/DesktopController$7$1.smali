.class Lcom/sonyericsson/home/layer/desktop/DesktopController$7$1;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->onLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$7;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$7;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$7;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onLayoutDone()V

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$7;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->val$paneView:Lcom/sonyericsson/paneview/PaneView;

    if-eqz v0, :cond_1

    .line 1161
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$7;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->val$paneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setOnLayoutListener(Lcom/sonyericsson/paneview/PaneView$OnLayoutListener;)V

    .line 1163
    :cond_1
    return-void
.end method
