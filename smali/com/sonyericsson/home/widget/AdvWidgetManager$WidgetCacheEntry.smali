.class Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
.super Ljava/lang/Object;
.source "AdvWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/widget/AdvWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WidgetCacheEntry"
.end annotation


# instance fields
.field proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

.field view:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/home/widget/AdvWidgetManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;-><init>()V

    return-void
.end method
