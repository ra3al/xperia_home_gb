.class public Lcom/sonyericsson/home/layer/InfoGroupManager;
.super Ljava/lang/Object;
.source "InfoGroupManager.java"

# interfaces
.implements Lcom/sonyericsson/home/data/InfoGroupInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;,
        Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    }
.end annotation


# static fields
.field private static final STORAGE_ENTITY_NAME:Ljava/lang/String; = "infogroups"

.field private static final STORAGE_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final STORAGE_VERSION_VALUE:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInfoGroupListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;

.field private mInfoLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOnLoadCompletedCallbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

.field private mOwner:Landroid/app/Activity;

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 3
    .parameter "context"
    .parameter "packageLoader"

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoGroupListeners:Ljava/util/LinkedList;

    .line 92
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mOnLoadCompletedCallbacks:Ljava/util/LinkedList;

    .line 95
    new-instance v0, Lcom/sonyericsson/home/layer/InfoGroupManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/InfoGroupManager$1;-><init>(Lcom/sonyericsson/home/layer/InfoGroupManager;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 178
    iput-object p1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mContext:Landroid/content/Context;

    .line 179
    iput-object p2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mContext:Landroid/content/Context;

    const-string v1, "infogroups"

    new-instance v2, Lcom/sonyericsson/home/layer/InfoGroupManager$2;

    invoke-direct {v2, p0, p2}, Lcom/sonyericsson/home/layer/InfoGroupManager$2;-><init>(Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/storage/Storage;->readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/InfoGroupManager;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/home/layer/InfoGroupManager;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/InfoGroupManager;)Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/InfoGroupManager;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/InfoGroupManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->writeToStorage()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/InfoGroupManager;Ljava/lang/Iterable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->notifyContentChanged(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/InfoGroupManager;)Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/InfoGroupManager;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mOnLoadCompletedCallbacks:Ljava/util/LinkedList;

    return-object v0
.end method

.method private getOrCreateInfoList(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 2
    .parameter "uuidString"
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
    .line 222
    iget-object v1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 223
    .local v0, infoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #infoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 225
    .restart local v0       #infoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    iget-object v1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_0
    return-object v0
.end method

.method private notifyContentChanged(Ljava/lang/Iterable;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, uuids:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/util/UUID;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 384
    .local v2, infoGroupUuid:Ljava/util/UUID;
    iget-object v4, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoGroupListeners:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    .line 385
    .local v3, listener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    invoke-interface {v3, v2}, Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;->onContentChanged(Ljava/util/UUID;)V

    goto :goto_0

    .line 388
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #infoGroupUuid:Ljava/util/UUID;
    .end local v3           #listener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    :cond_1
    return-void
.end method

.method private notifyContentChanged(Ljava/util/UUID;)V
    .locals 3
    .parameter "uuid"

    .prologue
    .line 396
    iget-object v2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoGroupListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    .line 397
    .local v1, listener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    invoke-interface {v1, p1}, Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;->onContentChanged(Ljava/util/UUID;)V

    goto :goto_0

    .line 399
    .end local v1           #listener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    :cond_0
    return-void
.end method

.method private notifyGroupRemoved(Ljava/util/UUID;)V
    .locals 3
    .parameter "uuid"

    .prologue
    .line 407
    iget-object v2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoGroupListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    .line 408
    .local v1, listener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    invoke-interface {v1, p1}, Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;->onGroupRemoved(Ljava/util/UUID;)V

    goto :goto_0

    .line 410
    .end local v1           #listener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    :cond_0
    return-void
.end method

.method private writeToStorage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 427
    new-instance v0, Lcom/sonyericsson/storage/Root;

    const-string v1, "infogroups"

    invoke-direct {v0, v1}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 428
    .local v0, root:Lcom/sonyericsson/storage/Root;
    const-string v1, "version"

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/storage/Root;->put(Ljava/lang/String;I)V

    .line 429
    iget-object v1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 430
    iget-object v1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Z)V

    .line 431
    return-void
.end method


# virtual methods
.method public add(Lcom/sonyericsson/home/data/InfoGroup;ILcom/sonyericsson/home/data/Info;)V
    .locals 4
    .parameter "infoGroup"
    .parameter "location"
    .parameter "info"

    .prologue
    .line 255
    iget-object v2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 256
    const-string v2, "InfoGroupManager"

    const-string v3, "add() called before InfoGroupManager initialized."

    invoke-static {v2, v3}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 263
    .local v1, uuid:Ljava/util/UUID;
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getOrCreateInfoList(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 264
    .local v0, infoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-virtual {v0, p2, p3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 266
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->writeToStorage()V

    .line 267
    invoke-direct {p0, v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->notifyContentChanged(Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public addLast(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)V
    .locals 4
    .parameter "infoGroup"
    .parameter "info"

    .prologue
    .line 272
    iget-object v2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 273
    const-string v2, "InfoGroupManager"

    const-string v3, "addLast() called before InfoGroupManager initialized."

    invoke-static {v2, v3}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 280
    .local v1, uuid:Ljava/util/UUID;
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getOrCreateInfoList(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 281
    .local v0, infoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 283
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->writeToStorage()V

    .line 284
    invoke-direct {p0, v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->notifyContentChanged(Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public bind(Landroid/app/Activity;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 1
    .parameter "owner"
    .parameter "resourceLoader"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mOwner:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mOwner:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->unbind(Landroid/app/Activity;)V

    .line 455
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mOwner:Landroid/app/Activity;

    .line 457
    invoke-virtual {p0, p2}, Lcom/sonyericsson/home/layer/InfoGroupManager;->cacheShortcuts(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 458
    invoke-virtual {p0, p2}, Lcom/sonyericsson/home/layer/InfoGroupManager;->registerInfoGroupListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;)V

    .line 459
    return-void
.end method

.method public cacheShortcuts(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 1
    .parameter "resourceLoader"

    .prologue
    .line 442
    new-instance v0, Lcom/sonyericsson/home/layer/InfoGroupManager$3;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/home/layer/InfoGroupManager$3;-><init>(Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->registerOnLoadCompletedCallback(Ljava/lang/Runnable;)V

    .line 449
    return-void
.end method

.method public contains(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)Z
    .locals 4
    .parameter "infoGroup"
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .line 334
    iget-object v1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 335
    const-string v1, "InfoGroupManager"

    const-string v2, "contains() called before InfoGroupManager initialized."

    invoke-static {v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 345
    :goto_0
    return v1

    .line 340
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getOrCreateInfoList(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 341
    .local v0, infoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 345
    goto :goto_0
.end method

.method public getInfo(Lcom/sonyericsson/home/data/InfoGroup;I)Lcom/sonyericsson/home/data/Info;
    .locals 2
    .parameter "infoGroup"
    .parameter "location"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 245
    const-string v0, "InfoGroupManager"

    const-string v1, "getInfo() called before InfoGroupManager initialized."

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    .line 250
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/home/data/Info;

    move-object v0, p0

    goto :goto_0
.end method

.method public getInfoCount(Lcom/sonyericsson/home/data/InfoGroup;)I
    .locals 4
    .parameter "infoGroup"

    .prologue
    const/4 v3, 0x0

    .line 232
    iget-object v1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 233
    const-string v1, "InfoGroupManager"

    const-string v2, "getInfoCount() called before InfoGroupManager initialized."

    invoke-static {v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 239
    :goto_0
    return v1

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 239
    .local v0, infoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    if-nez v0, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public isLoadCompleted()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyAppearanceChanged()V
    .locals 3

    .prologue
    .line 421
    iget-object v2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoGroupListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    .line 422
    .local v1, listener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    invoke-interface {v1}, Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;->onAppearanceChanged()V

    goto :goto_0

    .line 424
    .end local v1           #listener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    :cond_0
    return-void
.end method

.method public notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v0, changed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/UUID;>;"
    iget-object v3, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 471
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 472
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 475
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;>;"
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->notifyContentChanged(Ljava/lang/Iterable;)V

    .line 476
    return-void
.end method

.method public registerInfoGroupListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;)V
    .locals 1
    .parameter "infoGroupListener"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoGroupListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 356
    return-void
.end method

.method public registerOnLoadCompletedCallback(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->isLoadCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 439
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mOnLoadCompletedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public remove(Lcom/sonyericsson/home/data/InfoGroup;I)Lcom/sonyericsson/home/data/Info;
    .locals 5
    .parameter "infoGroup"
    .parameter "location"

    .prologue
    .line 289
    iget-object v3, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 290
    const-string v3, "InfoGroupManager"

    const-string v4, "remove() called before InfoGroupManager initialized."

    invoke-static {v3, v4}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v3, 0x0

    .line 309
    :goto_0
    return-object v3

    .line 295
    :cond_0
    const/4 v1, 0x0

    .line 297
    .local v1, removedInfo:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 299
    .local v2, uuid:Ljava/util/UUID;
    iget-object v3, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 300
    .local v0, infoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #removedInfo:Lcom/sonyericsson/home/data/Info;
    check-cast v1, Lcom/sonyericsson/home/data/Info;

    .line 304
    .restart local v1       #removedInfo:Lcom/sonyericsson/home/data/Info;
    :cond_1
    if-eqz v1, :cond_2

    .line 305
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->writeToStorage()V

    .line 306
    invoke-direct {p0, v2}, Lcom/sonyericsson/home/layer/InfoGroupManager;->notifyContentChanged(Ljava/util/UUID;)V

    :cond_2
    move-object v3, v1

    .line 309
    goto :goto_0
.end method

.method public remove(Lcom/sonyericsson/home/data/InfoGroup;)Z
    .locals 5
    .parameter "infoGroup"

    .prologue
    const/4 v4, 0x0

    .line 314
    iget-object v2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 315
    const-string v2, "InfoGroupManager"

    const-string v3, "remove() called before InfoGroupManager initialized."

    invoke-static {v2, v3}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    .line 329
    :goto_0
    return v2

    .line 320
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 321
    .local v1, uuid:Ljava/util/UUID;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 323
    .local v0, removedInfoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    if-eqz v0, :cond_1

    .line 324
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->writeToStorage()V

    .line 325
    invoke-direct {p0, v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->notifyGroupRemoved(Ljava/util/UUID;)V

    .line 326
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 329
    goto :goto_0
.end method

.method public setInfoListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;

    .line 375
    return-void
.end method

.method public unbind(Landroid/app/Activity;)V
    .locals 1
    .parameter "owner"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mOwner:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mOwner:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mOwner:Landroid/app/Activity;

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoGroupListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 466
    :cond_0
    return-void
.end method

.method public unregisterInfoGroupListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;)V
    .locals 1
    .parameter "infoGroupListener"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoGroupListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 366
    return-void
.end method
