.class Lcom/sonyericsson/home/BadgeService$1;
.super Ljava/lang/Object;
.source "BadgeService.java"

# interfaces
.implements Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;


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

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/BadgeService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonyericsson/home/BadgeService$1;->this$0:Lcom/sonyericsson/home/BadgeService;

    iput p2, p0, Lcom/sonyericsson/home/BadgeService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteCompleted(Lcom/sonyericsson/storage/Root;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/home/BadgeService$1;->this$0:Lcom/sonyericsson/home/BadgeService;

    iget v1, p0, Lcom/sonyericsson/home/BadgeService$1;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/BadgeService;->stopSelfResult(I)Z

    .line 41
    return-void
.end method
