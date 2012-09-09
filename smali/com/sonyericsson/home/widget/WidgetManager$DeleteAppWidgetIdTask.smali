.class Lcom/sonyericsson/home/widget/WidgetManager$DeleteAppWidgetIdTask;
.super Landroid/os/AsyncTask;
.source "WidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/widget/WidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteAppWidgetIdTask"
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
.field final mAppWidgetId:I

.field final synthetic this$0:Lcom/sonyericsson/home/widget/WidgetManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/widget/WidgetManager;I)V
    .locals 0
    .parameter
    .parameter "appWidgetId"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/sonyericsson/home/widget/WidgetManager$DeleteAppWidgetIdTask;->this$0:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 241
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 242
    iput p2, p0, Lcom/sonyericsson/home/widget/WidgetManager$DeleteAppWidgetIdTask;->mAppWidgetId:I

    .line 243
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 236
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/widget/WidgetManager$DeleteAppWidgetIdTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager$DeleteAppWidgetIdTask;->this$0:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-static {v0}, Lcom/sonyericsson/home/widget/WidgetManager;->access$100(Lcom/sonyericsson/home/widget/WidgetManager;)Landroid/appwidget/AppWidgetHost;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/home/widget/WidgetManager$DeleteAppWidgetIdTask;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 248
    const/4 v0, 0x0

    return-object v0
.end method
