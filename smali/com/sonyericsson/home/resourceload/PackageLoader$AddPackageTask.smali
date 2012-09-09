.class Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;
.super Lcom/sonyericsson/util/Worker$Task;
.source "PackageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/resourceload/PackageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddPackageTask"
.end annotation


# instance fields
.field private mExcludedActivities:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private mResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "packageName"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 302
    const-string v0, "add package"

    invoke-direct {p0, v0}, Lcom/sonyericsson/util/Worker$Task;-><init>(Ljava/lang/String;)V

    .line 303
    iput-object p2, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->mPackageName:Ljava/lang/String;

    .line 304
    return-void
.end method

.method private addActivityConditional(Landroid/content/pm/ResolveInfo;)V
    .locals 4
    .parameter "resInfo"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->mExcludedActivities:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v2}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$200(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-direct {v3, p1}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_0
    return-void
.end method

.method private getExcludedActivities(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 150
    const-string v0, "com.sonyericsson.home_preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hiddenActivities"

    const-string v2, "com.example.android.apis.ApiDemos"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->mExcludedActivities:Ljava/lang/String;

    .line 151
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 308
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$000()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 309
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$800(Lcom/sonyericsson/home/resourceload/PackageLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->getExcludedActivities(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$100(Lcom/sonyericsson/home/resourceload/PackageLoader;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->mResolveInfos:Ljava/util/List;

    .line 310
    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->mResolveInfos:Ljava/util/List;

    if-nez v1, :cond_0

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->mResolveInfos:Ljava/util/List;

    .line 313
    :cond_0
    return-void
.end method

.method public postExecute()V
    .locals 5

    .prologue
    .line 317
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->mResolveInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 318
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v2}, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->addActivityConditional(Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    .line 321
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$300(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashSet;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$600(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashSet;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 324
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$700(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 325
    .local v1, listener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;->onPackageAdded(Ljava/lang/String;)V

    goto :goto_1

    .line 327
    .end local v1           #listener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    :cond_1
    return-void
.end method
