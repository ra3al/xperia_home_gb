.class Lcom/sonyericsson/home/Restarter$1;
.super Ljava/lang/Object;
.source "Restarter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/Restarter;->Restart(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/Restarter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/Restarter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonyericsson/home/Restarter$1;->this$0:Lcom/sonyericsson/home/Restarter;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 32
    const-wide/16 v0, 0x190

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 33
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 34
    return-void
.end method
