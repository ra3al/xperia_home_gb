.class Lcom/sonyericsson/home/HomeActivity$11$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/HomeActivityFlow$OnFolderRenameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity$11;->onRenameFolder(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/layer/folder/FolderListener$OnRenameFinishedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/HomeActivity$11;

.field final synthetic val$listener:Lcom/sonyericsson/home/layer/folder/FolderListener$OnRenameFinishedListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity$11;Lcom/sonyericsson/home/layer/folder/FolderListener$OnRenameFinishedListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1692
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$11$1;->this$1:Lcom/sonyericsson/home/HomeActivity$11;

    iput-object p2, p0, Lcom/sonyericsson/home/HomeActivity$11$1;->val$listener:Lcom/sonyericsson/home/layer/folder/FolderListener$OnRenameFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderCanceled()V
    .locals 1

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$11$1;->val$listener:Lcom/sonyericsson/home/layer/folder/FolderListener$OnRenameFinishedListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/folder/FolderListener$OnRenameFinishedListener;->onRenameFinished()V

    .line 1700
    return-void
.end method

.method public onFolderRenamed(Ljava/lang/String;)V
    .locals 1
    .parameter "folderName"

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$11$1;->val$listener:Lcom/sonyericsson/home/layer/folder/FolderListener$OnRenameFinishedListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/folder/FolderListener$OnRenameFinishedListener;->onRenameFinished()V

    .line 1696
    return-void
.end method
