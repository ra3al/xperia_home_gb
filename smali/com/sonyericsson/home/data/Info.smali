.class public abstract Lcom/sonyericsson/home/data/Info;
.super Ljava/lang/Object;
.source "Info.java"


# static fields
.field private static sIdCounter:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private mUniqueId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/sonyericsson/home/data/Info;->sIdCounter:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/sonyericsson/home/data/Info;->sIdCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/home/data/Info;->mUniqueId:J

    .line 31
    return-void
.end method


# virtual methods
.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public final getUniqueId()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/sonyericsson/home/data/Info;->mUniqueId:J

    return-wide v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public isInteractive()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public final setNewUniqueID()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/sonyericsson/home/data/Info;->sIdCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/home/data/Info;->mUniqueId:J

    .line 48
    return-void
.end method
