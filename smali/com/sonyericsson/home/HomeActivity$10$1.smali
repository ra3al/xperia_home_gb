.class Lcom/sonyericsson/home/HomeActivity$10$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity$10;->onCreateFolder(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/HomeActivity$10;

.field final synthetic val$listener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity$10;Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$10$1;->this$1:Lcom/sonyericsson/home/HomeActivity$10;

    iput-object p2, p0, Lcom/sonyericsson/home/HomeActivity$10$1;->val$listener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderCanceled()V
    .locals 1

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10$1;->val$listener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;->onCanceled()V

    .line 1589
    return-void
.end method

.method public onFolderConfirmed(Ljava/lang/String;)V
    .locals 1
    .parameter "folderName"

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10$1;->val$listener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;->onConfirmed(Ljava/lang/String;)V

    .line 1585
    return-void
.end method
