.class Lcom/sonyericsson/home/layer/desktop/DesktopController$8;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController;->sendWallpaperCommand(Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$windowToken:Landroid/os/IBinder;

.field final synthetic val$x:I

.field final synthetic val$y:I

.field final synthetic val$z:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->val$windowToken:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->val$action:Ljava/lang/String;

    iput p4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->val$x:I

    iput p5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->val$y:I

    iput p6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->val$z:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->val$windowToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->val$action:Ljava/lang/String;

    iget v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->val$x:I

    iget v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->val$y:I

    iget v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->val$z:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1561
    return-void
.end method
