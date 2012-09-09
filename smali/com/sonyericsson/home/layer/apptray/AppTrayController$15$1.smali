.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->onReadCompleted(Lcom/sonyericsson/storage/Root;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

.field final synthetic val$root:Lcom/sonyericsson/storage/Root;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;Lcom/sonyericsson/storage/Root;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 935
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->val$root:Lcom/sonyericsson/storage/Root;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAppDrawerCols(Landroid/content/Context;)I
    .locals 3
    .parameter "ctx"

    .prologue
    .line 126
    const-string v0, "com.sonyericsson.home_preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "numAppTrayCols"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getAppDrawerRows(Landroid/content/Context;)I
    .locals 3
    .parameter "ctx"

    .prologue
    .line 130
    const-string v0, "com.sonyericsson.home_preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "numAppTrayRows"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private isPageSizeValid(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 7
    .parameter "ctx"
    .parameter "pgl"

    .prologue
    const/4 v6, 0x0

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, bRes:Z
    if-eqz p2, :cond_0

    .line 139
    const-string v3, "com.sonyericsson.home_preferences"

    invoke-virtual {p1, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "numAppTrayCols"

    const-string v5, "4"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 140
    .local v1, i:I
    const-string v3, "com.sonyericsson.home_preferences"

    invoke-virtual {p1, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "numAppTrayRows"

    const-string v5, "4"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 142
    .local v2, j:I
    mul-int v3, v1, v2

    check-cast p2, Lcom/sonyericsson/util/PagedList;

    .end local p2
    invoke-virtual {p2}, Lcom/sonyericsson/util/PagedList;->getMaxPageSize()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 144
    const/4 v0, 0x1

    .line 147
    .end local v1           #i:I
    .end local v2           #j:I
    :cond_0
    return v0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    const-class v9, Lcom/sonyericsson/util/PagedList;

    .line 938
    const/4 v2, 0x0

    .line 939
    .local v2, model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->val$root:Lcom/sonyericsson/storage/Root;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->val$root:Lcom/sonyericsson/storage/Root;

    const-string v5, "version"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/storage/Root;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 941
    const-class v4, Lcom/sonyericsson/util/PagedList;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->val$root:Lcom/sonyericsson/storage/Root;

    const-class v5, Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v4, v9}, Lcom/sonyericsson/storage/Root;->getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    check-cast v2, Lcom/sonyericsson/util/PagedList;

    .line 945
    .restart local v2       #model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

    iget-object v10, v10, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v10}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {p0, v10, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->isPageSizeValid(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v10

    :cond_0
    if-nez v10, :cond_2

    .line 950
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->getAppDrawerRows(Landroid/content/Context;)I

    move-result v3

    .line 952
    .local v3, rows:I
    invoke-direct {p0, v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->getAppDrawerCols(Landroid/content/Context;)I

    move-result v0

    .line 954
    .local v0, cols:I
    new-instance v2, Lcom/sonyericsson/util/PagedList;

    .end local v2           #model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    mul-int v4, v0, v3

    invoke-direct {v2, v4}, Lcom/sonyericsson/util/PagedList;-><init>(I)V

    .line 962
    .restart local v2       #model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    new-instance v1, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

    iget-object v5, v5, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v5

    invoke-direct {v1, v4, v2, v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;-><init>(Landroid/content/Context;Lcom/sonyericsson/util/PagedList;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    .line 965
    .local v1, cust:Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;
    const-string v4, "/etc/customization/settings/com/sonyericsson/home/default_settings_apptray.xml"

    invoke-virtual {v1, v4, v7}, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;->applyCustomization(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 968
    const/high16 v4, 0x7f05

    invoke-virtual {v1, v4, v7}, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;->applyCustomization(IZ)Z

    .line 972
    :cond_1
    invoke-static {}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1200()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v8}, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;->applyCustomization(Landroid/net/Uri;Z)Z

    .line 973
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;->getSortingMode()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1300(Lcom/sonyericsson/home/layer/apptray/AppTrayController;I)V

    .line 974
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

    iget-object v5, v5, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1400(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    move-result-object v5

    invoke-static {v4, v2, v5, v8}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/util/PagedList;Lcom/sonyericsson/home/data/SyncHelper$Syncable;Z)V

    .line 978
    .end local v0           #cols:I
    .end local v1           #cust:Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;
    .end local v3           #rows:I
    :goto_0
    return-void

    .line 976
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

    iget-object v5, v5, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1600(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    move-result-object v5

    invoke-static {v4, v2, v5, v7}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/util/PagedList;Lcom/sonyericsson/home/data/SyncHelper$Syncable;Z)V

    goto :goto_0
.end method
