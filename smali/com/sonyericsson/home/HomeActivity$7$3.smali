.class Lcom/sonyericsson/home/HomeActivity$7$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity$7;->showDeleteDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;)V
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
    .line 1260
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$7$3;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    iput-object p2, p0, Lcom/sonyericsson/home/HomeActivity$7$3;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$3;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$7;->access$2300(Lcom/sonyericsson/home/HomeActivity$7;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1263
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$3;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2400(Lcom/sonyericsson/home/HomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$3;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;->onDialogNegative()V

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$3;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity$7;->access$2302(Lcom/sonyericsson/home/HomeActivity$7;Z)Z

    .line 1268
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$3;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2500(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 1269
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$3;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$2502(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1271
    :cond_2
    return-void
.end method
