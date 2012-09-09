.class public Lcom/sonyericsson/home/data/WidgetInfo;
.super Lcom/sonyericsson/home/data/Info;
.source "WidgetInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/data/WidgetInfo$WidgetInfoFactory;
    }
.end annotation


# instance fields
.field private final mAppWidgetId:I

.field private final mInstallPending:Z

.field private final mName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "packageName"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/home/data/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "name"
    .parameter "packageName"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/sonyericsson/home/data/Info;-><init>()V

    .line 95
    iput p1, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mAppWidgetId:I

    .line 96
    iput-object p3, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mPackageName:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mName:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mInstallPending:Z

    .line 99
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "packageName"
    .parameter "pendingInstall"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/sonyericsson/home/data/Info;-><init>()V

    .line 88
    iput p1, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mAppWidgetId:I

    .line 89
    iput-object p3, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mPackageName:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mName:Ljava/lang/String;

    .line 91
    iput-boolean p4, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mInstallPending:Z

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/data/WidgetInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mAppWidgetId:I

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/data/WidgetInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/data/WidgetInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/data/WidgetInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mInstallPending:Z

    return v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mAppWidgetId:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isInstallPending()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mInstallPending:Z

    return v0
.end method

.method public isInteractive()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method
