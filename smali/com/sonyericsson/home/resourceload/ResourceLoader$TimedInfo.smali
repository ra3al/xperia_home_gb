.class Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;
.super Ljava/lang/Object;
.source "ResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/resourceload/ResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimedInfo"
.end annotation


# instance fields
.field item:Lcom/sonyericsson/home/data/Info;

.field timing:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/data/Info;I)V
    .locals 0
    .parameter "item"
    .parameter "timing"

    .prologue
    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;->item:Lcom/sonyericsson/home/data/Info;

    .line 785
    iput p2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;->timing:I

    .line 786
    return-void
.end method
