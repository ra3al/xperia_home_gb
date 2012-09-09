.class Lcom/sonyericsson/home/HomeActivity$19;
.super Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2785
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$19;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;-><init>()V

    return-void
.end method


# virtual methods
.method public addFullScreenEffect(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$19;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$6800(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2790
    return-void
.end method

.method public onConfigured(I)V
    .locals 2
    .parameter "response"

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$19;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity$19;->getId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onConfigured(Ljava/util/UUID;I)V

    .line 2800
    return-void
.end method

.method public removeFullScreenEffect(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2794
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$19;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$6800(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2795
    return-void
.end method

.method public showWidgetPicker(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"
    .parameter "title"
    .parameter "subtitles"
    .parameter "descriptions"

    .prologue
    .line 2805
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2806
    .local v1, i:Landroid/content/Intent;
    const-string v2, "com.sonyericsson.widgetpicker"

    const-string v3, "com.sonyericsson.widgetpicker.WidgetPicker"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2808
    const-string v2, "package"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2809
    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2810
    if-eqz p3, :cond_0

    .line 2811
    const-string v2, "subtitles"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2813
    :cond_0
    if-eqz p4, :cond_1

    .line 2814
    const-string v2, "descriptions"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2817
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$19;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v3, 0x5

    invoke-virtual {v2, v1, v3}, Lcom/sonyericsson/home/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2823
    :goto_0
    return-void

    .line 2818
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2819
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$19;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const-string v3, "You need to download Widget Picker to be able to use this widget."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
