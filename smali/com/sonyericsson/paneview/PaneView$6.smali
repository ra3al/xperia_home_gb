.class Lcom/sonyericsson/paneview/PaneView$6;
.super Ljava/lang/Object;
.source "PaneView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/paneview/PaneView;->createDynamicsRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/paneview/PaneView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter

    .prologue
    .line 1551
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView$6;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v3, 0x3a83126f

    .line 1553
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1554
    .local v0, now:J
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView$6;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView;->access$1300(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/util/Dynamics;->update(J)V

    .line 1555
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView$6;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView;->access$1600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/util/Dynamics;->update(J)V

    .line 1556
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView$6;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView;->access$1900(Lcom/sonyericsson/paneview/PaneView;)V

    .line 1558
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView$6;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView;->access$1300(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Lcom/sonyericsson/util/Dynamics;->isAtRest(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView$6;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView;->access$1600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Lcom/sonyericsson/util/Dynamics;->isAtRest(FF)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1561
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView$6;->this$0:Lcom/sonyericsson/paneview/PaneView;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, p0, v3, v4}, Lcom/sonyericsson/paneview/PaneView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1569
    :goto_0
    return-void

    .line 1565
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView$6;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView;->access$1300(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->adjustPositionAndVelocity()V

    .line 1566
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView$6;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView;->access$1600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->adjustPositionAndVelocity()V

    .line 1567
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView$6;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView;->access$2000(Lcom/sonyericsson/paneview/PaneView;)V

    goto :goto_0
.end method
