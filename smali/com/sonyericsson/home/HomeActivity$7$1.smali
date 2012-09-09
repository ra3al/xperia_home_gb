.class Lcom/sonyericsson/home/HomeActivity$7$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1234
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$7$1;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    iput-object p2, p0, Lcom/sonyericsson/home/HomeActivity$7$1;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 1237
    packed-switch p2, :pswitch_data_0

    .line 1244
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$1;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;->onDialogNegative()V

    .line 1245
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$1;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    invoke-static {v0, v2}, Lcom/sonyericsson/home/HomeActivity$7;->access$2302(Lcom/sonyericsson/home/HomeActivity$7;Z)Z

    .line 1246
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1248
    :goto_0
    return-void

    .line 1239
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$1;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;->onDialogPositive(Landroid/os/Bundle;)V

    .line 1240
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$1;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    invoke-static {v0, v2}, Lcom/sonyericsson/home/HomeActivity$7;->access$2302(Lcom/sonyericsson/home/HomeActivity$7;Z)Z

    .line 1241
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 1237
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
