.class Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;
.super Lcom/sonyericsson/util/Worker$Task;
.source "PackageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/resourceload/PackageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAllApplicationsTask"
.end annotation


# instance fields
.field private mExcludedActivities:Ljava/lang/String;

.field private mTaskAllAppPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskUnavailableApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 1
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 250
    const-string v0, "load all applications"

    invoke-direct {p0, v0}, Lcom/sonyericsson/util/Worker$Task;-><init>(Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskAllAppPackages:Ljava/util/HashSet;

    .line 247
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskUnavailableApps:Ljava/util/HashSet;

    .line 251
    return-void
.end method

.method private addActivityConditional(Landroid/content/pm/ResolveInfo;)V
    .locals 4
    .parameter "resInfo"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mExcludedActivities:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

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

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mExcludedActivities:Ljava/lang/String;

    .line 151
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .prologue
    .line 255
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v4}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$800(Lcom/sonyericsson/home/resourceload/PackageLoader;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->getExcludedActivities(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v4}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$100(Lcom/sonyericsson/home/resourceload/PackageLoader;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$000()Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskResolveInfos:Ljava/util/List;

    .line 256
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskResolveInfos:Ljava/util/List;

    if-nez v4, :cond_0

    .line 257
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskResolveInfos:Ljava/util/List;

    .line 260
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v4}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$100(Lcom/sonyericsson/home/resourceload/PackageLoader;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 262
    .local v0, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 263
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    new-instance v1, Ljava/io/File;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v1, apkFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 266
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskAllAppPackages:Ljava/util/HashSet;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    :cond_2
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 270
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskUnavailableApps:Ljava/util/HashSet;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    .end local v1           #apkFile:Ljava/io/File;
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_3
    return-void
.end method

.method public postExecute()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 277
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v4}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$202(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 278
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskResolveInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 279
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v2}, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->addActivityConditional(Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    .line 282
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskAllAppPackages:Ljava/util/HashSet;

    invoke-static {v3, v4}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$302(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 283
    iput-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskAllAppPackages:Ljava/util/HashSet;

    .line 284
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$400(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashSet;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskUnavailableApps:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 286
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$500(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 287
    .local v0, callback:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 289
    .end local v0           #callback:Ljava/lang/Runnable;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$500(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 290
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v3, v5}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$502(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 291
    return-void
.end method
