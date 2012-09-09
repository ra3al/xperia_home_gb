.class public Lcom/sonyericsson/home/data/ActivityInfo$ActivityInfoFactory;
.super Lcom/sonyericsson/storage/NodeFactory;
.source "ActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/data/ActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityInfoFactory"
.end annotation


# static fields
.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final VERSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/storage/NodeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public fromNode(Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;
    .locals 3
    .parameter "node"

    .prologue
    .line 40
    const-string v2, "packagename"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, packageName:Ljava/lang/String;
    const-string v2, "name"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, name:Ljava/lang/String;
    new-instance v2, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-direct {v2, v1, v0}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 5
    .parameter "object"

    .prologue
    .line 48
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    move-object v1, v0

    .line 50
    .local v1, activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    new-instance v2, Lcom/sonyericsson/storage/Node;

    invoke-direct {v2}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 52
    .local v2, node:Lcom/sonyericsson/storage/Node;
    const-string v3, "version"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 53
    const-string v3, "packagename"

    invoke-static {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->access$000(Lcom/sonyericsson/home/data/ActivityInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "name"

    invoke-static {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->access$100(Lcom/sonyericsson/home/data/ActivityInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-object v2
.end method
