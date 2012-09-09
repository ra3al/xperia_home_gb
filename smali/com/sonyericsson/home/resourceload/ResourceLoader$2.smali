.class Lcom/sonyericsson/home/resourceload/ResourceLoader$2;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/resourceload/ResourceLoader;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/badge/BadgeManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addToCache(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 552
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 553
    .local v2, items:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 554
    .local v1, item:Lcom/sonyericsson/home/data/ActivityInfo;
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1300(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    goto :goto_0

    .line 556
    .end local v1           #item:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_0
    return-void
.end method

.method private removeFromCache(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 10
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    iget-object v9, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v9}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 562
    .local v6, keySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/Info;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 563
    .local v7, keysToRemove:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/home/data/Info;

    .line 564
    .local v4, info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v4}, Lcom/sonyericsson/home/data/Info;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 565
    invoke-virtual {v7, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 569
    .end local v4           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/home/data/Info;

    .line 570
    .restart local v4       #info:Lcom/sonyericsson/home/data/Info;
    iget-object v9, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v9}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 575
    .end local v4           #info:Lcom/sonyericsson/home/data/Info;
    :cond_2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 576
    .local v1, foldersToRemove:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/home/data/Info;

    .line 577
    .restart local v4       #info:Lcom/sonyericsson/home/data/Info;
    instance-of v9, v4, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v9, :cond_3

    .line 578
    move-object v0, v4

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    move-object v5, v0

    .line 579
    .local v5, infoGroup:Lcom/sonyericsson/home/data/InfoGroup;
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/home/data/Info;

    .line 580
    .local v8, removedInfo:Lcom/sonyericsson/home/data/Info;
    iget-object v9, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v9, v9, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v9, v5, v8}, Lcom/sonyericsson/home/layer/InfoGroupManager;->contains(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 581
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 588
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Lcom/sonyericsson/home/data/Info;
    .end local v5           #infoGroup:Lcom/sonyericsson/home/data/InfoGroup;
    .end local v8           #removedInfo:Lcom/sonyericsson/home/data/Info;
    :cond_5
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/home/data/Info;

    .line 589
    .restart local v4       #info:Lcom/sonyericsson/home/data/Info;
    iget-object v9, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v9}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    iget-object v9, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v9, v4}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1300(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    goto :goto_3

    .line 593
    .end local v4           #info:Lcom/sonyericsson/home/data/Info;
    :cond_6
    return-object v7
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 597
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->addToCache(Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->removeFromCache(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v3

    .line 604
    .local v3, removedInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/data/Info;

    .line 605
    .local v2, info:Lcom/sonyericsson/home/data/Info;
    instance-of v4, v2, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v4, :cond_0

    .line 606
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v4, v2}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1300(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    goto :goto_0

    .line 611
    .end local v2           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v4}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 613
    .local v0, activityInfoSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 614
    .local v2, info:Lcom/sonyericsson/home/data/ActivityInfo;
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v4, v2}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1300(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    goto :goto_1

    .line 616
    .end local v2           #info:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_2
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->removeFromCache(Ljava/lang/String;)Ljava/util/LinkedList;

    .line 620
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packageList"

    .prologue
    .line 624
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packageList"

    .prologue
    .line 628
    return-void
.end method
