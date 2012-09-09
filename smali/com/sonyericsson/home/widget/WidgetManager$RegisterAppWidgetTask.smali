.class Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;
.super Landroid/os/AsyncTask;
.source "WidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/widget/WidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterAppWidgetTask"
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
.field private final mCallback:Lcom/sonyericsson/home/widget/WidgetManager$AppWidgetRegisteredCallback;

.field private final mComponent:Landroid/content/ComponentName;

.field private mDeleteId:Z

.field private mId:I

.field final synthetic this$0:Lcom/sonyericsson/home/widget/WidgetManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/widget/WidgetManager;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/home/widget/WidgetManager$AppWidgetRegisteredCallback;)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "packageName"
    .parameter "callback"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->this$0:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 265
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->mId:I

    .line 266
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p3, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->mComponent:Landroid/content/ComponentName;

    .line 267
    iput-object p4, p0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->mCallback:Lcom/sonyericsson/home/widget/WidgetManager$AppWidgetRegisteredCallback;

    .line 268
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 253
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->this$0:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-static {v1}, Lcom/sonyericsson/home/widget/WidgetManager;->access$100(Lcom/sonyericsson/home/widget/WidgetManager;)Landroid/appwidget/AppWidgetHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->mId:I

    .line 274
    iget-object v1, p0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->this$0:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-static {v1}, Lcom/sonyericsson/home/widget/WidgetManager;->access$200(Lcom/sonyericsson/home/widget/WidgetManager;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->mId:I

    iget-object v3, p0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 275
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 276
    .local v0, e:Ljava/lang/RuntimeException;
    iget v1, p0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->mId:I

    if-eqz v1, :cond_0

    .line 277
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->mDeleteId:Z

    .line 279
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->mId:I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 253
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->mDeleteId:Z

    if-eqz v0, :cond_0

    .line 287
    new-instance v0, Lcom/sonyericsson/home/widget/WidgetManager$DeleteAppWidgetIdTask;

    iget-object v1, p0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->this$0:Lcom/sonyericsson/home/widget/WidgetManager;

    iget v2, p0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->mId:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/widget/WidgetManager$DeleteAppWidgetIdTask;-><init>(Lcom/sonyericsson/home/widget/WidgetManager;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/widget/WidgetManager$DeleteAppWidgetIdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->mCallback:Lcom/sonyericsson/home/widget/WidgetManager$AppWidgetRegisteredCallback;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->mCallback:Lcom/sonyericsson/home/widget/WidgetManager$AppWidgetRegisteredCallback;

    iget-object v1, p0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->mComponent:Landroid/content/ComponentName;

    iget v2, p0, Lcom/sonyericsson/home/widget/WidgetManager$RegisterAppWidgetTask;->mId:I

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/home/widget/WidgetManager$AppWidgetRegisteredCallback;->onAppWidgetRegistered(Landroid/content/ComponentName;I)V

    .line 293
    :cond_1
    return-void
.end method
