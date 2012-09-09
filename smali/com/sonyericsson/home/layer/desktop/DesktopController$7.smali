.class Lcom/sonyericsson/home/layer/desktop/DesktopController$7;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Lcom/sonyericsson/paneview/PaneView$OnLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController;->setOnLayoutListener(Lcom/sonyericsson/paneview/PaneView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

.field final synthetic val$paneView:Lcom/sonyericsson/paneview/PaneView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->val$paneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout()V
    .locals 2

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$7$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$7$1;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1165
    return-void
.end method
