.class Lcom/sonyericsson/home/layer/InfoGroupManager$1$1;
.super Ljava/lang/Object;
.source "InfoGroupManager.java"

# interfaces
.implements Lcom/sonyericsson/home/data/SyncHelper$Syncable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/InfoGroupManager$1;->onPackageChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/InfoGroupManager$1;

.field final synthetic val$changedInfoGroups:Ljava/util/HashSet;

.field final synthetic val$infoList:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/InfoGroupManager$1;Ljava/util/Map$Entry;Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$1$1;->this$1:Lcom/sonyericsson/home/layer/InfoGroupManager$1;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$1$1;->val$infoList:Ljava/util/Map$Entry;

    iput-object p3, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$1$1;->val$changedInfoGroups:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDuringSync(Lcom/sonyericsson/home/data/Info;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public removeDuringSync(Lcom/sonyericsson/home/data/Info;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$1$1;->val$infoList:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$1$1;->val$changedInfoGroups:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$1$1;->val$infoList:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$1$1;->this$1:Lcom/sonyericsson/home/layer/InfoGroupManager$1;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/InfoGroupManager$1;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$100(Lcom/sonyericsson/home/layer/InfoGroupManager;)Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$1$1;->this$1:Lcom/sonyericsson/home/layer/InfoGroupManager$1;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/InfoGroupManager$1;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$100(Lcom/sonyericsson/home/layer/InfoGroupManager;)Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;->onInfoRemoved(Lcom/sonyericsson/home/data/Info;)V

    .line 112
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
