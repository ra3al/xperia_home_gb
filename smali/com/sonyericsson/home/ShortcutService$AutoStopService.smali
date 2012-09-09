.class Lcom/sonyericsson/home/ShortcutService$AutoStopService;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoStopService"
.end annotation


# instance fields
.field final mStartId:I

.field final synthetic this$0:Lcom/sonyericsson/home/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/ShortcutService;I)V
    .locals 0
    .parameter
    .parameter "startId"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonyericsson/home/ShortcutService$AutoStopService;->this$0:Lcom/sonyericsson/home/ShortcutService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p2, p0, Lcom/sonyericsson/home/ShortcutService$AutoStopService;->mStartId:I

    .line 45
    return-void
.end method


# virtual methods
.method public onWriteCompleted(Lcom/sonyericsson/storage/Root;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonyericsson/home/ShortcutService$AutoStopService;->this$0:Lcom/sonyericsson/home/ShortcutService;

    iget v1, p0, Lcom/sonyericsson/home/ShortcutService$AutoStopService;->mStartId:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/ShortcutService;->stopSelfResult(I)Z

    .line 50
    return-void
.end method
