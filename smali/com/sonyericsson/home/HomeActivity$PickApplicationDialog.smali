.class Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickApplicationDialog"
.end annotation


# instance fields
.field private adapter:Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;

.field private dialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2994
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2994
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2994
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 3003
    new-instance v1, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->adapter:Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;

    .line 3005
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/bidi/Utils;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3006
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3008
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->adapter:Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$3400(Lcom/sonyericsson/home/HomeActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3010
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 3012
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->dialog:Landroid/app/AlertDialog;

    .line 3013
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 3014
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3015
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 3017
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->dialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method private dismissSafely()V
    .locals 2

    .prologue
    .line 3026
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3030
    :goto_0
    return-void

    .line 3027
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->adapter:Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->init()V

    .line 3034
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->adapter:Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->notifyDataSetChanged()V

    .line 3035
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 3036
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 3047
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->dismissSafely()V

    .line 3048
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3052
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->dismissSafely()V

    .line 3053
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3100(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->adapter:Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/home/HomeActivityFlow;->addActivity(Lcom/sonyericsson/home/data/ActivityInfo;)V

    .line 3054
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 3040
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2500(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 3041
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$2502(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 3043
    :cond_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 3057
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2500(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3058
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2500(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3060
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-static {v0, p1}, Lcom/sonyericsson/home/HomeActivity;->access$2502(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 3061
    return-void
.end method
