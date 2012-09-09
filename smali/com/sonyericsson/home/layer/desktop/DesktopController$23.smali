.class Lcom/sonyericsson/home/layer/desktop/DesktopController$23;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Lcom/sonyericsson/home/widget/WidgetManager$AppWidgetRegisteredCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController;->registerWidget(Lcom/sonyericsson/home/data/WidgetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

.field final synthetic val$desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/home/layer/desktop/DesktopItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2588
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$23;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$23;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$23;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$23;->val$desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppWidgetRegistered(Landroid/content/ComponentName;I)V
    .locals 4
    .parameter "cmp"
    .parameter "id"

    .prologue
    .line 2591
    if-eqz p2, :cond_1

    .line 2593
    new-instance v0, Lcom/sonyericsson/home/data/WidgetInfo;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$23;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$23;->val$packageName:Ljava/lang/String;

    invoke-direct {v0, p2, v1, v2}, Lcom/sonyericsson/home/data/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2594
    .local v0, newWidgetInfo:Lcom/sonyericsson/home/data/WidgetInfo;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$23;->val$desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->setInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 2595
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$23;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2596
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$23;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 2605
    .end local v0           #newWidgetInfo:Lcom/sonyericsson/home/data/WidgetInfo;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$23;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$100(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;)V

    .line 2606
    return-void

    .line 2599
    :cond_1
    const-string v1, "DesktopController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem adding pending widget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$23;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$23;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$23;->val$desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->remove(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z

    .line 2601
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$23;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2602
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$23;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
