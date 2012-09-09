.class Lcom/sonyericsson/home/ShortcutService$1;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/ShortcutService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/ShortcutService;

.field final synthetic val$desktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/ShortcutService;Landroid/content/Intent;Lcom/sonyericsson/home/layer/desktop/DesktopController;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sonyericsson/home/ShortcutService$1;->this$0:Lcom/sonyericsson/home/ShortcutService;

    iput-object p2, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$desktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iput p4, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 60
    const/4 v1, 0x1

    .line 61
    .local v1, stop:Z
    iget-object v2, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShortcutService.INSTALL_SHORTCUT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    iget-object v2, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$desktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v3, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/home/ShortcutService$AutoStopService;

    iget-object v5, p0, Lcom/sonyericsson/home/ShortcutService$1;->this$0:Lcom/sonyericsson/home/ShortcutService;

    iget v6, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$startId:I

    invoke-direct {v4, v5, v6}, Lcom/sonyericsson/home/ShortcutService$AutoStopService;-><init>(Lcom/sonyericsson/home/ShortcutService;I)V

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addShortcutAsync(Landroid/os/Bundle;Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;)Z

    move-result v0

    .line 64
    .local v0, added:Z
    if-nez v0, :cond_2

    const/4 v2, 0x1

    move v1, v2

    .line 69
    .end local v0           #added:Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 70
    iget-object v2, p0, Lcom/sonyericsson/home/ShortcutService$1;->this$0:Lcom/sonyericsson/home/ShortcutService;

    iget v3, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$startId:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/ShortcutService;->stopSelf(I)V

    .line 72
    :cond_1
    return-void

    .line 64
    .restart local v0       #added:Z
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 65
    .end local v0           #added:Z
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShortcutService.UNINSTALL_SHORTCUT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$desktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v3, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->removeShortcutSync(Landroid/os/Bundle;)Z

    goto :goto_0
.end method
