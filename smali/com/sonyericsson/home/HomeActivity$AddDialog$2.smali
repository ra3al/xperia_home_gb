.class Lcom/sonyericsson/home/HomeActivity$AddDialog$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/widget/WidgetManager$WidgetIdAllocatedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity$AddDialog;->pickWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/HomeActivity$AddDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity$AddDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 2604
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog$2;->this$1:Lcom/sonyericsson/home/HomeActivity$AddDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWidgetIdAllocated(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 2607
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog$2;->this$1:Lcom/sonyericsson/home/HomeActivity$AddDialog;

    iget-object v2, v2, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$3900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetInfos()Ljava/util/ArrayList;

    move-result-object v1

    .line 2609
    .local v1, advWidgetInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog$2;->this$1:Lcom/sonyericsson/home/HomeActivity$AddDialog;

    iget-object v2, v2, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$3900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetInfoExtras()Ljava/util/ArrayList;

    move-result-object v0

    .line 2612
    .local v0, advWidgetExtraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog$2;->this$1:Lcom/sonyericsson/home/HomeActivity$AddDialog;

    iget-object v2, v2, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog$2;->this$1:Lcom/sonyericsson/home/HomeActivity$AddDialog;

    iget-object v3, v3, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v3}, Lcom/sonyericsson/home/HomeActivity;->access$6700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/WidgetManager;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v0}, Lcom/sonyericsson/home/widget/WidgetManager;->getPickWidgetIntent(ILjava/util/ArrayList;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/home/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2614
    return-void
.end method
