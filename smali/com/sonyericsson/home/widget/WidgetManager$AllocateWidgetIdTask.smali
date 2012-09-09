.class Lcom/sonyericsson/home/widget/WidgetManager$AllocateWidgetIdTask;
.super Landroid/os/AsyncTask;
.source "WidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/widget/WidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllocateWidgetIdTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/sonyericsson/home/widget/WidgetManager$WidgetIdAllocatedCallback;

.field private mId:I

.field final synthetic this$0:Lcom/sonyericsson/home/widget/WidgetManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/widget/WidgetManager;Lcom/sonyericsson/home/widget/WidgetManager$WidgetIdAllocatedCallback;)V
    .locals 0
    .parameter
    .parameter "callback"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/sonyericsson/home/widget/WidgetManager$AllocateWidgetIdTask;->this$0:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 303
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/sonyericsson/home/widget/WidgetManager$AllocateWidgetIdTask;->mCallback:Lcom/sonyericsson/home/widget/WidgetManager$WidgetIdAllocatedCallback;

    .line 305
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 296
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/widget/WidgetManager$AllocateWidgetIdTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager$AllocateWidgetIdTask;->this$0:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-static {v0}, Lcom/sonyericsson/home/widget/WidgetManager;->access$100(Lcom/sonyericsson/home/widget/WidgetManager;)Landroid/appwidget/AppWidgetHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/widget/WidgetManager$AllocateWidgetIdTask;->mId:I

    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 296
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/widget/WidgetManager$AllocateWidgetIdTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager$AllocateWidgetIdTask;->mCallback:Lcom/sonyericsson/home/widget/WidgetManager$WidgetIdAllocatedCallback;

    iget v1, p0, Lcom/sonyericsson/home/widget/WidgetManager$AllocateWidgetIdTask;->mId:I

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/widget/WidgetManager$WidgetIdAllocatedCallback;->onWidgetIdAllocated(I)V

    .line 316
    return-void
.end method
