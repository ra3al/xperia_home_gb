.class Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity$1;
.super Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;
.source "WidgetTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity$1;->this$0:Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;

    invoke-direct {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;-><init>()V

    return-void
.end method


# virtual methods
.method public addFullScreenEffect(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity$1;->this$0:Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;

    invoke-static {v0}, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->access$000(Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method public onConfigured(I)V
    .locals 2
    .parameter "response"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity$1;->this$0:Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;

    invoke-static {v0}, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->access$100(Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity$1;->this$0:Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->access$102(Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;Z)Z

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity$1;->this$0:Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;

    invoke-static {v0}, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->access$200(Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;)Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onConfigured(I)V

    .line 69
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity$1;->this$0:Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;

    invoke-static {v0}, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->access$300(Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity$1;->this$0:Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;

    invoke-static {v0}, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->access$200(Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;)Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->remove()V

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity$1;->this$0:Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->finish()V

    goto :goto_0
.end method

.method public removeFullScreenEffect(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity$1;->this$0:Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;

    invoke-static {v0}, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->access$000(Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method public showWidgetPicker(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "packageName"
    .parameter "subtitles"
    .parameter "description"

    .prologue
    .line 83
    return-void
.end method
