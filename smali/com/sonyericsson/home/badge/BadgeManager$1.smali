.class Lcom/sonyericsson/home/badge/BadgeManager$1;
.super Ljava/lang/Object;
.source "BadgeManager.java"

# interfaces
.implements Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/badge/BadgeManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/badge/BadgeManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/badge/BadgeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sonyericsson/home/badge/BadgeManager$1;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadCompleted(Lcom/sonyericsson/storage/Root;)V
    .locals 6
    .parameter "root"

    .prologue
    const-class v5, Ljava/util/HashMap;

    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v4, p0, Lcom/sonyericsson/home/badge/BadgeManager$1;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    const-class v3, Ljava/util/HashMap;

    const-class v3, Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Lcom/sonyericsson/storage/Root;->getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v4, v3}, Lcom/sonyericsson/home/badge/BadgeManager;->access$002(Lcom/sonyericsson/home/badge/BadgeManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 102
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/home/badge/BadgeManager$1;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    invoke-static {v3}, Lcom/sonyericsson/home/badge/BadgeManager;->access$100(Lcom/sonyericsson/home/badge/BadgeManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/sonyericsson/home/badge/BadgeManager$1;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    invoke-static {v3}, Lcom/sonyericsson/home/badge/BadgeManager;->access$000(Lcom/sonyericsson/home/badge/BadgeManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 104
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/sonyericsson/home/badge/BadgeManager$1;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v3, v4}, Lcom/sonyericsson/home/badge/BadgeManager;->access$200(Lcom/sonyericsson/home/badge/BadgeManager;Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 98
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/badge/BadgeManager$1;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v4}, Lcom/sonyericsson/home/badge/BadgeManager;->access$002(Lcom/sonyericsson/home/badge/BadgeManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_0

    .line 109
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/badge/BadgeManager$1;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    sget-object v4, Lcom/sonyericsson/home/badge/BadgeManager$State;->INITIALIZED:Lcom/sonyericsson/home/badge/BadgeManager$State;

    invoke-static {v3, v4}, Lcom/sonyericsson/home/badge/BadgeManager;->access$302(Lcom/sonyericsson/home/badge/BadgeManager;Lcom/sonyericsson/home/badge/BadgeManager$State;)Lcom/sonyericsson/home/badge/BadgeManager$State;

    .line 110
    iget-object v3, p0, Lcom/sonyericsson/home/badge/BadgeManager$1;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    invoke-static {v3}, Lcom/sonyericsson/home/badge/BadgeManager;->access$400(Lcom/sonyericsson/home/badge/BadgeManager;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 111
    .local v0, callback:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 113
    .end local v0           #callback:Ljava/lang/Runnable;
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/home/badge/BadgeManager$1;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sonyericsson/home/badge/BadgeManager;->access$402(Lcom/sonyericsson/home/badge/BadgeManager;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 115
    return-void
.end method
