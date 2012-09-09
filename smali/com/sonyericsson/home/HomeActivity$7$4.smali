.class Lcom/sonyericsson/home/HomeActivity$7$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity$7;->showFolderDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/HomeActivity$7;

.field final synthetic val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity$7;Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$7$4;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    iput-object p2, p0, Lcom/sonyericsson/home/HomeActivity$7$4;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Landroid/app/Dialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$4;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2500(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$4;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$2502(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1319
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$4;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$7;->access$2700(Lcom/sonyericsson/home/HomeActivity$7;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1320
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$4;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;->onDialogNegative()V

    .line 1321
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$4;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity$7;->access$2702(Lcom/sonyericsson/home/HomeActivity$7;Z)Z

    .line 1323
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$4;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$2802(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 1324
    return-void
.end method

.method public onDialogNegative()V
    .locals 2

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$4;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$7;->access$2700(Lcom/sonyericsson/home/HomeActivity$7;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$4;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;->onDialogNegative()V

    .line 1311
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$4;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity$7;->access$2702(Lcom/sonyericsson/home/HomeActivity$7;Z)Z

    .line 1313
    :cond_0
    return-void
.end method

.method public onDialogPositive(Landroid/os/Bundle;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$4;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$7;->access$2700(Lcom/sonyericsson/home/HomeActivity$7;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$4;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;->onDialogPositive(Landroid/os/Bundle;)V

    .line 1304
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$4;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity$7;->access$2702(Lcom/sonyericsson/home/HomeActivity$7;Z)Z

    .line 1306
    :cond_0
    return-void
.end method

.method public onNameChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$4;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iput-object p1, v0, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    .line 1299
    return-void
.end method
