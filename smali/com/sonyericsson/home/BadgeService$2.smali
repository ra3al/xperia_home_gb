.class Lcom/sonyericsson/home/BadgeService$2;
.super Ljava/lang/Object;
.source "BadgeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/BadgeService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/BadgeService;

.field final synthetic val$badgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

.field final synthetic val$callback:Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/BadgeService;Lcom/sonyericsson/home/badge/BadgeManager;Landroid/content/Intent;Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sonyericsson/home/BadgeService$2;->this$0:Lcom/sonyericsson/home/BadgeService;

    iput-object p2, p0, Lcom/sonyericsson/home/BadgeService$2;->val$badgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    iput-object p3, p0, Lcom/sonyericsson/home/BadgeService$2;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/sonyericsson/home/BadgeService$2;->val$callback:Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;

    iput p5, p0, Lcom/sonyericsson/home/BadgeService$2;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 46
    iget-object v1, p0, Lcom/sonyericsson/home/BadgeService$2;->val$badgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    iget-object v2, p0, Lcom/sonyericsson/home/BadgeService$2;->val$intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonyericsson/home/BadgeService$2;->val$callback:Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/home/badge/BadgeManager;->onReceive(Landroid/content/Intent;Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;)Z

    move-result v0

    .line 47
    .local v0, saving:Z
    if-nez v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/sonyericsson/home/BadgeService$2;->this$0:Lcom/sonyericsson/home/BadgeService;

    iget v2, p0, Lcom/sonyericsson/home/BadgeService$2;->val$startId:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/BadgeService;->stopSelfResult(I)Z

    .line 50
    :cond_0
    return-void
.end method
