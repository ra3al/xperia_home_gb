.class public Lcom/sonyericsson/home/BadgeService;
.super Landroid/app/Service;
.source "BadgeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/BadgeService$BadgeReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/sonyericsson/home/BadgeService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeApplication;->getBadgeManager()Lcom/sonyericsson/home/badge/BadgeManager;

    move-result-object v2

    .line 38
    .local v2, badgeManager:Lcom/sonyericsson/home/badge/BadgeManager;
    new-instance v4, Lcom/sonyericsson/home/BadgeService$1;

    invoke-direct {v4, p0, p3}, Lcom/sonyericsson/home/BadgeService$1;-><init>(Lcom/sonyericsson/home/BadgeService;I)V

    .line 44
    .local v4, callback:Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;
    new-instance v0, Lcom/sonyericsson/home/BadgeService$2;

    move-object v1, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/home/BadgeService$2;-><init>(Lcom/sonyericsson/home/BadgeService;Lcom/sonyericsson/home/badge/BadgeManager;Landroid/content/Intent;Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;I)V

    invoke-virtual {v2, v0}, Lcom/sonyericsson/home/badge/BadgeManager;->addOnStartCompletedCallback(Ljava/lang/Runnable;)V

    .line 53
    const/4 v0, 0x3

    return v0
.end method
